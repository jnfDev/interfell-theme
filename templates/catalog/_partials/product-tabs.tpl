<div class="tabs product-tabs">
    <ul class="nav nav-tabs" role="tablist">
        {if $product.description}
        <li class="nav-item">
            <a
                class="nav-link{if $product.description} active{/if}"
                data-toggle="tab"
                href="#description"
                role="tab"
                aria-controls="description"
                {if $product.description} aria-selected="true"{/if}>Características</a>
        </li>
        {/if}

        <li class="nav-item">
            <a
                class="nav-link"
                data-toggle="tab"
                href="#reviews"
                role="tab"
                aria-controls="reviews">Opiniones</a>
        </li>

        {* <li class="nav-item">
            <a
                    class="nav-link{if !$product.description} active{/if}"
                    data-toggle="tab"
                    href="#product-details"
                    role="tab"
                    aria-controls="product-details"
                    {if !$product.description} aria-selected="true"{/if}>{l s='Product Details' d='Shop.Theme.Catalog'}</a>
        </li>
        {if $product.attachments}
            <li class="nav-item">
                <a
                        class="nav-link"
                        data-toggle="tab"
                        href="#attachments"
                        role="tab"
                        aria-controls="attachments">{l s='Attachments' d='Shop.Theme.Catalog'}</a>
            </li>
        {/if}
        {foreach from=$product.extraContent item=extra key=extraKey}
            <li class="nav-item">
                <a
                        class="nav-link"
                        data-toggle="tab"
                        href="#extra-{$extraKey}"
                        role="tab"
                        aria-controls="extra-{$extraKey}">{$extra.title}</a>
            </li>
        {/foreach}
        *}
    </ul>

    <div class="tab-content" id="tab-content">
        <div class="tab-pane fade{if $product.description} show active{/if}" id="description" role="tabpanel">
            {block name='product_description'}
                <div class="product-description">{$product.description nofilter}</div>
            {/block}
        </div>

        {* {block name='product_details'}
            {include file='catalog/_partials/product-details.tpl'}
        {/block}

        {block name='product_attachments'}
            {if $product.attachments}
                <div class="tab-pane fade" id="attachments" role="tabpanel">
                    <section class="product-attachments">
                        <p class="h4 product__download">{l s='Download' d='Shop.Theme.Actions'}</p>
                        {foreach from=$product.attachments item=attachment}
                            <div class="attachment">
                                <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">{$attachment.name}</a>
                                <p class="small">{$attachment.description}</p>
                                <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
                                    {l s='Download' d='Shop.Theme.Actions'} ({$attachment.file_size_formatted})
                                </a>
                            </div>
                        {/foreach}
                    </section>
                </div>
            {/if}
        {/block}

        {foreach from=$product.extraContent item=extra key=extraKey}
        <div class="tab-pane fade {$extra.attr.class}" id="extra-{$extraKey}" role="tabpanel" {foreach $extra.attr as $key => $val} {$key}="{$val}"{/foreach}>
            {$extra.content nofilter}
        </div>
        {/foreach} *}

        <div class="tab-pane fade " id="reviews" role="tabpanel">
            {block name='product_footer'}
                {hook h='displayFooterProduct' product=$product category=$category}
            {/block}
        </div>

    </div>
</div>