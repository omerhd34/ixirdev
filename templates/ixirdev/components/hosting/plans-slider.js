(function () {
  function createSlider(track, opts) {
    var nav = document.createElement("div");
    nav.className =
      "ixir-wh-slider-nav" + (opts.navClass ? " " + opts.navClass : "");

    var prev = document.createElement("button");
    prev.type = "button";
    prev.className = "ixir-wh-slider-btn";
    prev.setAttribute("aria-label", opts.prevLabel);
    prev.innerHTML = '<i class="fas fa-chevron-left" aria-hidden="true"></i>';

    var next = document.createElement("button");
    next.type = "button";
    next.className = "ixir-wh-slider-btn";
    next.setAttribute("aria-label", opts.nextLabel);
    next.innerHTML = '<i class="fas fa-chevron-right" aria-hidden="true"></i>';

    var dots = document.createElement("div");
    dots.className = "ixir-wh-slider-dots";

    nav.appendChild(prev);
    nav.appendChild(dots);
    nav.appendChild(next);
    track.parentNode.insertBefore(nav, track.nextSibling);

    var slides = [];
    var dotButtons = [];
    var index = -1;

    function build() {
      slides = opts.getSlides();
      nav.hidden = slides.length < 2;
      dots.innerHTML = "";
      dotButtons = slides.map(function (slide, i) {
        var dot = document.createElement("button");
        dot.type = "button";
        dot.className = "ixir-wh-slider-dot";
        dot.setAttribute("aria-label", opts.dotLabel(slide, i));
        dot.addEventListener("click", function () {
          go(i);
        });
        dots.appendChild(dot);
        return dot;
      });
      index = -1;
    }

    function step() {
      return (
        (slides[1] && slides[1].offsetLeft - slides[0].offsetLeft) ||
        track.clientWidth
      );
    }

    function go(i) {
      i = Math.max(0, Math.min(slides.length - 1, i));
      track.scrollTo({ left: i * step(), behavior: "smooth" });
    }

    function update() {
      if (slides.length < 2) return;
      var max = track.scrollWidth - track.clientWidth;
      var i =
        track.scrollLeft >= max - 2
          ? slides.length - 1
          : Math.round(track.scrollLeft / step());
      if (i === index) return;
      index = i;
      dotButtons.forEach(function (dot, n) {
        var active = n === i;
        dot.classList.toggle("is-active", active);
        if (active) dot.setAttribute("aria-current", "true");
        else dot.removeAttribute("aria-current");
      });
      prev.disabled = i === 0;
      next.disabled = i === slides.length - 1;
    }

    prev.addEventListener("click", function () {
      go(index - 1);
    });
    next.addEventListener("click", function () {
      go(index + 1);
    });

    var ticking = false;
    track.addEventListener(
      "scroll",
      function () {
        if (ticking) return;
        ticking = true;
        window.requestAnimationFrame(function () {
          ticking = false;
          update();
        });
      },
      { passive: true }
    );
    window.addEventListener("resize", function () {
      if (opts.needsRebuild && opts.needsRebuild()) {
        build();
        track.scrollLeft = 0;
      }
      index = -1;
      update();
    });

    build();
    update();
  }

  function equalizeHeads(grid) {
    var heads = Array.prototype.slice.call(
      grid.querySelectorAll(".ixir-wh-plan-head")
    );
    if (heads.length < 2) return;

    function run() {
      heads.forEach(function (head) {
        head.style.minHeight = "";
      });
      var max = heads.reduce(function (h, head) {
        return Math.max(h, head.offsetHeight);
      }, 0);
      heads.forEach(function (head) {
        head.style.minHeight = max + "px";
      });
    }

    var frame = 0;
    window.addEventListener("resize", function () {
      window.cancelAnimationFrame(frame);
      frame = window.requestAnimationFrame(run);
    });
    if (document.fonts && document.fonts.ready) document.fonts.ready.then(run);
    run();
  }

  Array.prototype.forEach.call(
    document.querySelectorAll(".ixir-wh-plans .ixir-wh-grid"),
    function (grid) {
      equalizeHeads(grid);
      var plans = Array.prototype.slice.call(
        grid.querySelectorAll(".ixir-wh-plan")
      );
      if (plans.length < 2) return;
      var perView = 0;

      function readPerView() {
        return (
          parseInt(
            window
              .getComputedStyle(grid)
              .getPropertyValue("--ixir-plan-per-view"),
            10
          ) || 1
        );
      }

      createSlider(grid, {
        prevLabel: "Önceki paket",
        nextLabel: "Sonraki paket",
        needsRebuild: function () {
          return readPerView() !== perView;
        },
        getSlides: function () {
          perView = readPerView();
          return plans.slice(0, Math.max(1, plans.length - perView + 1));
        },
        dotLabel: function (plan, i) {
          var title = plan.querySelector("h3");
          return (
            (title ? title.textContent.trim() : i + 1 + ". paket") +
            " paketine git"
          );
        },
      });
    }
  );

  Array.prototype.forEach.call(
    document.querySelectorAll(".ixir-wh-plans .ixir-wh-shared"),
    function (list) {
      var items = Array.prototype.slice.call(list.children);
      if (items.length < 2) return;
      list.classList.add("ixir-wh-shared--slider");

      var layout = "";

      function readLayout() {
        var style = window.getComputedStyle(list);
        var rows = parseInt(style.getPropertyValue("--ixir-shared-rows"), 10) || 0;
        var cols = parseInt(style.getPropertyValue("--ixir-shared-cols"), 10) || 1;
        return { rows: rows, cols: cols, key: rows + "x" + cols };
      }

      createSlider(list, {
        navClass: "ixir-wh-slider-nav--shared",
        prevLabel: "Önceki özellikler",
        nextLabel: "Sonraki özellikler",
        needsRebuild: function () {
          return readLayout().key !== layout;
        },
        getSlides: function () {
          var current = readLayout();
          var perPage = current.rows * current.cols;
          layout = current.key;
          var pages = [];
          items.forEach(function (item, i) {
            var k = perPage ? i % perPage : 0;
            var isPage = perPage > 0 && k === 0;
            item.classList.toggle("ixir-wh-shared-page", isPage);
            item.style.gridRow = perPage
              ? String(Math.floor(k / current.cols) + 1)
              : "";
            item.style.gridColumn = perPage
              ? String(
                  Math.floor(i / perPage) * current.cols +
                    (k % current.cols) +
                    1
                )
              : "";
            if (isPage) pages.push(item);
          });
          return pages;
        },
        dotLabel: function (page, i) {
          return i + 1 + ". özellik sayfasına git";
        },
      });
    }
  );
})();

