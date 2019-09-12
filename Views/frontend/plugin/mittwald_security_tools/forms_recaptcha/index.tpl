{extends file="parent:frontend/forms/index.tpl"}

{* add googles recaptcha *}
{block name="frontend_forms_form_elements_form_captcha"}
    {$smarty.block.parent}
    <div class="panel">
        <div class="panel--body is--wide">
            <div class="g-recaptcha" data-sitekey="{$mittwaldSecurityToolsRecaptchaKey}"></div>
        </div>
    </div>
{/block}

{* add googles recaptcha script *}
{block name="frontend_index_header_javascript_jquery_lib"}
    {$smarty.block.parent}
    <script src="https://www.google.com/recaptcha/api.js{if $mittwaldSecurityToolsRecaptchaLanguageKey}?hl={$mittwaldSecurityToolsRecaptchaLanguageKey}{/if}"></script>
{/block}