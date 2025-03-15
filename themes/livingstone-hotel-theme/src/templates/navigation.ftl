<nav aria-label="<@liferay.language key=" site-pages" />" class="${nav_css_class}" id="navigation" role="navigation">
<ul class="main-menu" role="menubar">
	<#list nav_items as nav_item>
		<#assign nav_item_attr_has_popup="" nav_item_css_class="" nav_item_layout=nav_item.getLayout() />

		<#if nav_item.isSelected()>
			<#assign nav_item_css_class="selected" />
		</#if>

		<li class="main-menu__item ${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
			<a ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} rel="noopener noreferrer"
				role="menuitem">
				<span>${nav_item.getName()}</span>
			</a>

			<#if nav_item.hasChildren()>
				<ul class="child-menu" role="menu">
					<#list nav_item.getChildren() as nav_child>
						<#assign nav_child_css_class="" />

						<#if nav_child.isSelected()>
							<#assign nav_child_css_class="selected" />
						</#if>

						<li class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
							<a href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">
								<span>${nav_child.getName()}</span>
							</a>
						</li>
					</#list>
				</ul>
			</#if>
		</li>
	</#list>
</ul>
</nav>

<style>
	#navigation {
		flex: 1;
		padding: 0 20px;
	}

	.main-menu {
		display: flex;
		justify-content: center;
		align-items: center;
		list-style: none;
		margin: 0;
		padding: 0;
	}

	.main-menu__item {
		margin: 0 15px;
		position: relative;
	}

	.main-menu__item a {
		color: #fff;
		text-decoration: none;
		font-weight: 500;
		font-size: 16px;
		transition: color 0.3s;
	}

	.main-menu__item a:hover {
		color: #0B5FFF;
		text-decoration: none;
	}

	.main-menu__item.selected>a {
		color: #0B5FFF;
		position: relative;
	}

	.main-menu__item.selected>a:after {
		content: '';
		position: absolute;
		bottom: -5px;
		left: 0;
		width: 100%;
		height: 2px;
		background-color: #0B5FFF;
	}

	/* Submenu styles */
	.child-menu {
		display: none;
		position: absolute;
		top: 100%;
		left: 0;
		background: white;
		box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
		border-radius: 4px;
		padding: 10px 0;
		min-width: 200px;
		z-index: 1000;
		list-style: none;
	}

	.main-menu__item:hover .child-menu {
		display: block;
	}

	.child-menu li {
		padding: 5px 15px;
	}

	.child-menu li a {
		display: block;
		padding: 5px 0;
		color: #0e0e0e;
		font-size: 14px;
	}

	.child-menu li a:hover {
		color: #0B5FFF;
	}

	.child-menu li.selected>a {
		color: #0B5FFF;
	}
</style>