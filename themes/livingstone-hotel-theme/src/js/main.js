document.addEventListener("DOMContentLoaded", function () {
  initializeNavigation();
});

// Esta função é chamada quando o liferay termina de carregar todos os portlets
Liferay.on("allPortletsReady", function () {
  initializeNavigation();
});

function initializeNavigation() {
  function checkEditMode() {
    var body = document.body;
    var controlMenu = document.querySelector(".control-menu");
    var isSignedIn = Liferay.ThemeDisplay.isSignedIn();

    // Verifica se o menu de controle está visível e o usuário está logado
    if (controlMenu && isSignedIn) {
      // Verifica se estamos na tela de edição de layout
      var hasLayoutControls = document.querySelector(
        ".layout-customizable-controls"
      );
      var hasFragmentEditor = document.querySelector(".fragment-editor");
      var hasEditControls = document.querySelector(
        ".edit-layout-link, .edit-controls"
      );

      if (hasLayoutControls || hasFragmentEditor || hasEditControls) {
        body.classList.add("has-edit-mode");
        return;
      }
    }

    // Se não atender às condições, remova a classe
    body.classList.remove("has-edit-mode");
  }

  // Executa a verificação na inicialização
  checkEditMode();

  // Adiciona listener para eventos relevantes
  Liferay.on("surfaceStartNavigation", function () {
    // Quando a navegação SPA iniciar, agende uma nova verificação
    setTimeout(checkEditMode, 500);
  });
}
