{block name="frontend_index_footer_column_newsletter_form_field"}
	{$smarty.block.parent}
    <input type="hidden" name="g-recaptcha-response"/>
{/block}
{* add googles recaptcha *}
{block name="frontend_newsletter_form_submit"}
    <input type="hidden" name="g-recaptcha-response"/>
	{$smarty.block.parent}
{/block}

{* add googles recaptcha script *}
{block name="frontend_index_header_javascript_jquery_lib"}
    {$smarty.block.parent}
    {include file="frontend/plugin/mittwald_security_tools/_includes/recaptcha3.tpl"}
{/block}