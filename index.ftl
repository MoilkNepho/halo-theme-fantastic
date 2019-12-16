<#include "layout/layout.ftl">
<#include "layout/common/article.ftl">
<@layout title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}">
    <#list posts.content as post>
        <#if post.topPriority != 1>
        <@article post,'index','null',true />
        </#if>
    </#list>
    <#if posts.getTotalPages() gt 0>
        <div class="card card-transparent">
            <nav class="pagination is-centered" role="navigation" aria-label="pagination">
                <div class="pagination-previous<#if posts.number gt 0><#else > is-invisible is-hidden-mobile</#if>">
                    <#if posts.number == 1>
                        <a class="is-flex-grow has-text-black-ter" href="${context!}">上一页</a>
                    <#else>
                        <a class="is-flex-grow has-text-black-ter" href="${context!}/page/${posts.number}">上一页</a>
                    </#if>
                </div>
                <div class="pagination-next<#if posts.getTotalPages() gt posts.number+1><#else > is-invisible is-hidden-mobile</#if>">
                    <a class="is-flex-grow has-text-black-ter" href="${context!}/page/${posts.number+2}">下一页</a>
                </div>
                <ul class="pagination-list is-hidden-mobile">
                    <#if (rainbow?size> 0 && rainbow[0] >= 2)>
                        <a class="pagination-link" href="${context!}/page/1">1</a>
                        <#if (rainbow[0]> 2)>
                            <span class="pagination-space">...</span>
                        </#if>
                    </#if>
                    <#list rainbow as r>
                        <#if r == posts.number+1>
                            <li><a class="pagination-link is-current" href="${context!}/page/${posts.number+1}">${posts.number+1}</a></li>
                        <#else>
                            <li><a class="pagination-link" href="${context!}/page/${r}">${r}</a></li>
                        </#if>
                    </#list>
                    <#if (rainbow?size> 0 && rainbow[rainbow?size-1] < posts.totalPages)>
                        <#if (rainbow[rainbow?size-1] < posts.totalPages-1)>
                            <span class="pagination-space">...</span>
                        </#if>
                        <a class="pagination-link" href="${context!}/page/${posts.totalPages}">${posts.totalPages}</a>
                    </#if>
                </ul>
            </nav>
        </div>
    </#if>
</@layout>
