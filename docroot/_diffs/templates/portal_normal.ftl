<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	${theme.include(top_head_include)}
</head>

<body class="${css_class}">

${theme.include(body_top_include)}

<#if is_signed_in>
	<@liferay.dockbar />
</#if>

<div class="container-fluid" id="wrapper">

	<div id="content">

		<#if selectable>
			${theme.include(content_include)}
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			${theme.wrapPortlet("portlet.ftl", content_include)}
		</#if>
	</div>
</div>

${theme.include(body_bottom_include)}

${theme.include(bottom_include)}

</body>

</html>