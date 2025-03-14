/*
 * This function gets loaded when all the HTML, not including the portlets, is
 * loaded.
 */
AUI().ready(function () {
  initializeNavigation();
});

/*
 * This function gets loaded after each and every portlet on the page.
 *
 * portletId: the current portlet's id
 * node: the Alloy Node object of the current portlet
 */
Liferay.Portlet.ready(function (_portletId, _node) {
  initializeNavigation();
});

/*
 * This function gets loaded when everything, including the portlets, is on
 * the page.
 */
Liferay.on("allPortletsReady", function () {
  initializeNavigation();
});

function initializeNavigation() {}
