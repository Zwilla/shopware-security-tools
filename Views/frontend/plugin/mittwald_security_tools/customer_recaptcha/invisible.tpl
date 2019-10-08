{extends file="parent:frontend/register/index.tpl"}

{block name='frontend_register_index_form_submit'}
      {* Submit button *}
    <div class="register--action">
        <button data-sitekey="{$mittwaldSecurityToolsRecaptchaKey}" data-callback="onRecaptchaSubmit" class="g-recaptcha register--submit btn is--primary is--large is--icon-right" name="Submit">
            {s name="RegisterIndexNewActionSubmit" namespace="frontend/register/index"}{/s} <i class="icon--arrow-right"></i>
        </button>
    </div>
{/block}

{* add googles recaptcha script *}
{block name="frontend_index_header_javascript_jquery_lib"}
    {$smarty.block.parent}

    <script>
        {literal}

        var onRecaptchaSubmit = async function(token)
        {
            var elements = $('.has--error').filter((v, i, a) => {
                if($(i).is(':hidden')) {
                    return false;
                }

                if($(i).attr("name") === "register[billing][shippingAddress]" || $(i).attr("name") === "Submit") {
                    return false;
                }

                return true;
            });

            if(elements.length === 0) {
                $("#register--form").trigger("submit");
                return;
            }

            grecaptcha.reset();
        };

        {/literal}
    </script>
    <script src="https://www.google.com/recaptcha/api.js?{if $mittwaldSecurityToolsRecaptchaLanguageKey}hl={$mittwaldSecurityToolsRecaptchaLanguageKey}{/if}" async defer>
{/block}