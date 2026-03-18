<div class="product__additional-info js-product-additional-info">
  {hook h='displayProductAdditionalInfo' product=$product}

  <div class="product-delivery-info mt-3 alert alert-info">
    <svg
      class="product-delivery-info__icon"
      aria-hidden="true"
      viewBox="0 0 24 24"
      focusable="false"
    >
      <path d="M3 6a1 1 0 0 1 1-1h9a1 1 0 0 1 1 1v3h2.38a1 1 0 0 1 .78.38l2.84 3.55A1 1 0 0 1 20 13.55V17a1 1 0 0 1-1 1h-.18a3 3 0 0 1-5.64 0H9.82a3 3 0 0 1-5.64 0H4a1 1 0 0 1-1-1V6Zm2 10a1 1 0 1 0 2 0 1 1 0 0 0-2 0Zm10 0a1 1 0 1 0 2 0 1 1 0 0 0-2 0Zm3-3h-4v-2h1.9L18 13Z" />
    </svg>
    <strong>{l s='Info livraison :' d='Shop.Theme.Catalog'}</strong>
    <span>{l s='Livraison gratuite dès 50€ d\'achat. Expédition sous 24/48h.' d='Shop.Theme.Catalog'}</span>
  </div>
</div>
