{* add googles recaptcha *}
{block name="frontend_newsletter_form_submit"}
    <div class="g-recaptcha" data-sitekey="{$mittwaldSecurityToolsRecaptchaKey}"></div>
    {$smarty.block.parent}
{/block}

{block name="frontend_index_footer_column_newsletter_form_field"}
    <div class="g-recaptcha" data-sitekey="{$mittwaldSecurityToolsRecaptchaKey}"></div>
    {$smarty.block.parent}
{/block}

{* add googles recaptcha script *}
{block name="frontend_index_header_javascript_jquery_lib"}
    {$smarty.block.parent}
    <script src="https://www.google.com/recaptcha/api.js{if $mittwaldSecurityToolsRecaptchaLanguageKey}?hl={$mittwaldSecurityToolsRecaptchaLanguageKey}{/if}"></script>
{/block}

