{extends file="parent:frontend/forms/index.tpl"}

{* add googles recaptcha *}
{block name="frontend_forms_form_elements_form_captcha"}
    {$smarty.block.parent}
    <input type="hidden" name="g-recaptcha-response"/>
{/block}

{* add googles recaptcha script *}
{block name="frontend_index_header_javascript_jquery_lib"}
    {$smarty.block.parent}
    {include file="frontend/plugin/mittwald_security_tools/_includes/recaptcha3.tpl"}
{/block}