<script>
 {literal}
  (function() {
   var list = document.getElementById('ixir-wh-wordpress-shared');
   if (!list) return;
   var btn = document.querySelector('.ixir-wh-shared-more-btn[aria-controls="ixir-wh-wordpress-shared"]');
   var items = list.children;
   var total = items.length;
   var visible = 10;
   if (!btn || total <= visible) {
    list.removeAttribute('data-visible');
    if (btn) btn.parentNode.hidden = true;
    return;
   }
   var text = btn.querySelector('.ixir-wh-shared-more-text');
   var count = btn.querySelector('.ixir-wh-shared-more-count');

   function render(prev) {
    var i;
    for (i = 0; i < total; i++) {
     items[i].classList.toggle('is-revealed', i >= prev && i < visible);
    }
    if (visible >= total) {
     list.removeAttribute('data-visible');
     btn.setAttribute('aria-expanded', 'true');
     text.textContent = 'Daha Az Göster';
     count.textContent = '';
    } else {
     list.setAttribute('data-visible', String(visible));
     btn.setAttribute('aria-expanded', 'false');
     text.textContent = 'Diğer Özellikler';
     count.textContent = '+' + (total - visible);
    }
   }

   btn.addEventListener('click', function() {
    var prev = visible;
    if (visible >= total) {
     if (window.CustomEvent) list.dispatchEvent(new CustomEvent('ixir:collapse'));
     visible = 10;
     prev = total;
     render(prev);
     var box = list.parentNode.getBoundingClientRect();
     if (box.top < 0) window.scrollBy(0, box.top - 120);
     return;
    }
    visible = total;
    render(prev);
   });
  })();
 {/literal}
</script>
