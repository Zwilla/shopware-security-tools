{extends file="parent:frontend/forms/index.tpl"}

{* add googles recaptcha *}
{block name="frontend_forms_form_elements_form_submit"}
    <div class="buttons">
        <input type="hidden" name="Submit" value="1" />
        <button class="g-recaptcha btn is--primary is--icon-right" type="submit" name="Submit" value="submit"
                data-sitekey="{$mittwaldSecurityToolsRecaptchaKey}" data-callback="recaptchaCallback">{s name='SupportActionSubmit' namespace='frontend/forms/elements'}{/s}<i class="icon--arrow-right"></i></button>
    </div>
{/block}

{* add googles recaptcha script *}
{block name="frontend_index_header_javascript_jquery_lib"}
    {$smarty.block.parent}
    <script src='https://www.google.com/recaptcha/api.js{if $mittwaldSecurityToolsRecaptchaLanguageKey}?hl={$mittwaldSecurityToolsRecaptchaLanguageKey}{/if}'></script>
    <script>
        {literal}
        window.recaptchaCallback = function(token) {
            document.getElementById('support').submit();
        };
        {/literal}
    </script>
{/block}