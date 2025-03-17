<header class="header" role="banner">
  <div class="header__container">
    <#--  Primeira linha do Header  -->
    <div class="header-align">
      <a class="${logo_css_class}" href="${site_default_url}">
        <img alt="${logo_description}" src="/documents/d/livingstone-hotel/logo-white" style="width: 174px;" class="header__logo"/>
      </a>

    <#--  Renderizar todas as páginas marcadas como não ocultas  -->
      <#--  <#if has_navigation && is_setup_complete>
        <#include "${full_templates_path}/navigation.ftl" />
      </#if>  -->

      <div class="header__buttons">
        <!-- Cria o botão de cadastro apenas quando o usuário não estiver logado -->
        <#if !themeDisplay.isSignedIn()>
          <button class="header__accessButton" type="button" title="Clique para criar uma conta">
            <a class="header__accessButton__text" href="/c/portal/login">
              Criar conta
            </a>
          </button>

        </#if>

        <!-- Cria o botão de login de verifica se o usuário está ou não logado -->
        <button class="header__accessButton" type="button" title="Clique para entrar em uma conta">
          <#if themeDisplay.isSignedIn()>
            <a class="header__accessButton__text" href="/c/portal/login">
              Finalizar sessão
            </a>
          <#else>
            <a class="header__accessButton__text" href="/c/portal/login">
              Entrar
            </a>
          </#if>
        </button>
      </div>
    </div>

    <#--  Segunda linha do Header  -->
    <div class="header-align" style="margin-top: 18px;">
      <div style="display: flex; justify-content: center; align-items: center; gap: 4px;">
        <button class="header__button" type="button">
          <a class="header__button__text" href="/reservas">
            <i class='bx bx-bed'></i>
            <span class="header_button__span">Reservas</span>
          </a>
        </button>

        <button class="header__button" type="button">
          <a class="header__button__text" href="/reservas">
            <i class='bx bx-buildings'></i>
            <span class="header_button__span">Quartos</span>
          </a>
        </button>

        <button class="header__button" type="button">
          <a class="header__button__text" href="/reservas">
            <i class='bx bx-phone'></i>
            <span class="header_button__span">Contato</span>
          </a>
        </button>
      </div>
    </div>
  </div>
</header>