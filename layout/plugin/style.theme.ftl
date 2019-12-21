
<style>
    :root {
        --color: #333333;
        --background: #f7f7f7;
        --cardbgcolor: #fff;
        --cardcolor: #333;
        --cardtitlecolor: #333333;
        --navbarcolor: #333333;
        --navbarbgcolor: rgba(255, 255, 255, 0.7);
        --img-default-filter: none;
        --img-hover-filter: none;
        --btn-bg-color: whitesmoke;
        --btn-color: #333333;
        --btn-hover-color: #eeeeee;
        --link-color: #1485FE;
        --link-hover-color: #1485FE;

        /*toc*/
        --toc-dot-color: #1485FE;
        --toc-dot-active-color: #1485FE;
        --toc-dot-active-bg-color: #ebedef;
        --toc-vertical-line-color: #1485FE;
        --toc-item-bg-hover: #1485FE;
    }
    <#if settings.auto_theme!true>
    /*light theme*/
    @media (prefers-color-scheme: light) {
        :root {
            --color: #333333;
            --background: #f7f7f7;
            --cardbgcolor: #fff;
            --cardcolor: #333;
            --cardtitlecolor: #333333;
            --navbarcolor: #333333;
            --navbarbgcolor: rgba(255, 255, 255, 0.7);
            --img-default-filter: none;
            --img-hover-filter: none;
            --btn-bg-color: whitesmoke;
            --btn-color: #333333;
            --btn-hover-color: #eeeeee;
            --link-color: #1485FE;
            --link-hover-color: #1485FE;

            /*code highlight*/
            --code-bg-color: #f5f2f0;
            --code-class-color: #DD4A68;

            /*toc*/
            --toc-dot-color: #1485FE;
            --toc-dot-active-color: #1485FE;
            --toc-dot-active-bg-color: #ebedef;
            --toc-vertical-line-color: #1485FE;
            --toc-item-bg-hover: #1485FE;
        }
    }

    /* Dark mode */
    @media (prefers-color-scheme: dark) {
        :root {
            --color: #CCC;
            --background: #2c2a2a !important;
            --cardbgcolor: #343232 !important;
            --cardcolor: #bcbcbc;
            --cardtitlecolor: #bcbcbc;
            --navbarcolor: #bcbcbc;
            --navbarbgcolor: rgba(52, 50, 50, 0.7);
            /*--img-default-filter: grayscale(100%);*/
            --img-default-filter: brightness(60%);
            --img-hover-filter: brightness(75%);
            --btn-bg-color: #2c2a2a;
            --btn-color: #bcbcbc;
            --btn-hover-color: #3B3C3E;
            --link-color: #1485FE;
            --link-hover-color: #1485FE;

            /*code highlight*/
            --code-bg-color: #2c2a2a;
            --code-class-color: #f2777a;

            /*toc*/
            --toc-dot-color: #1485FE;
            --toc-dot-active-bg-color: rgba(255, 255, 255, 0.2);
            --toc-dot-active-color: #1485FE;
            --toc-vertical-line-color: #888;
            --toc-bg-bg-hover: #321;
        }
    }

    <#else>
    @media (prefers-color-scheme: light) {
        :root {
            --color: #333333;
            --background: #f7f7f7;
            --cardbgcolor: #fff;
            --cardcolor: #333;
            --cardtitlecolor: #333333;
            --navbarcolor: #333333;
            --navbarbgcolor: rgba(255, 255, 255, 0.7);
            --img-default-filter: none;
            --img-hover-filter: none;
            --btn-bg-color: whitesmoke;
            --btn-color: #333333;
            --btn-hover-color: #eeeeee;
            --link-color: #1485FE;
            --link-hover-color: #1485FE;

            /*toc*/
            --toc-dot-color: #1485FE;
            --toc-dot-active-color: #1485FE;
            --toc-dot-active-bg-color: #ebedef;
            --toc-vertical-line-color: #1485FE;
            --toc-item-bg-hover: #1485FE;
        }
    }
    </#if>
    /* Light mode */


    html {
        background: var(--background);
        color: var(--color);
    }

    body > .footer, body > .navbar {
        background-color: var(--cardbgcolor);
        color: var(--cardcolor);
    }

    a:hover {
        color: var(--link-color);
    }

    .content a {
        color: var(--link-color);
    }

    .content a:hover {
        color: var(--link-hover-color);
        font-weight: 400;
    }

    .card {
        background-color: var(--cardbgcolor);
        color: var(--cardcolor);
    }

    img {
        -webkit-filter: var(--img-default-filter);
        filter: var(--img-default-filter);
    }

    img:hover {
        -webkit-filter: var(--img-hover-filter);
        filter: var(--img-hover-filter);
    }

    .navbar-logo img {
        -webkit-filter: none;
        filter: none;
    }

    .navbar-logo img:hover {
        filter: brightness(75%);
    }

    .card .title {
        color: var(--color) !important;
    }

    .navbar-dropdown {
        background-color: var(--background);
    }

    pre,
    blockquote {
        color: var(--color) !important;
    }

    pre[class*="language-"] {
        border-radius: 4px;
    }

    .math {
        overflow: auto;
    }

    .math::-webkit-scrollbar,
    pre[class*="language-"]::-webkit-scrollbar {
        height: 10px;
        background-color: #00000000;
    }

    .math::-webkit-scrollbar-thumb:hover,
    pre[class*="language-"]::-webkit-scrollbar-thumb:hover {
        border-radius: 10px;
        background-color: #989898;
    }

    .card .content,
        /*.card .title a{*/
        /*    color: var(--cardtitlecolor) !important;*/
        /*}*/
    .pagination .pagination-link:not(.is-current),
    .pagination .pagination-previous,
    .pagination .pagination-next {
        background-color: var(--cardbgcolor);
        color: var(--cardcolor);
    }

    .navbar-item, .navbar-link,
    .navbar-main .navbar-item .sub-menu {
        color: var(--navbarcolor);

    }

    .has-link-black-ter {
        color: var(--cardtitlecolor) !important;
    }


    .button {
        background-color: var(--btn-bg-color) !important;
        color: var(--btn-color) !important;
    }

    .button:hover {
        background-color: var(--btn-hover-color) !important;
    }

    body > footer > div > div > div.level-end > div > a > i {
        background-color: transparent;
        color: var(--color);
    }

    .level .level-item.button {
        background-color: var(--cardbgcolor) !important;
        border-color: var(--cardbgcolor) !important;
        color: var(--color) !important;
    }

    .menu-list .level {
        color: var(--color);
    }


    .menu-list a:hover {
        background-color: var(--background);
        opacity: 0.6;
        color: var(--link-hover-color);
    }

    .tag:not(body) {
        background-color: var(--background) !important;
        color: var(--color) !important;
    }

    .content .tag {
        background-color: transparent !important;
        color: var(--code-class-color) !important;
    }

    h1,
    h2,
    h3,
    h4,
    h5,
    h6,
    h7,
    strong {
        color: var(--color) !important;
    }

    .is-active a {
        color: var(--color) !important;
    }

    a.navbar-item:hover {
        background-color: var(--cardbgcolor);
        color: #3273dc;
    }

