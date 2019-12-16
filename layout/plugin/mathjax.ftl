<#if (is_post?? || is_sheet??) && settings.mathjax_enable!false>
    <script>
        var mathElems = document.getElementsByClassName("math");
        var elems = [];
        for (const i in mathElems) {
            if (mathElems.hasOwnProperty(i)) elems.push(mathElems[i]);
        }

        elems.forEach(elem => {
            katex.render(elem.textContent, elem, { throwOnError: false, displayMode: elem.nodeName !== 'SPAN', });
        });
    </script>
</#if>