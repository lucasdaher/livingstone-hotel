document.addEventListener("DOMContentLoaded", function () {
  initializeNavigation();
});

// Esta função é chamada quando o liferay termina de carregar todos os portlets
Liferay.on("allPortletsReady", function () {
  initializeNavigation();
});

function initializeNavigation() {
  // Colocar os métodos javascript que vou utilizar, nesta função.
}
