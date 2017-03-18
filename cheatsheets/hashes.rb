


<!DOCTYPE html>
<html lang="en" class=" is-copy-enabled">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta name="viewport" content="width=1020">
    
    
    <title>ruby-kickstart/hashes.rb at master · JoshCheek/ruby-kickstart</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="JoshCheek/ruby-kickstart" name="twitter:title" /><meta content="ruby-kickstart - An interactive guide to learning the Ruby programming language." name="twitter:description" /><meta content="https://avatars2.githubusercontent.com/u/77495?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars2.githubusercontent.com/u/77495?v=3&amp;s=400" property="og:image" /><meta content="JoshCheek/ruby-kickstart" property="og:title" /><meta content="https://github.com/JoshCheek/ruby-kickstart" property="og:url" /><meta content="ruby-kickstart - An interactive guide to learning the Ruby programming language." property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="web-socket" href="wss://live.github.com/_sockets/MTM4MzYyOTA6NTYxMzJhMjUxNDBlMTRkMmE1ZDgyN2E4ZTNlNzRkOTQ6N2M4OTQzMzdjMjI0Zjc4NDlmOGIzMjM1MjRhZTI3ZDhkODQ4ODE4YWEwNzU3Mjc4YzZmZGJmZTM2NDdhNGMwMg==--e7425f0306ab6aa4589db38d5a7a0dc2d65be1a9">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="5607EE15:6792:6A532DC:563891DD" name="octolytics-dimension-request_id" /><meta content="13836290" name="octolytics-actor-id" /><meta content="Wynndow" name="octolytics-actor-login" /><meta content="f721ec2f028adab2e9ac480f607d1596d08e0b9fbccca55e971c152a64486bf3" name="octolytics-actor-hash" />

<meta content="Rails, view, blob#show" data-pjax-transient="true" name="analytics-event" />


  <meta class="js-ga-set" name="dimension1" content="Logged In">
    <meta class="js-ga-set" name="dimension4" content="Current repo nav">




    <meta name="is-dotcom" content="true">
        <meta name="hostname" content="github.com">
    <meta name="user-login" content="Wynndow">

      <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#4078c0">
      <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

    <meta content="13e891e960ba96161fcccb1e1d251104c0fa0398" name="form-nonce" />

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-fac667ee32b2cc86bdf0ad54ac87272e4e42f328340249c5156757e8b09d2517.css" integrity="sha256-+sZn7jKyzIa98K1UrIcnLk5C8yg0AknFFWdX6LCdJRc=" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github2-00a8be553371a21678bd88362a07c328eda1b6f1a38d00f799b6bb3b99198706.css" integrity="sha256-AKi+VTNxohZ4vYg2KgfDKO2htvGjjQD3mba7O5kZhwY=" media="all" rel="stylesheet" />
    
    
    


    <meta http-equiv="x-pjax-version" content="2e3534a62a09a2b941269ad09fe8bbec">

      
  <meta name="description" content="ruby-kickstart - An interactive guide to learning the Ruby programming language.">
  <meta name="go-import" content="github.com/JoshCheek/ruby-kickstart git https://github.com/JoshCheek/ruby-kickstart.git">

  <meta content="77495" name="octolytics-dimension-user_id" /><meta content="JoshCheek" name="octolytics-dimension-user_login" /><meta content="676668" name="octolytics-dimension-repository_id" /><meta content="JoshCheek/ruby-kickstart" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="676668" name="octolytics-dimension-repository_network_root_id" /><meta content="JoshCheek/ruby-kickstart" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/JoshCheek/ruby-kickstart/commits/master.atom" rel="alternate" title="Recent Commits to ruby-kickstart:master" type="application/atom+xml">

  </head>


  <body class="logged_in   env-production macintosh vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>

    
    
    



      <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/JoshCheek/ruby-kickstart/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/JoshCheek/ruby-kickstart/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <label class="js-chromeless-input-container form-control">
    <div class="scope-badge">This repository</div>
    <input type="text"
      class="js-site-search-focus js-site-search-field is-clearable chromeless-input"
      data-hotkey="s"
      name="q"
      placeholder="Search"
      aria-label="Search this repository"
      data-global-scope-placeholder="Search GitHub"
      data-repo-scope-placeholder="Search"
      tabindex="1"
      autocapitalize="off">
  </label>
</form>
      </div>

      <ul class="header-nav left" role="navigation">
        <li class="header-nav-item">
          <a href="/pulls" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:pulls context:user" data-hotkey="g p" data-selected-links="/pulls /pulls/assigned /pulls/mentioned /pulls">
            Pull requests
</a>        </li>
        <li class="header-nav-item">
          <a href="/issues" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:issues context:user" data-hotkey="g i" data-selected-links="/issues /issues/assigned /issues/mentioned /issues">
            Issues
</a>        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com/" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
      </ul>

    
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item">
      <span class="js-socket-channel js-updatable-content"
        data-channel="notification-changed:Wynndow"
        data-url="/notifications/header">
      <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
          <span class="mail-status all-read"></span>
          <span class="octicon octicon-bell"></span>
