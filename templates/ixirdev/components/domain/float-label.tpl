{literal}
 <script>
  (function() {
   var inputs = document.querySelectorAll('.ixir-dc-float input');
   Array.prototype.forEach.call(inputs, function(input) {
    var label = input.parentNode.querySelector('.ixir-dc-label');
    if (!label) {
     return;
    }
    var busy = false;

    function renderText(str) {
     if (!str) return '';
     var div = document.createElement('div');
     div.textContent = str;
     return div.innerHTML.replace(/\b(domain)\b/gi, '<span lang="en">$1</span>');
    }

    function applyDomainEn(node) {
     if (!node || !node.innerHTML) return;
     if (node.innerHTML.indexOf('lang="en"') === -1) {
      node.innerHTML = node.innerHTML.replace(/\b(domain)\b/gi, '<span lang="en">$1</span>');
     }
    }
    applyDomainEn(label);

    function sync() {
     if (busy) {
      return;
     }
     var text = input.getAttribute('placeholder');
     if (text && text.replace(/\s+/g, '') !== '') {
      busy = true;
      label.innerHTML = renderText(text);
      input.setAttribute('placeholder', ' ');
      busy = false;
     }
    }
    sync();
    if (window.MutationObserver) {
     new MutationObserver(sync).observe(input, {
      attributes: true,
      attributeFilter: ['placeholder']
     });
    }
   });
  })();
 </script>
{/literal}