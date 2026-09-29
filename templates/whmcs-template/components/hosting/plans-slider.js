(function () {
 function init(grid) {
  var plans = grid.querySelectorAll(".ixir-wh-plan");
  if (plans.length < 2) return;

  var nav = document.createElement("div");
  nav.className = "ixir-wh-slider-nav";

  var prev = document.createElement("button");
  prev.type = "button";
  prev.className = "ixir-wh-slider-btn";
  prev.setAttribute("aria-label", "Önceki paket");
  prev.innerHTML = '<i class="fas fa-chevron-left" aria-hidden="true"></i>';

  var next = document.createElement("button");
  next.type = "button";
  next.className = "ixir-wh-slider-btn";
  next.setAttribute("aria-label", "Sonraki paket");
  next.innerHTML = '<i class="fas fa-chevron-right" aria-hidden="true"></i>';

  var dots = document.createElement("div");
  dots.className = "ixir-wh-slider-dots";

  var dotButtons = Array.prototype.map.call(plans, function (plan, i) {
   var dot = document.createElement("button");
   dot.type = "button";
   dot.className = "ixir-wh-slider-dot";
   var title = plan.querySelector("h3");
   dot.setAttribute("aria-label", (title ? title.textContent.trim() : i + 1 + ". paket") + " paketine git");
   dot.addEventListener("click", function () {
    go(i);
   });
   dots.appendChild(dot);
   return dot;
  });

  nav.appendChild(prev);
  nav.appendChild(dots);
  nav.appendChild(next);
  grid.parentNode.insertBefore(nav, grid.nextSibling);

  var index = -1;

  function step() {
   return plans[1].offsetLeft - plans[0].offsetLeft || grid.clientWidth;
  }

  function go(i) {
   i = Math.max(0, Math.min(plans.length - 1, i));
   grid.scrollTo({ left: i * step(), behavior: "smooth" });
  }

  function update() {
   var max = grid.scrollWidth - grid.clientWidth;
   var i = grid.scrollLeft >= max - 2 ? plans.length - 1 : Math.round(grid.scrollLeft / step());
   if (i === index) return;
   index = i;
   dotButtons.forEach(function (dot, n) {
    var active = n === i;
    dot.classList.toggle("is-active", active);
    if (active) dot.setAttribute("aria-current", "true");
    else dot.removeAttribute("aria-current");
   });
   prev.disabled = i === 0;
   next.disabled = i === plans.length - 1;
  }

  prev.addEventListener("click", function () {
   go(index - 1);
  });
  next.addEventListener("click", function () {
   go(index + 1);
  });

  var ticking = false;
  grid.addEventListener(
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
   index = -1;
   update();
  });
  update();
 }

 Array.prototype.forEach.call(document.querySelectorAll(".ixir-wh-plans .ixir-wh-grid"), init);
})();
