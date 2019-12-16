<#if (is_post?? || is_sheet??) && settings.mathjax_enable!false>
    <script src="https://res.moilk.top/js/katex/katex.min.js"></script>
    <script>
    document.addEventListener("DOMContentLoaded", function () {
        var mathElems = document.getElementsByClassName("katex");
        var elems = [];
        for (const i in mathElems) {
            if (mathElems.hasOwnProperty(i)) elems.push(mathElems[i]);
        }

        elems.forEach(elem => {
            katex.render(elem.textContent, elem, { throwOnError: false, displayMode: elem.nodeName !== 'SPAN', });
        });
    });
    </script>
</#if>