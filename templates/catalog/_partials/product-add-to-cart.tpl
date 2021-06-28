{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div class="product-add-to-cart">
  {if !$configuration.is_catalog}

    {block name='product_quantity'}
      <div class="product-quantity align-items-center row">
        <label for="quantity_wanted" class="col-md-3">Cantidad: </label>
        <div class="qty col-md-9">
          <input
            type="number"
            name="qty"
            id="quantity_wanted"
            value="{$product.quantity_wanted}"
            class="input-group"
            min="{$product.minimal_quantity}"
            aria-label="{l s='Quantity' d='Shop.Theme.Actions'}"
            {if isset($product.product_url)}data-update-url="{$product.product_url}"{/if}
          >
        </div>

        {hook h='displayProductActions' product=$product}
      </div>
    {/block}

    {block name='product_availability'}
      {if $product.show_availability && $product.availability_message}
      <div id="product-availability" class="row align-items-start">
        <label class="col-md-3">Disponibilidad: </label>

        <div class="col-md-9">
        {if $product.availability == 'available'}
          <div class="available" data-toggle="collapse" href="#available" role="button" aria-expanded="false" aria-controls="available">
            
          
            {$product.availability_message}

            <div class="collapse" id="available">
              Entrega estimada para envíos a península
              <a href="#">+info</a>
            </div>
          </div>

        {else}
          <div class="not-available">
            {$product.availability_message}        
          </div>      
        {/if}
        </div>

      </div>
      {/if}
    {/block}

    {block name='product_minimal_quantity'}
      <p class="product-minimal-quantity">
        {if $product.minimal_quantity > 1}
          {l
          s='The minimum purchase order quantity for the product is %quantity%.'
          d='Shop.Theme.Checkout'
          sprintf=['%quantity%' => $product.minimal_quantity]
          }
        {/if}
      </p>
    {/block}

    <button
      class="btn btn-primary add-to-cart btn-lg btn-block btn-add-to-cart js-add-to-cart"
      data-button-action="add-to-cart"
      type="submit"
      {if !$product.add_to_cart_url}
        disabled
      {/if}
    >
      <i class="material-icons shopping-cart btn-add-to-cart__icon">&#xE547;</i><span class="btn-add-to-cart__spinner" role="status" aria-hidden="true"></span>
      {l s='Add to cart' d='Shop.Theme.Actions'}
    </button>

  {/if}
</div>
