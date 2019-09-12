{* add googles recaptcha *}
{block name="frontend_newsletter_form_submit"}
    <div class="newsletter--action">
        <button type="submit" class="g-recaptcha btn is--primary right is--icon-right" name="{s name="sNewsletterButton"}{/s}"
                data-sitekey="{$mittwaldSecurityToolsRecaptchaKey}" data-callback="recaptchaNewsletterFormCallback">
            {s name="sNewsletterButton" namespace="frontend/newsletter/index"}{/s}
            <i class="icon--arrow-right"></i>
        </button>
    </div>
{/block}
{block name="frontend_index_footer_column_newsletter_form_submit"}
    <button type="submit" class="g-recaptcha newsletter--button btn"
            data-sitekey="{$mittwaldSecurityToolsRecaptchaKey}" data-callback="recaptchaNewsletterFoooterCallback">
        <i class="icon--mail"></i> <span class="button--text">{s name='IndexFooterNewsletterSubmit' namespace="frontend/index/menu_footer"}{/s}</span>
    </button>
{/block}

{* add googles recaptcha script *}
{block name="frontend_index_header_javascript_jquery_lib"}
    {$smarty.block.parent}
    <script src='https://www.google.com/recaptcha/api.js{if $mittwaldSecurityToolsRecaptchaLanguageKey}?hl={$mittwaldSecurityToolsRecaptchaLanguageKey}{/if}'></script>
    <script>
        {literal}
        window.recaptchaNewsletterFormCallback = function(token) {
            document.getElementsByTagName('form')[1].submit();
        };


        window.recaptchaNewsletterFoooterCallback = function(token) {
            document.getElementsByClassName('newsletter--form')[0].submit();
        };
        {/literal}
    </script>
{/block}

