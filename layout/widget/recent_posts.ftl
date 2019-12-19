<div class="card widget">
    <div class="card-content">
        <h3 class="menu-label">
            最新文章
        </h3>
        <@postTag method="latest" top="5">
            <#list posts as post>
                <article class="media">
                        <a href="${context!}/archives/${post.url!}" class="media-left">
                            <p class="image is-64x64">
                            <#if post.thumbnail?? && post.thumbnail!=''>
                                <img class="thumbnail" src="${post.thumbnail!}" alt="${post.title!}">
                            <#else>
                                <img class="thumbnail" src="${static!}/source/images/thumbs/${randomMethod(0,15)}.svg"
                                         alt="${post.title!}">
                            </#if>
                            </p>
                        </a>
                    <div class="media-content">
                        <div class="content">
                            <div style="padding-top: 10px;">
                                <time class="has-text-grey is-size-7 is-uppercase" datetime="${post.createTime!}">${post.createTime?string["EEE MMM d"]}</time>
                            </div>
                            <a href="${context!}/archives/${post.url!}" class="title has-link-black-ter is-size-6 has-text-weight-normal">${post.title!}</a>
                        </div>
                    </div>
                </article>
            </#list>
        </@postTag>
    </div>
</div>
