{extends file="parent:frontend/register/index.tpl"}

{block name='frontend_register_index_form_submit'}
    {* Submit button *}
    <div class="register--action">
        <button onclick="registrationRecaptcha();" type="submit" class="register--submit btn is--primary is--large is--icon-right" name="Submit">{s name="RegisterIndexNewActionSubmit"}{/s} <i class="icon--arrow-right"></i></button>
    </div>

    <div class="g-recaptcha" id="recaptcha-registration"></div>
{/block}

{* add googles recaptcha script *}
{block name="frontend_index_header_javascript_jquery_lib"}
    {$smarty.block.parent}

    <script>
        {literal}
        var onSubmit = function(token) {
            alert('submit: '+token);
        };

        var registrationRecaptcha = async function(e) {
            alert('und los');
            grecaptcha.reset();
            grecaptcha.execute();
            alert('fertig');
        };

        var onloadCallback = function() {
            widgetId = grecaptcha.render('recaptcha-registration', {
                'sitekey' : '{/literal}{$mittwaldSecurityToolsRecaptchaKey}{literal}',
                'callback' : onSubmit,
                'size': 'invisible',
            });
        };
        {/literal}
    </script>
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit{if $mittwaldSecurityToolsRecaptchaLanguageKey}&hl={$mittwaldSecurityToolsRecaptchaLanguageKey}{/if}" async defer>
{/block}