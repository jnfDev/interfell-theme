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
<div class="user-info header__rightitem">
  {if $logged}
    <a
      class="account u-link-body"
      href="{$my_account_url}"
      title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}"
      rel="nofollow"
    >
          <span>
            <i class="material-icons logged">&#xE7FF;</i>
          </span>
      <span class="visible--desktop small">{$customerName}</span>
    </a>
  {else}
    <a
      href="{$my_account_url}"
      class="u-link-body"
      title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
      rel="nofollow"
    >
      <svg style="width:24px;height:24px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" enable-background="new 0 0 24 24" class="Svg-sc-1w4q54b iyEeRT"><path d="M12 12c-2.2 0-4-1.8-4-4s1.8-4 4-4 4 1.8 4 4-1.8 4-4 4zm0-6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zM20 20h-16v-1c0-3.5 3.3-6 8-6s8 2.5 8 6v1zm-13.8-2h11.7c-.6-1.8-2.8-3-5.8-3s-5.3 1.2-5.9 3z"></path></svg>
      <span class="visible--desktop">{l s='Sign in' d='Shop.Theme.Actions'}</span>
    </a>
  {/if}
</div>