<#if settings.auto_theme!true>
    code {
        background-color: var(--code-bg-color) !important;
    }
    
    pre,
    blockquote {
        background-color: var(--code-bg-color) !important;
    }

    @media (prefers-color-scheme: light) {
        code[class*="language-"],pre[class*="language-"]{color:black;background:none;text-shadow:0 1px white;font-family:Consolas,Monaco,'Andale Mono','Ubuntu Mono',monospace;font-size:1em;text-align:left;white-space:pre;word-spacing:normal;word-break:normal;word-wrap:normal;line-height:1.5;-moz-tab-size:4;-o-tab-size:4;tab-size:4;-webkit-hyphens:none;-moz-hyphens:none;-ms-hyphens:none;hyphens:none;}pre[class*="language-"]::-moz-selection,pre[class*="language-"]::-moz-selection,code[class*="language-"]::-moz-selection,code[class*="language-"]::-moz-selection{text-shadow:none;background:#b3d4fc;}pre[class*="language-"]::selection,pre[class*="language-"]::selection,code[class*="language-"]::selection,code[class*="language-"]::selection{text-shadow:none;background:#b3d4fc;}@media print{code[class*="language-"],pre[class*="language-"]{text-shadow:none;}}pre[class*="language-"]{padding:1em;margin:.5em 0;overflow:auto;}:not(pre) > code[class*="language-"],pre[class*="language-"]{background:#f5f2f0;}:not(pre) > code[class*="language-"]{padding:.1em;border-radius:.3em;white-space:normal;}.token.comment,.token.prolog,.token.doctype,.token.cdata{color:slategray;}.token.punctuation{color:#999;}.namespace{opacity:.7;}.token.property,.token.tag,.token.boolean,.token.number,.token.constant,.token.symbol,.token.deleted{color:#905;}.token.selector,.token.attr-name,.token.string,.token.char,.token.builtin,.token.inserted{color:#690;}.token.operator,.token.entity,.token.url,.language-css .token.string,.style .token.string{color:#9a6e3a;background:hsla(0,0%,100%,.5);}.token.atrule,.token.attr-value,.token.keyword{color:#07a;}.token.function,.token.class-name{color:#DD4A68;}.token.regex,.token.important,.token.variable{color:#e90;}.token.important,.token.bold{font-weight:bold;}.token.italic{font-style:italic;}.token.entity{cursor:help;}pre[class*="language-"].line-numbers{position:relative;padding-left:3.8em;counter-reset:linenumber;}pre[class*="language-"].line-numbers > code{position:relative;white-space:inherit;}.line-numbers .line-numbers-rows{position:absolute;pointer-events:none;top:0;font-size:100%;left:-3.8em;width:3em;letter-spacing:-1px;border-right:1px solid #999;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;}.line-numbers-rows > span{pointer-events:none;display:block;counter-increment:linenumber;}.line-numbers-rows > span:before{content:counter(linenumber);color:#999;display:block;padding-right:0.8em;text-align:right;}div.code-toolbar{position:relative;}div.code-toolbar > .toolbar{position:absolute;top:.3em;right:.2em;transition:opacity 0.3s ease-in-out;opacity:0;}div.code-toolbar:hover > .toolbar{opacity:1;}div.code-toolbar:focus-within > .toolbar{opacity:1;}div.code-toolbar > .toolbar .toolbar-item{display:inline-block;}div.code-toolbar > .toolbar a{cursor:pointer;}div.code-toolbar > .toolbar button{background:none;border:0;color:inherit;font:inherit;line-height:normal;overflow:visible;padding:0;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;}div.code-toolbar > .toolbar a,div.code-toolbar > .toolbar button,div.code-toolbar > .toolbar span{color:#bbb;font-size:.8em;padding:0 .5em;background:#f5f2f0;background:rgba(224,224,224,0.2);box-shadow:0 2px 0 0 rgba(0,0,0,0.2);border-radius:.5em;}div.code-toolbar > .toolbar a:hover,div.code-toolbar > .toolbar a:focus,div.code-toolbar > .toolbar button:hover,div.code-toolbar > .toolbar button:focus,div.code-toolbar > .toolbar span:hover,div.code-toolbar > .toolbar span:focus{color:inherit;text-decoration:none;}span.inline-color{display:inline-block;height:1.333ch;width:1.333ch;margin:0 .333ch;box-sizing:border-box;border:1px solid white;outline:1px solid black;}pre.diff-highlight > code .token.deleted:not(.prefix),pre > code.diff-highlight .token.deleted:not(.prefix){background-color:rgba(255,0,0,.1);color:inherit;display:block;}pre.diff-highlight > code .token.inserted:not(.prefix),pre > code.diff-highlight .token.inserted:not(.prefix){background-color:rgba(0,255,128,.1);color:inherit;display:block;}
    }

    @media (prefers-color-scheme: dark) {
        code[class*="language-"],pre[class*="language-"]{color:#ccc;background:none;font-family:Consolas,Monaco,'Andale Mono','Ubuntu Mono',monospace;font-size:1em;text-align:left;white-space:pre;word-spacing:normal;word-break:normal;word-wrap:normal;line-height:1.5;-moz-tab-size:4;-o-tab-size:4;tab-size:4;-webkit-hyphens:none;-moz-hyphens:none;-ms-hyphens:none;hyphens:none;}pre[class*="language-"]{padding:1em;margin:.5em 0;overflow:auto;}:not(pre) > code[class*="language-"],pre[class*="language-"]{background:#2d2d2d;}:not(pre) > code[class*="language-"]{padding:.1em;border-radius:.3em;white-space:normal;}.token.comment,.token.block-comment,.token.prolog,.token.doctype,.token.cdata{color:#999;}.token.punctuation{color:#ccc;}.token.tag,.token.attr-name,.token.namespace,.token.deleted{color:#e2777a;}.token.function-name{color:#6196cc;}.token.boolean,.token.number,.token.function{color:#f08d49;}.token.property,.token.class-name,.token.constant,.token.symbol{color:#f8c555;}.token.selector,.token.important,.token.atrule,.token.keyword,.token.builtin{color:#cc99cd;}.token.string,.token.char,.token.attr-value,.token.regex,.token.variable{color:#7ec699;}.token.operator,.token.entity,.token.url{color:#67cdcc;}.token.important,.token.bold{font-weight:bold;}.token.italic{font-style:italic;}.token.entity{cursor:help;}.token.inserted{color:green;}pre[class*="language-"].line-numbers{position:relative;padding-left:3.8em;counter-reset:linenumber;}pre[class*="language-"].line-numbers > code{position:relative;white-space:inherit;}.line-numbers .line-numbers-rows{position:absolute;pointer-events:none;top:0;font-size:100%;left:-3.8em;width:3em;letter-spacing:-1px;border-right:1px solid #999;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;}.line-numbers-rows > span{pointer-events:none;display:block;counter-increment:linenumber;}.line-numbers-rows > span:before{content:counter(linenumber);color:#999;display:block;padding-right:0.8em;text-align:right;}div.code-toolbar{position:relative;}div.code-toolbar > .toolbar{position:absolute;top:.3em;right:.2em;transition:opacity 0.3s ease-in-out;opacity:0;}div.code-toolbar:hover > .toolbar{opacity:1;}div.code-toolbar:focus-within > .toolbar{opacity:1;}div.code-toolbar > .toolbar .toolbar-item{display:inline-block;}div.code-toolbar > .toolbar a{cursor:pointer;}div.code-toolbar > .toolbar button{background:none;border:0;color:inherit;font:inherit;line-height:normal;overflow:visible;padding:0;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;}div.code-toolbar > .toolbar a,div.code-toolbar > .toolbar button,div.code-toolbar > .toolbar span{color:#bbb;font-size:.8em;padding:0 .5em;background:#f5f2f0;background:rgba(224,224,224,0.2);box-shadow:0 2px 0 0 rgba(0,0,0,0.2);border-radius:.5em;}div.code-toolbar > .toolbar a:hover,div.code-toolbar > .toolbar a:focus,div.code-toolbar > .toolbar button:hover,div.code-toolbar > .toolbar button:focus,div.code-toolbar > .toolbar span:hover,div.code-toolbar > .toolbar span:focus{color:inherit;text-decoration:none;}span.inline-color{display:inline-block;height:1.333ch;width:1.333ch;margin:0 .333ch;box-sizing:border-box;border:1px solid white;outline:1px solid black;}pre.diff-highlight > code .token.deleted:not(.prefix),pre > code.diff-highlight .token.deleted:not(.prefix){background-color:rgba(255,0,0,.1);color:inherit;display:block;}pre.diff-highlight > code .token.inserted:not(.prefix),pre > code.diff-highlight .token.inserted:not(.prefix){background-color:rgba(0,255,128,.1);color:inherit;display:block;}
    }
</#if>

    .content table thead td,
    .content table thead th {
        color: var(--color);
    }

    #toc ul li a,
    #toc ul li ul li a,
    #toc ul li ul li ul li a {
        color: var(--color);
    }

    #toc .active {
        color: var(--toc-dot-active-color) !important;
    }

    #toc > ul li::before {
        background-color: var(--toc-dot-color)
    }

    #toc a:hover {
        color: var(--toc-dot-active-color) !important;
        background-color: var(--toc-dot-active-bg-color);
    }

    #toc > ul:before {
        background-color: var(--toc-vertical-line-color);
    }


    .navbar-burger {
        color: var(--color);
    }

    .navbar-menu {
        background-color: var(--cardbgcolor);
    }

    body > .navbar {
        background-color: var(--navbarbgcolor);
        -webkit-backdrop-filter: blur(20px);
        backdrop-filter: blur(20px);
    }

    .content table thead td,
    .content table thead th {
        border: 1px solid var(--background);

    }

    .content table td,
    .content table th {
        border: 1px solid var(--background);
    }

    table {
        border: 2px solid var(--btn-hover-color);
    }

    thead, tbody, tr, th {
        border: 1px solid var(--background);
    }

    footer .title {
        color: var(--color);
    }

    footer .button {
        background-color: var(--cardbgcolor) !important;
    }

    .has-text-black-ter {
       color: var(--color) !important;
    }

    .blog-pin-disc {
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 4;
        overflow: hidden;
    }

    .blog-pin-title {
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        overflow: hidden;
    }
    @media (max-width: 1023px) {
       .blog-pin-disc {
            display: none;
        } 
    }

    @media (max-width: 768px) {
       .blog-pin-disc {
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 2;
            overflow: hidden;
        } 
    }


</style>