</a>  </span>

  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link tooltipped tooltipped-s js-menu-target" href="/new"
       aria-label="Create new…"
       data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus left"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <ul class="dropdown-menu dropdown-menu-sw">
        
<a class="dropdown-item" href="/new" data-ga-click="Header, create new repository">
  New repository
</a>


  <a class="dropdown-item" href="/organizations/new" data-ga-click="Header, create new organization">
    New organization
  </a>



  <div class="dropdown-divider"></div>
  <div class="dropdown-header">
    <span title="JoshCheek/ruby-kickstart">This repository</span>
  </div>
    <a class="dropdown-item" href="/JoshCheek/ruby-kickstart/issues/new" data-ga-click="Header, create new issue">
      New issue
    </a>

      </ul>
    </div>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name tooltipped tooltipped-s js-menu-target" href="/Wynndow"
       aria-label="View profile and more"
       data-ga-click="Header, show menu, icon:avatar">
      <img alt="@Wynndow" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/13836290?v=3&amp;s=40" width="20" />
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <div class="dropdown-menu  dropdown-menu-sw">
        <div class=" dropdown-header header-nav-current-user css-truncate">
            Signed in as <strong class="css-truncate-target">Wynndow</strong>

        </div>


        <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="/Wynndow" data-ga-click="Header, go to profile, text:your profile">
            Your profile
          </a>
        <a class="dropdown-item" href="/stars" data-ga-click="Header, go to starred repos, text:your stars">
          Your stars
        </a>
        <a class="dropdown-item" href="/explore" data-ga-click="Header, go to explore, text:explore">
          Explore
        </a>
          <a class="dropdown-item" href="/integrations" data-ga-click="Header, go to integrations, text:integrations">
            Integrations
          </a>
        <a class="dropdown-item" href="https://help.github.com" data-ga-click="Header, go to help, text:help">
          Help
        </a>

          <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="/settings/profile" data-ga-click="Header, go to settings, icon:settings">
            Settings
          </a>

          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/logout" class="logout-form" data-form-nonce="13e891e960ba96161fcccb1e1d251104c0fa0398" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="/QHkGn0dLpCX0AW+6P3KRg8qkyKLfrkELiXkewzhmSDVPURqCEAp/51GsKg9bIQM4QuRp/3rcglHvl8P3y2Dfw==" /></div>
            <button class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
              Sign out
            </button>
</form>
      </div>
    </div>
  </li>
</ul>


    
  </div>
</div>

      

      


    <div id="start-of-content" class="accessibility-aid"></div>

    <div id="js-flash-container">
</div>


    <div role="main" class="main-content">
        <div itemscope itemtype="http://schema.org/WebPage">
    <div class="pagehead repohead instapaper_ignore readability-menu">

      <div class="container">

        <div class="clearfix">
          

<ul class="pagehead-actions">

  <li>
      <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-form-nonce="13e891e960ba96161fcccb1e1d251104c0fa0398" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="BilaFNHelTDgIx1rxiko55brhnSHYbUZnBFm6u7UdKO8im0VX7S7Nf2l/976zKWBc+n/jTfihi2QGn9MsbIkRg==" /></div>    <input id="repository_id" name="repository_id" type="hidden" value="676668" />

      <div class="select-menu js-menu-container js-select-menu">
        <a href="/JoshCheek/ruby-kickstart/subscription"
          class="btn btn-sm btn-with-count select-menu-button js-menu-target" role="button" tabindex="0" aria-haspopup="true"
          data-ga-click="Repository, click Watch settings, action:blob#show">
          <span class="js-select-button">
            <span class="octicon octicon-eye"></span>
            Watch
          </span>
        </a>
        <a class="social-count js-social-count" href="/JoshCheek/ruby-kickstart/watchers">
          29
        </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header">
              <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
              <span class="select-menu-title">Notifications</span>
            </div>

            <div class="select-menu-list js-navigation-container" role="menu">

              <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                  <span class="select-menu-item-heading">Not watching</span>
                  <span class="description">Be notified when participating or @mentioned.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Watch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                  <span class="select-menu-item-heading">Watching</span>
                  <span class="description">Be notified of all conversations.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Unwatch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_ignore" name="do" type="radio" value="ignore" />
                  <span class="select-menu-item-heading">Ignoring</span>
                  <span class="description">Never be notified.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-mute"></span>
                    Stop ignoring
                  </span>
                </div>
              </div>

            </div>

          </div>
        </div>
      </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/JoshCheek/ruby-kickstart/unstar" class="js-toggler-form starred js-unstar-button" data-form-nonce="13e891e960ba96161fcccb1e1d251104c0fa0398" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="PHH+aIV0AZPf3FTYTmofLpNTLPm8Rx1zdvJaWb17k6/lwTMAQNdLwbBicp5MSfILMlIZf6gsYNPlbmzRN00FZw==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar JoshCheek/ruby-kickstart"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/JoshCheek/ruby-kickstart/stargazers">
          231
        </a>
