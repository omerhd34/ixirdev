  <div id="DomainSearchResults" class="ixir-domain-results{if $lookupTerm} is-visible{else} w-hidden{/if}">
   <div id="searchDomainInfo" class="ixir-domain-headline domain-checker-result-headline">
    <p id="primaryLookupSearching"
     class="domain-lookup-loader domain-lookup-primary-loader domain-searching ixir-domain-status is-searching">
     <span class="ixir-status-card">
      <span class="ixir-status-icon" aria-hidden="true"><i class="fas fa-spinner fa-spin"></i></span>
      <span class="ixir-status-text">Sorgulanıyor...</span>
     </span>
    </p>
    <div id="primaryLookupResult" class="domain-lookup-result w-hidden">
     <p class="domain-invalid domain-checker-invalid ixir-domain-status is-invalid">
      <span class="ixir-status-card">
       <span class="ixir-status-icon" aria-hidden="true"><i class="fas fa-exclamation"></i></span>
       <span class="ixir-status-text">{lang key='orderForm.domainLetterOrNumber'}<span
         class="domain-length-restrictions">{lang key='orderForm.domainLengthRequirements'}</span></span>
      </span>
     </p>
     <p class="domain-unavailable domain-checker-unavailable ixir-domain-status is-taken">
      <span class="ixir-status-card">
       <span class="ixir-status-icon" aria-hidden="true"><i class="fas fa-times"></i></span>
       <strong class="ixir-status-domain"></strong>
       <span class="ixir-status-text">Uygun değil</span>
      </span>
     </p>
     <p class="domain-tld-unavailable domain-checker-unavailable ixir-domain-status is-taken">
      <span class="ixir-status-card">
       <span class="ixir-status-icon" aria-hidden="true"><i class="fas fa-times"></i></span>
       <span class="ixir-status-text">{lang key='orderForm.domainHasUnavailableTld'}</span>
      </span>
     </p>
     <p class="domain-available domain-checker-available ixir-domain-status is-free">
      <span class="ixir-status-card">
       <span class="ixir-status-icon" aria-hidden="true"><i class="fas fa-check"></i></span>
       <strong class="ixir-status-domain"></strong>
       <span class="domain-price">
        <span class="price"></span>
        <button type="button" class="btn btn-primary btn-add-to-cart" data-whois="0" data-domain="">
         <span class="to-add">Sepete Ekle</span>
         <span class="loading"><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</span>
         <span class="added"><i class="far fa-shopping-cart"></i> {lang key='domaincheckeradded'}</span>
         <span class="unavailable">{$LANG.domaincheckertaken}</span>
        </button>
       </span>
      </span>
     </p>
     <a class="domain-contact-support btn btn-primary">{$LANG.domainContactUs}</a>
     <div id="idnLanguageSelector" class="form-group idn-language-selector w-hidden">
      <div class="margin-10 text-center">{lang key='cart.idnLanguageDescription'}</div>
      <select name="idnlanguage" class="form-control">
       <option value="">{lang key='cart.idnLanguage'}</option>
       {foreach $idnLanguages as $idnLanguageKey => $idnLanguage}
        <option value="{$idnLanguageKey}">{lang key='idnLanguage.'|cat:$idnLanguageKey}</option>
       {/foreach}
      </select>
      <div class="field-error-msg">{lang key='cart.selectIdnLanguageForRegister'}</div>
     </div>
     <p class="domain-error domain-checker-unavailable ixir-domain-status is-invalid">
      <span class="ixir-status-card">
       <span class="ixir-status-icon" aria-hidden="true"><i class="fas fa-exclamation"></i></span>
       <span class="ixir-status-text"></span>
      </span>
     </p>
    </div>
   </div>

   {assign var="ixirSpotList" value=$ixirSpotlightTlds}
   {if !$ixirSpotList}
    {assign var="ixirSpotList" value=[
                                                                                                                             ['tldNoDots'=>'com','tld'=>'.com','register'=>'615.00TL'],
                                                                                                                             ['tldNoDots'=>'net','tld'=>'.net','register'=>'655.00TL'],
                                                                                                                             ['tldNoDots'=>'comtr','tld'=>'.com.tr','register'=>'150.00TL'],
                                                                                                                             ['tldNoDots'=>'nettr','tld'=>'.net.tr','register'=>'150.00TL'],
                                                                                                                             ['tldNoDots'=>'tr','tld'=>'.tr','register'=>'200.00TL'],
                                                                                                                             ['tldNoDots'=>'xyz','tld'=>'.xyz','register'=>'125.00TL'],
                                                                                                                             ['tldNoDots'=>'info','tld'=>'.info','register'=>'220.00TL'],
                                                                                                                             ['tldNoDots'=>'pro','tld'=>'.pro','register'=>'200.00TL'],
                                                                                                                             ['tldNoDots'=>'org','tld'=>'.org','register'=>'555.00TL'],
                                                                                                                             ['tldNoDots'=>'work','tld'=>'.work','register'=>'150.00TL']
                                                                                                                           ]}
   {/if}
   <div id="spotlightTlds" class="ixir-spotlights spotlight-tlds clearfix">
    <div class="spotlight-tlds-container">
     {foreach $ixirSpotList as $data}
      <div class="spotlight-tld-container spotlight-tld-container-{$ixirSpotList|count}">
       <div id="spotlight{$data.tldNoDots}" class="spotlight-tld">
        <span class="ixir-spot-tld">{$data.tld}</span>
        <span class="domain-lookup-loader domain-lookup-spotlight-loader">
         <i class="fas fa-spinner fa-spin"></i>
        </span>
        <div class="domain-lookup-result">
         <span class="available price" data-fallback="{$data.register|escape:'html'}">{$data.register}</span>
         <div class="ixir-spot-action">
          <button type="button" class="btn btn-add-to-cart w-hidden" data-whois="0" data-domain="">
           <span class="to-add">Ekle</span>
           <span class="loading"><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</span>
           <span class="added">{lang key='domaincheckeradded'}</span>
           <span class="unavailable">{$LANG.domaincheckertaken}</span>
          </button>
          <button type="button" class="btn unavailable w-hidden" disabled="disabled">Uygun değil</button>
          <button type="button" class="btn invalid w-hidden" disabled="disabled">Uygun değil</button>
         </div>
        </div>
       </div>
      </div>
     {/foreach}
    </div>
   </div>

   <div class="suggested-domains ixir-suggestions">
    <div class="panel-heading card-header ixir-suggestions-head">
     Önerilen Alan Adları
    </div>
    <div id="suggestionsLoader"
     class="panel-body card-body domain-lookup-loader domain-lookup-suggestions-loader w-hidden" aria-hidden="true">
    </div>
    <div id="domainSuggestions" class="domain-lookup-result list-group w-hidden">
     <div class="domain-suggestion list-group-item w-hidden">
      <span class="ixir-sugg-domain">
       <span class="ixir-sugg-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
       <span class="ixir-sugg-name"><span class="domain"></span><span class="extension"></span></span>
      </span>
      <span class="promo w-hidden">
       <span class="sales-group-hot w-hidden">{lang key='domainCheckerSalesGroup.hot'}</span>
       <span class="sales-group-new w-hidden">{lang key='domainCheckerSalesGroup.new'}</span>
       <span class="sales-group-sale w-hidden">{lang key='domainCheckerSalesGroup.sale'}</span>
      </span>
      <div class="actions">
       <span class="price"></span>
       <button type="button" class="btn btn-add-to-cart" data-whois="1" data-domain="">
        <span class="to-add">Sepete Ekle</span>
        <span class="loading"><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</span>
        <span class="added"><i class="far fa-shopping-cart"></i> {lang key='domaincheckeradded'}</span>
        <span class="unavailable">{$LANG.domaincheckertaken}</span>
       </button>
       <button type="button" class="btn btn-primary domain-contact-support w-hidden">
        {lang key='domainChecker.contactSupport'}
       </button>
      </div>
     </div>
    </div>
    <div class="panel-footer card-footer more-suggestions text-center w-hidden">
     <a id="moreSuggestions" href="#">Daha fazla öneri göster <i class="fas fa-chevron-down" aria-hidden="true"></i></a>
     <span id="noMoreSuggestions" class="no-more small w-hidden">Başka öneri yok</span>
    </div>
    <p class="text-center text-muted domain-suggestions-warning">Sepete eklerken alan adının hâlâ müsait olduğu tekrar
     kontrol edilir.</p>
   </div>
  </div>

<div class="domain-pricing w-hidden" aria-hidden="true"></div>