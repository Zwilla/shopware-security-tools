{extends file="parent:frontend/register/index.tpl"}

{* add googles recaptcha *}
{block name="frontend_register_index_form_submit"}
    {* Submit button *}
    <div class="register--action">
        <button type="submit" class="g-recaptcha register--submit btn is--primary is--large is--icon-right" name="Submit"
                data-sitekey="{$mittwaldSecurityToolsRecaptchaKey}" data-callback="recaptchaCallback">
            {s name="RegisterIndexNewActionSubmit" namespace="frontend/register/index"}{/s} <i class="icon--arrow-right"></i>
        </button>
    </div>
{/block}

{* add googles recaptcha script *}
{block name="frontend_index_header_javascript_jquery_lib"}
    {$smarty.block.parent}
    <script src='https://www.google.com/recaptcha/api.js{if $mittwaldSecurityToolsRecaptchaLanguageKey}?hl={$mittwaldSecurityToolsRecaptchaLanguageKey}{/if}'></script>
    <script>
        {literal}
        window.recaptchaCallback = function(token) {
            if($(".has--error").length === 0) {
                document.getElementsByClassName('register--form')[0].submit();
            }
        };
        {/literal}
    </script>
{/block}