</form>
    <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/JoshCheek/ruby-kickstart/star" class="js-toggler-form unstarred js-star-button" data-form-nonce="13e891e960ba96161fcccb1e1d251104c0fa0398" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="1hrfR+bf3L/DDCH3NOT5ORnHyL3X43FYYVm7dNXGcBbhDZPRSOTGuvIA5aB4PwiFLFdKGXR6/UDyQH8evVJhHQ==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Star this repository" title="Star JoshCheek/ruby-kickstart"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/JoshCheek/ruby-kickstart/stargazers">
          231
        </a>
</form>  </div>

  </li>

  <li>
          <a href="#fork-destination-box" class="btn btn-sm btn-with-count"
              title="Fork your own copy of JoshCheek/ruby-kickstart to your account"
              aria-label="Fork your own copy of JoshCheek/ruby-kickstart to your account"
              rel="facebox"
              data-ga-click="Repository, show fork modal, action:blob#show; text:Fork">
            <span class="octicon octicon-repo-forked"></span>
            Fork
          </a>

          <div id="fork-destination-box" style="display: none;">
            <h2 class="facebox-header" data-facebox-id="facebox-header">Where should we fork this repository?</h2>
            <include-fragment src=""
                class="js-fork-select-fragment fork-select-fragment"
                data-url="/JoshCheek/ruby-kickstart/fork?fragment=1">
              <img alt="Loading" height="64" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-128.gif" width="64" />
            </include-fragment>
          </div>

    <a href="/JoshCheek/ruby-kickstart/network" class="social-count">
      103
    </a>
  </li>
</ul>

          <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public ">
  <span class="mega-octicon octicon-repo"></span>
  <span class="author"><a href="/JoshCheek" class="url fn" itemprop="url" rel="author"><span itemprop="title">JoshCheek</span></a></span><!--
--><span class="path-divider">/</span><!--
--><strong><a href="/JoshCheek/ruby-kickstart" data-pjax="#js-repo-pjax-container">ruby-kickstart</a></strong>

  <span class="page-context-loader">
    <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
  </span>

</h1>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline ">
        <div class="repository-sidebar clearfix">
          
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/JoshCheek/ruby-kickstart/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/JoshCheek/ruby-kickstart" aria-label="Code" aria-selected="true" class="js-selected-navigation-item selected sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /JoshCheek/ruby-kickstart">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/JoshCheek/ruby-kickstart/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /JoshCheek/ruby-kickstart/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="/JoshCheek/ruby-kickstart/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /JoshCheek/ruby-kickstart/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Wiki">
        <a href="/JoshCheek/ruby-kickstart/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g w" data-selected-links="repo_wiki /JoshCheek/ruby-kickstart/wiki">
          <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/JoshCheek/ruby-kickstart/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /JoshCheek/ruby-kickstart/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/JoshCheek/ruby-kickstart/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /JoshCheek/ruby-kickstart/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>
  </ul>


</nav>

            <div class="only-with-full-nav">
                
<div class="js-clone-url clone-url "
  data-protocol-type="http">
  <h3 class="text-small text-muted"><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/JoshCheek/ruby-kickstart.git" readonly="readonly" aria-label="HTTPS clone URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url open"
  data-protocol-type="ssh">
  <h3 class="text-small text-muted"><span class="text-emphasized">SSH</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="git@github.com:JoshCheek/ruby-kickstart.git" readonly="readonly" aria-label="SSH clone URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url "
  data-protocol-type="subversion">
  <h3 class="text-small text-muted"><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/JoshCheek/ruby-kickstart" readonly="readonly" aria-label="Subversion checkout URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<div class="clone-options text-small text-muted">You can clone with
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-form-nonce="13e891e960ba96161fcccb1e1d251104c0fa0398" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="LS4DMsSWN8+kM5yLcmhSGr2jfMroLrTM2qcFwTdPo9hpYD73NSFtVdMM6jb4yRm+QPdNoRxAURXtCFuV/IkXOA==" /></div><button class="btn-link js-clone-selector" data-protocol="http" type="submit">HTTPS</button></form>, <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-form-nonce="13e891e960ba96161fcccb1e1d251104c0fa0398" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="eOGE/JS0mXIZ34SMQLGVLBqLCPR3cG54JkjH5MerR5FfI/0NHOs7E/q9oV8BJbea8vHRtBiJGgzaZZM/oOXfGQ==" /></div><button class="btn-link js-clone-selector" data-protocol="ssh" type="submit">SSH</button></form>, or <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-form-nonce="13e891e960ba96161fcccb1e1d251104c0fa0398" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="XD5hotxkdyDpPQpt/aekq99ylSzqU1NMfI4wBmdlhslFwBCrT4rSkdj3O3B/aUE4IOXHNnBqw/bQtCAPn8aPKQ==" /></div><button class="btn-link js-clone-selector" data-protocol="subversion" type="submit">Subversion</button></form>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</div>
  <a href="github-mac://openRepo/https://github.com/JoshCheek/ruby-kickstart" class="btn btn-sm sidebar-button" title="Save JoshCheek/ruby-kickstart to your computer and use it in GitHub Desktop." aria-label="Save JoshCheek/ruby-kickstart to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-desktop-download"></span>
    Clone in Desktop
  </a>

              <a href="/JoshCheek/ruby-kickstart/archive/master.zip"
                 class="btn btn-sm sidebar-button"
                 aria-label="Download the contents of JoshCheek/ruby-kickstart as a zip file"
                 title="Download the contents of JoshCheek/ruby-kickstart as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div>
        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>

          

