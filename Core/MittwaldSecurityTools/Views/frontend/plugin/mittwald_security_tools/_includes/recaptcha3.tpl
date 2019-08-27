<script src='https://www.google.com/recaptcha/api.js?render={$mittwaldSecurityToolsRecaptchaKey}{if $mittwaldSecurityToolsRecaptchaLanguageKey}&hl={$mittwaldSecurityToolsRecaptchaLanguageKey}{/if}'></script>
<script>
	grecaptcha.ready(function() {
		grecaptcha.execute('{$mittwaldSecurityToolsRecaptchaKey}', {
			action: 'homepage'})
			.then(function(token) {
				$("[name='g-recaptcha-response']").val(token);
			});
		});
</script>