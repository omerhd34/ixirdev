<script>
 (function() {
  var selector = '#inputDomain, #inputTransferDomain, #inputAuthCode';
  var userAction = false;

  function markUser() {
   userAction = true;
  }
  ['pointerdown', 'keydown', 'touchstart'].forEach(function(name) {
   document.addEventListener(name, markUser, {
    capture: true,
    once: true
   });
  });

  function isHeroInput(el) {
   return !!(el && el.matches && el.matches(selector));
  }

  function guard(e) {
   if (!userAction && isHeroInput(e.target)) {
    e.target.blur();
   }
  }

  function blurActive() {
   if (!userAction && isHeroInput(document.activeElement)) {
    document.activeElement.blur();
   }
  }

  document.addEventListener('focusin', guard, true);
  blurActive();
  window.addEventListener('load', blurActive);
  window.setTimeout(function() {
   blurActive();
   document.removeEventListener('focusin', guard, true);
  }, 1500);
 })();
</script>