<a href="/JoshCheek/ruby-kickstart/blob/8165bc41d0698aedd558aee726fafbfabb12ef8c/cheatsheets/hashes.rb" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:89e69ad18fb1c841dcd98d10c3032cb2 -->

  <div class="file-navigation js-zeroclipboard-container">
    
<div class="select-menu js-menu-container js-select-menu left">
  <button class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    title="master"
    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <i>Branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/JoshCheek/ruby-kickstart/blob/kevin_challenge/cheatsheets/hashes.rb"
               data-name="kevin_challenge"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="kevin_challenge">
                kevin_challenge
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/JoshCheek/ruby-kickstart/blob/kevin/cheatsheets/hashes.rb"
               data-name="kevin"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="kevin">
                kevin
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/JoshCheek/ruby-kickstart/blob/master/cheatsheets/hashes.rb"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

    <div class="btn-group right">
      <a href="/JoshCheek/ruby-kickstart/find/master"
            class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-nw"
            data-pjax
            data-hotkey="t"
            aria-label="Quickly jump between files">
        <span class="octicon octicon-list-unordered"></span>
      </a>
      <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </div>

    <div class="breadcrumb js-zeroclipboard-target">
      <span class="repo-root js-repo-root"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/JoshCheek/ruby-kickstart" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">ruby-kickstart</span></a></span></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/JoshCheek/ruby-kickstart/tree/master/cheatsheets" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">cheatsheets</span></a></span><span class="separator">/</span><strong class="final-path">hashes.rb</strong>
    </div>
  </div>


  <div class="commit-tease">
      <span class="right">
        <a class="commit-tease-sha" href="/JoshCheek/ruby-kickstart/commit/ef3ea9d3aee39eb9b1dc3d7a898078af07f73ebd" data-pjax>
          ef3ea9d
        </a>
        <time datetime="2011-10-17T01:29:40Z" is="relative-time">Oct 16, 2011</time>
      </span>
      <div>
        <img alt="@JoshCheek" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/77495?v=3&amp;s=40" width="20" />
        <a href="/JoshCheek" class="user-mention" rel="author">JoshCheek</a>
          <a href="/JoshCheek/ruby-kickstart/commit/ef3ea9d3aee39eb9b1dc3d7a898078af07f73ebd" class="message" data-pjax="true" title="Incorporate feedback from Dave Aronson">Incorporate feedback from Dave Aronson</a>
      </div>

    <div class="commit-tease-contributors">
      <a class="muted-link contributors-toggle" href="#blob_contributors_box" rel="facebox">
        <strong>1</strong>
         contributor
      </a>
      
    </div>

    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header" data-facebox-id="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list" data-facebox-id="facebox-description">
          <li class="facebox-user-list-item">
            <img alt="@JoshCheek" height="24" src="https://avatars2.githubusercontent.com/u/77495?v=3&amp;s=48" width="24" />
            <a href="/JoshCheek">JoshCheek</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="btn-group">
      <a href="/JoshCheek/ruby-kickstart/raw/master/cheatsheets/hashes.rb" class="btn btn-sm " id="raw-url">Raw</a>
        <a href="/JoshCheek/ruby-kickstart/blame/master/cheatsheets/hashes.rb" class="btn btn-sm js-update-url-with-hash">Blame</a>
      <a href="/JoshCheek/ruby-kickstart/commits/master/cheatsheets/hashes.rb" class="btn btn-sm " rel="nofollow">History</a>
    </div>

        <a class="octicon-btn tooltipped tooltipped-nw"
           href="github-mac://openRepo/https://github.com/JoshCheek/ruby-kickstart?branch=master&amp;filepath=cheatsheets%2Fhashes.rb"
           aria-label="Open this file in GitHub Desktop"
           data-ga-click="Repository, open with desktop, type:mac">
            <span class="octicon octicon-device-desktop"></span>
        </a>

        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/JoshCheek/ruby-kickstart/edit/master/cheatsheets/hashes.rb" class="inline-form js-update-url-with-hash" data-form-nonce="13e891e960ba96161fcccb1e1d251104c0fa0398" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="UYMKuRumrTRtIGtrNxapr8xPQ0FosPXt66YSXvQ1btVZ8/GfvyoLPTAyCG7MLqhFQb4kmG1ZuhhF/I7nbVG5uw==" /></div>
          <button class="octicon-btn tooltipped tooltipped-nw" type="submit"
            aria-label="Fork this project and edit the file" data-hotkey="e" data-disable-with>
            <span class="octicon octicon-pencil"></span>
          </button>
</form>        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/JoshCheek/ruby-kickstart/delete/master/cheatsheets/hashes.rb" class="inline-form" data-form-nonce="13e891e960ba96161fcccb1e1d251104c0fa0398" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="JKAlhPKlCrgyisZfqMeV3U8KnysET5lVJzZRgsda6h3uSP3KOsJ1KrvONIXyl6IUau2XsL4TYaOJv55TZ6QP5w==" /></div>
          <button class="octicon-btn octicon-btn-danger tooltipped tooltipped-nw" type="submit"
            aria-label="Fork this project and delete the file" data-disable-with>
            <span class="octicon octicon-trashcan"></span>
          </button>
