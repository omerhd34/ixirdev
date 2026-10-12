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
    var errorText = (input.getAttribute('data-placeholder-error') || '').trim();

    function renderText(str) {
     if (!str) return '';
     var div = document.createElement('div');
     div.textContent = str;
     return div.innerHTML
      .replace(/\b(domain)\b/gi, '<span lang="en">$1</span>')
      .replace(/\b(ixirhost\.com)\b/gi, '<span class="ixir-dc-domain-sample">$1</span>');
    }

    function applyDomainEn(node) {
     if (!node || !node.innerHTML) return;
     if (node.innerHTML.indexOf('lang="en"') === -1) {
      node.innerHTML = node.innerHTML.replace(/\b(domain)\b/gi, '<span lang="en">$1</span>');
     }
     if (node.innerHTML.indexOf('ixir-dc-domain-sample') === -1) {
      node.innerHTML = node.innerHTML.replace(/\b(ixirhost\.com)\b/gi,
       '<span class="ixir-dc-domain-sample">$1</span>');
     }
    }
    applyDomainEn(label);

    function isError(text) {
     if (!text) return false;
     var t = text.trim();
     return (errorText && t === errorText) || /lütfen/i.test(t);
    }

    function sync() {
     if (busy) {
      return;
     }
     var text = input.getAttribute('placeholder');
     // Hata metni ise etikete kopyalama, etiket normal data-placeholder kalacak!
     if (isError(text)) {
      return;
     }
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