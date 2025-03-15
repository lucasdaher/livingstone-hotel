<header id="banner" role="banner">
  <div class="container">
    <div class="header-wrapper">
      <div class="logo-container">
        <a class="${logo_css_class}" href="${site_default_url}">
          <img alt="${logo_description}" src="/documents/d/livingstone-hotel/logo-white" style="width: 174px;" />
        </a>
      </div>

      <#if has_navigation && is_setup_complete>
        <#include "${full_templates_path}/navigation.ftl" />
      </#if>

      <!-- <div class="action-button">
        <a href="/c/login" target="_self" rel="noopener noreferrer" class="btn btn-primary">Entrar</a>
      </div> -->

      <div class="" style="display: flex; flex-direction: row; justify-content: center; align-items: center; gap: 6px;">
        <!-- Cria o botão de cadastro apenas quando o usuário não estiver logado -->
        <#if !themeDisplay.isSignedIn()>
          <div class="action-button"><a href="/c/portal/login" target="_self" rel="noopener noreferrer"
              class="btn btn-primary">
              Criar conta
            </a></div>

        </#if>

        <!-- Cria o botão de login de verifica se o usuário está ou não logado -->
        <div class="action-button">
          <#if themeDisplay.isSignedIn()>
            <a href="/c/portal/logout" target="_self" rel="noopener noreferrer" class="btn btn-primary">
              Finalizar sessão
            </a>
            <#else>
              <a href="/c/portal/login" target="_self" rel="noopener noreferrer" class="btn btn-primary">
                Entrar
              </a>
          </#if>
        </div>
      </div>
    </div>
  </div>
</header>

<style>
  #logout-icon {
    width: 18px;
    font-size: 18px;
  }

  .header-wrapper {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 0;
    width: 100%;
  }

  .logo-container img {
    max-height: 50px;
    width: auto;
  }

  .action-button .btn {
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    gap: 6px;
    border: 1px solid #fff;
    outline: 0;
    background-color: transparent;
    color: #fff;
    font-size: 14px;
    font-weight: 500;
    padding: 8px 18px;
    border-radius: 100px;
    transition: all 0.2s ease-in-out;
  }

  .action-button .btn:hover {
    transition: all 0.2s ease-in-out;
    background-color: #eff6ff;
    color: #3b82f6;
    box-shadow: rgba(0, 0, 0, 0.05) 0px 1px 3px, rgba(0, 0, 0, 0.10) 0px 1px 2px;
    cursor: pointer;
  }
</style>