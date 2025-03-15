<!DOCTYPE html>
<#include init />
<html class="${root_css_class}" dir="<@liferay.language key=" lang.dir" />" lang="${w3c_language_id}">

<head>
	<!-- <title>${html_title}</title> -->
	<title>Livingstone Hotel</title>
	<link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	<!-- <link rel="stylesheet" href="${htmlUtil.escape(portalUtil.getStaticResourceURL(request, '${css_folder}/main.css'))}"> -->
</head>

<body class="${css_class}">
	<@liferay_ui["quick-access"] contentId="#main-content" />
	<@liferay_util["include"] page=body_top_include />
	<@liferay.control_menu />

	<div id="wrapper">
		<!-- Inclusão do header -->
		<#include "${full_templates_path}/header.ftl" />

		<main id="content" role="main">
			<h1 class="hide-accessible sr-only">${the_title}</h1>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}
					${portletDisplay.setTitle(the_title)}

					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
						</@>
			</#if>
		</main>

		<footer id="footer" role="contentinfo">
			<div class="container">
				<div class="footer-content">
					<p class="copyright">&copy; ${.now?string('yyyy')} ${company_name}. Todos os direitos reservados.</p>
				</div>
			</div>
		</footer>
	</div>

	<@liferay_util["include"] page=body_bottom_include />
	<@liferay_util["include"] page=bottom_include />

	<!-- inject:js -->
	<!-- endinject -->
	<script src="${javascript_folder}/main.js" defer></script>

</body>

</html>