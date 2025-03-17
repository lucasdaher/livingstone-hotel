<#-- @tailwind -->

<nav aria-label="<@liferay.language key=" site-pages" />"role="navigation">

<!-- Listagem de páginas na navegação -->
<ul class="flex flex-row justify-center items-center" role="menubar">
	<#list nav_items as nav_item>
		<#assign nav_item_attr_has_popup="" nav_item_css_class="" nav_item_layout=nav_item.getLayout() />

		<!-- <#if nav_item.isSelected()>
			<#assign nav_item_css_class="selected" />
		</#if> -->

		<li class="flex justify-center items-center" id="layout_${nav_item.getLayoutId()}" role="presentation">
			<a class="no-underline text-white hover:text-blue-200" ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()}
				rel="noopener noreferrer" role="menuitem">
				<span
					class="text-white no-underline">${nav_item.getName()}</span>
			</a>
		</li>
	</#list>
</ul>
</nav>