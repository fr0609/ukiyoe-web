<!DOCTYPE html>
<html lang="{{ __("en-US") }}" class="{{ __("en-US") }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="content-language" content="{{ __("en-US") }}"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="{{ CDN("/images/favicon.png", {"raw": true}) }}" type="image/x-icon"/>
    <title>{{ title }} - {{ __("Ukiyo-e Search") }}</title>
    {% if page_desc %}<meta name="description" content="{{ page_desc }}"/>{% endif %}

    {{ CDN("/bower/bootstrap/dist/css/bootstrap.min.css") }}
    {{ CDN("/bower/bootstrap/dist/css/bootstrap-theme.min.css") }}
    {{ CDN("/bower/select2/select2.css") }}
    {{ CDN("/bower/nouislider/jquery.nouislider.css") }}
    {{ CDN("/css/style.css") }}

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/">
                    {{ __("Ukiyo-e Search") }}</a>
            </div>

            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li{% if getSiteCategory() === "search" %} class="active"{% endif %}><a href="/search">{{ __("Search") }}</a></li>
                    <li{% if getSiteCategory() === "sources" %} class="active"{% endif %}>
                        <a href="{{ URL("/sources") }}">
                            {{ __("Sources") }}</a></li>
                    <li><a href="http://blog.ukiyo-e.org/">
                        {{ __("Blog") }}</a></li>
                    <li{% if getSiteCategory() === "about" %} class="active"{% endif %}>
                        <a href="{{ URL("/about") }}">
                        {{ __("About") }}</a></li>
                    <li class="divider-vertical"></li>
                    <li><a href="{{ getOtherURL() }}">
                        {% if curLocale() == "en" %}
                        <img src="{{ CDN("/images/ja.png", {"raw": true}) }}"
                            alt="{{ __("Switch Language") }}" />
                        {% else %}
                        <img src="{{ CDN("/images/en.png", {"raw": true}) }}"
                            alt="{{ __("Switch Language") }}" />
                        {% endif %}
                        {{ __("Switch Language") }}</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="lang-notice alert alert-error" style="display:none;">
            {{ __("Language Notice") }}
            <a href="{{ getOtherURL }}">{{ __("Language Redirect") }}</a>
        </div>

        {% block content %}{% endblock %}
    </div>

    <script src="/bower/jquery/jquery.min.js"></script>
    {{ CDN("/bower/select2/select2.js") }}
    {{ CDN("/bower/nouislider/jquery.nouislider.js") }}
    {{ CDN("/bower/bootstrap/js/tab.js") }}
    {{ CDN("/js/app.js") }}
    {% block script %}{% endblock %}
</body>
</html>