</form>  </div>

  <div class="file-info">
      131 lines (102 sloc)
      <span class="file-info-divider"></span>
    4.99 KB
  </div>
</div>

  

  <div class="blob-wrapper data type-ruby">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># http://ruby-doc.org/core/classes/Hash.html</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># =====  Initializing  =====</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># populated</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line">{ <span class="pl-c1">1</span> =&gt; <span class="pl-s"><span class="pl-pds">&#39;</span>one<span class="pl-pds">&#39;</span></span> , <span class="pl-c1">2</span> =&gt; <span class="pl-s"><span class="pl-pds">&#39;</span>two<span class="pl-pds">&#39;</span></span> } <span class="pl-c"># =&gt; {1=&gt;&quot;one&quot;, 2=&gt;&quot;two&quot;}</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">Hash</span>[ <span class="pl-c1">1</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>one<span class="pl-pds">&#39;</span></span> , <span class="pl-c1">2</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>two<span class="pl-pds">&#39;</span></span> ]   <span class="pl-c"># =&gt; {1=&gt;&quot;one&quot;, 2=&gt;&quot;two&quot;}</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># empty</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line">{}                          <span class="pl-c"># =&gt; {}</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">Hash</span>.<span class="pl-k">new</span>                    <span class="pl-c"># =&gt; {}</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># =====  Nonexistent Keys  =====</span></td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># by default, nonexistent keys return nil</span></td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line">hash <span class="pl-k">=</span> <span class="pl-c1">Hash</span>.<span class="pl-k">new</span>   <span class="pl-c"># =&gt; {}</span></td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line">hash[<span class="pl-c1">:josh</span>]       <span class="pl-c"># =&gt; nil</span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># to change this behaviour, you can pass new a block that receives the hash and the nonexistent key</span></td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># and then adds it to the hash in the way that you would like</span></td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line">aliases <span class="pl-k">=</span> <span class="pl-c1">Hash</span>.<span class="pl-k">new</span> { |<span class="pl-smi">this_hash</span>, <span class="pl-smi">key</span>| this_hash[key] <span class="pl-k">=</span> <span class="pl-c1">Array</span>.<span class="pl-k">new</span> }</td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line">aliases         <span class="pl-c"># =&gt; {}</span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line">aliases[<span class="pl-c1">:josh</span>]  <span class="pl-c"># =&gt; []</span></td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line">aliases         <span class="pl-c"># =&gt; {:josh=&gt;[]}</span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line">aliases[<span class="pl-c1">:jeff</span>] <span class="pl-k">&lt;&lt;</span> <span class="pl-s"><span class="pl-pds">&#39;</span>the dude<span class="pl-pds">&#39;</span></span> <span class="pl-k">&lt;&lt;</span> <span class="pl-s"><span class="pl-pds">&#39;</span>his dudeness<span class="pl-pds">&#39;</span></span> <span class="pl-k">&lt;&lt;</span> <span class="pl-s"><span class="pl-pds">&#39;</span>duder<span class="pl-pds">&#39;</span></span> <span class="pl-k">&lt;&lt;</span> <span class="pl-s"><span class="pl-pds">&#39;</span>el duderino<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line">aliases         <span class="pl-c"># =&gt; {:josh=&gt;[], :jeff=&gt;[&quot;the dude&quot;, &quot;his dudeness&quot;, &quot;duder&quot;, &quot;el duderino&quot;]}</span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># =====  Access and Assign  =====</span></td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># generally access and assign like ths</span></td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">hash <span class="pl-k">=</span> <span class="pl-c1">Hash</span>.<span class="pl-k">new</span></td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line">hash                          <span class="pl-c"># =&gt; {}</span></td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line">hash[<span class="pl-s"><span class="pl-pds">&quot;</span>my key<span class="pl-pds">&quot;</span></span>] <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>my value<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line">hash                          <span class="pl-c"># =&gt; {&quot;my key&quot;=&gt;&quot;my value&quot;}</span></td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line">hash[<span class="pl-s"><span class="pl-pds">&quot;</span>my key<span class="pl-pds">&quot;</span></span>]                <span class="pl-c"># =&gt; &quot;my value&quot;</span></td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># access multiple values at once</span></td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line">hash <span class="pl-k">=</span> <span class="pl-c1">Hash</span>[ <span class="pl-k">*</span>[ <span class="pl-c1">Array</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>a<span class="pl-pds">&#39;</span></span>..<span class="pl-s"><span class="pl-pds">&#39;</span>j<span class="pl-pds">&#39;</span></span>) , <span class="pl-c1">Array</span>(<span class="pl-c1">1</span>..<span class="pl-c1">10</span>) ].transpose.flatten ] <span class="pl-c"># just populating</span></td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line">hash                                  <span class="pl-c"># =&gt; {&quot;a&quot;=&gt;1, &quot;b&quot;=&gt;2, &quot;c&quot;=&gt;3, &quot;d&quot;=&gt;4, &quot;e&quot;=&gt;5, &quot;f&quot;=&gt;6, &quot;g&quot;=&gt;7, &quot;h&quot;=&gt;8, &quot;i&quot;=&gt;9, &quot;j&quot;=&gt;10}</span></td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line">hash.values_at <span class="pl-s"><span class="pl-pds">&#39;</span>j<span class="pl-pds">&#39;</span></span> , <span class="pl-s"><span class="pl-pds">&#39;</span>e<span class="pl-pds">&#39;</span></span> , <span class="pl-s"><span class="pl-pds">&#39;</span>i<span class="pl-pds">&#39;</span></span> , <span class="pl-c1">:x</span>   <span class="pl-c"># =&gt; [10, 5, 9, nil]</span></td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># more interesting options with fetch (think how this might be helpful in param default values)</span></td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line">hash <span class="pl-k">=</span> { <span class="pl-s"><span class="pl-pds">&quot;</span>a<span class="pl-pds">&quot;</span></span> =&gt; <span class="pl-c1">100</span>, <span class="pl-s"><span class="pl-pds">&quot;</span>b<span class="pl-pds">&quot;</span></span> =&gt; <span class="pl-c1">200</span> }</td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line">hash.fetch <span class="pl-s"><span class="pl-pds">&quot;</span>a<span class="pl-pds">&quot;</span></span>                              <span class="pl-c"># =&gt; 100</span></td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line">hash.fetch <span class="pl-s"><span class="pl-pds">&quot;</span>z<span class="pl-pds">&quot;</span></span> , <span class="pl-s"><span class="pl-pds">&quot;</span>go fish<span class="pl-pds">&quot;</span></span>                  <span class="pl-c"># =&gt; &quot;go fish&quot;</span></td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line">hash.fetch(<span class="pl-s"><span class="pl-pds">&quot;</span>z<span class="pl-pds">&quot;</span></span>) { |<span class="pl-smi">el</span>| <span class="pl-s"><span class="pl-pds">&quot;</span>go fish, <span class="pl-pse">#{</span><span class="pl-s1">el</span><span class="pl-pse"><span class="pl-s1">}</span></span><span class="pl-pds">&quot;</span></span>}    <span class="pl-c"># =&gt; &quot;go fish, z&quot;</span></td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># sometimes you might use has_key to check for a key, for example, if you&#39;re using an init block</span></td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code blob-code-inner js-file-line">hash <span class="pl-k">=</span> <span class="pl-c1">Hash</span>.<span class="pl-k">new</span> { <span class="pl-c1">true</span> }</td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code blob-code-inner js-file-line">hash[<span class="pl-c1">:a</span>] <span class="pl-k">=</span> <span class="pl-c1">:b</span></td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code blob-code-inner js-file-line">hash[<span class="pl-c1">1000</span>]                                  <span class="pl-c"># =&gt; true</span></td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code blob-code-inner js-file-line">hash.has_key? <span class="pl-c1">1000</span>                          <span class="pl-c"># =&gt; false</span></td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code blob-code-inner js-file-line">hash <span class="pl-k">=</span> { <span class="pl-c1">12</span> =&gt; <span class="pl-c1">nil</span> }</td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code blob-code-inner js-file-line">hash[<span class="pl-c1">12</span>]                                    <span class="pl-c"># =&gt; nil</span></td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code blob-code-inner js-file-line">hash[<span class="pl-c1">13</span>]                                    <span class="pl-c"># =&gt; nil</span></td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code blob-code-inner js-file-line">hash.has_key? <span class="pl-c1">12</span>                            <span class="pl-c"># =&gt; true</span></td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code blob-code-inner js-file-line">hash.has_key? <span class="pl-c1">13</span>                            <span class="pl-c"># =&gt; false</span></td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># and the converse</span></td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code blob-code-inner js-file-line">hash <span class="pl-k">=</span> { <span class="pl-s"><span class="pl-pds">&quot;</span>a<span class="pl-pds">&quot;</span></span> =&gt; <span class="pl-c1">100</span>, <span class="pl-s"><span class="pl-pds">&quot;</span>b<span class="pl-pds">&quot;</span></span> =&gt; <span class="pl-c1">200</span> }</td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code blob-code-inner js-file-line">hash.has_value?(<span class="pl-c1">100</span>)                        <span class="pl-c"># =&gt; true</span></td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code blob-code-inner js-file-line">hash.has_value?(<span class="pl-c1">999</span>)                        <span class="pl-c"># =&gt; false</span></td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># =====  Removal  =====</span></td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># delete accepts a key and returns its value. You can give a block that will be invoked and returned</span></td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># in the event that the keyt o delete was not seen</span></td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code blob-code-inner js-file-line">hash <span class="pl-k">=</span> <span class="pl-c1">Hash</span>[<span class="pl-k">*</span><span class="pl-c1">Array</span>(<span class="pl-c1">1</span>..<span class="pl-c1">10</span>)]                  <span class="pl-c"># =&gt; {1=&gt;2, 3=&gt;4, 5=&gt;6, 7=&gt;8, 9=&gt;10}</span></td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code blob-code-inner js-file-line">hash.delete <span class="pl-c1">1</span>                               <span class="pl-c"># =&gt; 2</span></td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code blob-code-inner js-file-line">hash.delete <span class="pl-c1">100</span>                             <span class="pl-c"># =&gt; nil</span></td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code blob-code-inner js-file-line">hash                                        <span class="pl-c"># =&gt; {3=&gt;4, 5=&gt;6, 7=&gt;8, 9=&gt;10}</span></td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code blob-code-inner js-file-line">hash.delete(<span class="pl-c1">3</span>)   { |<span class="pl-smi">n</span>| <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pse">#{</span><span class="pl-s1">n</span><span class="pl-pse"><span class="pl-s1">}</span></span> not found<span class="pl-pds">&quot;</span></span> }   <span class="pl-c"># =&gt; 4</span></td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code blob-code-inner js-file-line">hash.delete(<span class="pl-c1">100</span>) { |<span class="pl-smi">n</span>| <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pse">#{</span><span class="pl-s1">n</span><span class="pl-pse"><span class="pl-s1">}</span></span> not found<span class="pl-pds">&quot;</span></span> }   <span class="pl-c"># =&gt; &quot;100 not found&quot;</span></td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># delete_if to remove all pairs from a hash </span></td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># that cause the block to evaluate to true</span></td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code blob-code-inner js-file-line">hash <span class="pl-k">=</span> <span class="pl-c1">Hash</span>[<span class="pl-k">*</span><span class="pl-c1">Array</span>(<span class="pl-c1">1</span>..<span class="pl-c1">10</span>)]                  <span class="pl-c"># =&gt; {1=&gt;2, 3=&gt;4, 5=&gt;6, 7=&gt;8, 9=&gt;10}</span></td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code blob-code-inner js-file-line">hash.delete_if <span class="pl-k">do </span>|<span class="pl-smi">key</span>,<span class="pl-smi">value</span>|</td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code blob-code-inner js-file-line">  key <span class="pl-k">%</span> <span class="pl-c1">5</span> <span class="pl-k">==</span> <span class="pl-c1">0</span> <span class="pl-k">||</span> value <span class="pl-k">%</span> <span class="pl-c1">5</span> <span class="pl-k">==</span> <span class="pl-c1">0</span></td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code blob-code-inner js-file-line">hash                                        <span class="pl-c"># =&gt; {1=&gt;2, 3=&gt;4, 7=&gt;8}</span></td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># =====  Iterating  =====</span></td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># pass a block that receives the key and the value</span></td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code blob-code-inner js-file-line">cities <span class="pl-k">=</span> { <span class="pl-c1">:Chicago</span> =&gt; <span class="pl-c1">:USA</span> , <span class="pl-c1">:Paris</span> =&gt; <span class="pl-c1">:France</span> , <span class="pl-c1">:Ramstein</span> =&gt; <span class="pl-c1">:Germany</span> }</td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code blob-code-inner js-file-line">results <span class="pl-k">=</span> <span class="pl-c1">Array</span>.<span class="pl-k">new</span></td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code blob-code-inner js-file-line">cities.each <span class="pl-k">do </span>|<span class="pl-smi">city</span>,<span class="pl-smi">country</span>|</td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code blob-code-inner js-file-line">  results <span class="pl-k">&lt;&lt;</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pse">#{</span><span class="pl-s1">city</span><span class="pl-pse"><span class="pl-s1">}</span></span> is in <span class="pl-pse">#{</span><span class="pl-s1">country</span><span class="pl-pse"><span class="pl-s1">}</span></span><span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code blob-code-inner js-file-line">results <span class="pl-c"># =&gt; [&quot;Chicago is in USA&quot;, &quot;Paris is in France&quot;, &quot;Ramstein is in Germany&quot;]</span></td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># =====  Other Useful Methods  =====</span></td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># there is also a self mutator version: merge!</span></td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code blob-code-inner js-file-line">defaults <span class="pl-k">=</span> { <span class="pl-c1">:color</span> =&gt; <span class="pl-c1">:red</span> , <span class="pl-c1">:city</span> =&gt; <span class="pl-s"><span class="pl-pds">&#39;</span>Wichita<span class="pl-pds">&#39;</span></span> }</td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code blob-code-inner js-file-line">custom   <span class="pl-k">=</span> { <span class="pl-c1">:city</span> =&gt; <span class="pl-s"><span class="pl-pds">&#39;</span>Boston<span class="pl-pds">&#39;</span></span> }</td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code blob-code-inner js-file-line">merged   <span class="pl-k">=</span> defaults.merge custom</td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code blob-code-inner js-file-line">defaults                      <span class="pl-c"># =&gt; {:color=&gt;:red, :city=&gt;&quot;Wichita&quot;}</span></td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code blob-code-inner js-file-line">custom                        <span class="pl-c"># =&gt; {:city=&gt;&quot;Boston&quot;}</span></td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code blob-code-inner js-file-line">merged                        <span class="pl-c"># =&gt; {:color=&gt;:red, :city=&gt;&quot;Boston&quot;}</span></td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code blob-code-inner js-file-line">cities <span class="pl-k">=</span> { <span class="pl-c1">:Chicago</span> =&gt; <span class="pl-c1">:USA</span> , <span class="pl-c1">:Paris</span> =&gt; <span class="pl-c1">:France</span> , <span class="pl-c1">:Ramstein</span> =&gt; <span class="pl-c1">:Germany</span> }</td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code blob-code-inner js-file-line">cities.keys                   <span class="pl-c"># =&gt; [:Chicago, :Paris, :Ramstein]</span></td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code blob-code-inner js-file-line">cities.values                 <span class="pl-c"># =&gt; [:USA, :France, :Germany]</span></td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code blob-code-inner js-file-line">cities.length                 <span class="pl-c"># =&gt; 3</span></td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code blob-code-inner js-file-line">cities.size                   <span class="pl-c"># =&gt; 3</span></td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code blob-code-inner js-file-line">cities.empty?                 <span class="pl-c"># =&gt; false</span></td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">Hash</span>.<span class="pl-k">new</span>.empty?               <span class="pl-c"># =&gt; true</span></td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code blob-code-inner js-file-line">hash <span class="pl-k">=</span> <span class="pl-c1">Hash</span>[<span class="pl-k">*</span><span class="pl-c1">Array</span>(<span class="pl-c1">1</span>..<span class="pl-c1">10</span>)]</td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code blob-code-inner js-file-line">hash                          <span class="pl-c"># =&gt; {1=&gt;2, 3=&gt;4, 5=&gt;6, 7=&gt;8, 9=&gt;10}</span></td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code blob-code-inner js-file-line">hash.clear</td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code blob-code-inner js-file-line">hash                          <span class="pl-c"># =&gt; {}</span></td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># get a key for a given value (remember, there could be more than one key with the same value)</span></td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code blob-code-inner js-file-line">hash <span class="pl-k">=</span> { <span class="pl-s"><span class="pl-pds">&quot;</span>a<span class="pl-pds">&quot;</span></span> =&gt; <span class="pl-c1">100</span>, <span class="pl-s"><span class="pl-pds">&quot;</span>b<span class="pl-pds">&quot;</span></span> =&gt; <span class="pl-c1">200</span> }</td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code blob-code-inner js-file-line">hash.index(<span class="pl-c1">200</span>)               <span class="pl-c"># =&gt; &quot;b&quot; # !&gt; Hash#index is deprecated; use Hash#key</span></td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code blob-code-inner js-file-line">hash.index(<span class="pl-c1">999</span>)               <span class="pl-c"># =&gt; nil # !&gt; Hash#index is deprecated; use Hash#key</span></td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># swap keys with values</span></td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code blob-code-inner js-file-line">hash <span class="pl-k">=</span> { <span class="pl-c1">:n</span> =&gt; <span class="pl-c1">1</span>, <span class="pl-c1">:m</span> =&gt; <span class="pl-c1">1</span>, <span class="pl-c1">:o</span> =&gt; <span class="pl-c1">2</span> }  <span class="pl-c"># n and m have the same value, n ends up getting squashed</span></td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code blob-code-inner js-file-line">hash.invert                   <span class="pl-c"># =&gt; {1=&gt;:m, 2=&gt;:o}</span></td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L128" class="blob-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># convert to an array</span></td>
      </tr>
      <tr>
        <td id="L129" class="blob-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-code blob-code-inner js-file-line">{ <span class="pl-c1">:Chicago</span> =&gt; <span class="pl-c1">:USA</span> , <span class="pl-c1">:Paris</span> =&gt; <span class="pl-c1">:France</span> , <span class="pl-c1">:Ramstein</span> =&gt; <span class="pl-c1">:Germany</span> }.to_a <span class="pl-c"># =&gt; [[:Chicago, :USA], [:Paris, :France], [:Ramstein, :Germany]]</span></td>
      </tr>
      <tr>
        <td id="L130" class="blob-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
</table>

  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

        </div>
      </div>
      <div class="modal-backdrop"></div>
    </div>
  </div>


    </div>

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>
        <li><a href="https://github.com/pricing" data-ga-click="Footer, go to pricing, text:pricing">Pricing</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.07479s from github-fe145-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>
  </div>
</div>



    
    
    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
        <span class="octicon octicon-x"></span>
      </button>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" integrity="sha256-Ln/D0mSiCOE4PehbgVN5vsz/VsH5d3FFFdTKx4IO7z4=" src="https://assets-cdn.github.com/assets/frameworks-2e7fc3d264a208e1383de85b815379beccff56c1f977714515d4cac7820eef3e.js"></script>
      <script async="async" crossorigin="anonymous" integrity="sha256-th/pZPkPrbu2s+X6fx5jVdtJNW/Cl8QWvQqFg+ScmAM=" src="https://assets-cdn.github.com/assets/github-b61fe964f90fadbbb6b3e5fa7f1e6355db49356fc297c416bd0a8583e49c9803.js"></script>
      
      
    <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner hidden">
      <span class="octicon octicon-alert"></span>
      <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
      <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
    </div>
  </body>
</html>

