<#include "include/macros.ftl">
<@compress single_line=true>
<@header title="${config.siteName?if_exists} | eleven的博客"
    keywords="${config.homeKeywords?if_exists}"
    description="${config.homeDesc?if_exists}"
    canonical="/${url?if_exists}">
</@header>

<div class="container custome-container">
    <@prompt></@prompt>
    <nav class="breadcrumb">
        <div class="notify"><i class="fa fa-bullhorn fa-fw"></i></div>
        <div id="scrolldiv">
            <div class="scrolltext">
                <ul class="list-unstyled" id="notice-box">
                    <li class="scrolltext-title">
                        <a href="javascript:void(0)" rel="bookmark">本站正式启用新域名:<a href="http://www.tocj1314.com" target="_blank"><strong>http://www.tocj1314.com</strong></a></a>
                    </li>
                    <li class="scrolltext-title">
                        <a href="javascript:void(0)" rel="bookmark">我一路向北</a>
                    </li>
                    <li class="scrolltext-title">
                        <a href="javascript:void(0)" rel="bookmark">离开有你的季节</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="row">
        <div class="col-sm-8 blog-main">
            <@articleTag method="recommendedList" pageSize="8">
                <#if recommendedList?exists && (recommendedList?size > 0)>
                <div class="blog-body expansion" style="padding: 0;">
                    <div id="myCarousel" class="carousel slide" style="height:300px;">
                        <ol class="carousel-indicators">
                            <#list recommendedList as item>
                            <li data-target="#myCarousel" data-slide-to="${item_index}" class="${(item_index == 0)?string('active','')}"></li>
                            </#list>
                        </ol>
                        <div class="carousel-inner">
                            <#list recommendedList as item>
                            <div class="item ${(item_index == 0)?string('active','')}">
                                <a href="${config.siteUrl}/article/${item.id?c}">
                                    <img src="${item.coverImage}" alt="${item.title}" title="${item.title}">
                                </a>
                                <div class="zyd-carousel-caption">${item.title}</div>
                            </div>
                            </#list>
                        </div>
                        <a class="left carousel-control hide" href="#myCarousel" role="button" data-slide="prev">
                            <span class="fa fa-angle-left fa-fw fa-3x" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control hide" href="#myCarousel" role="button" data-slide="next">
                            <span class="fa fa-angle-right fa-fw fa-3x" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                </#if>
            </@articleTag>
            <#if page.list?exists && (page.list?size > 0)>
                <#list page.list as item>
                    <article class="fade-in">
                        <figure class="thumbnail">
                            <a href="${config.siteUrl}/article/${item.id?c}">
                                <#if item.coverImage?exists && (item.coverImage?length > 7)>
                                    <img width="150" height="150" data-original="${item.coverImage}" class="img-responsive lazy-img" alt="${item.title?if_exists}">
                                <#else>
                                    <img width="150" height="150" data-original="${config.staticWebSite}/img/user/11.jpg" class="img-responsive lazy-img" alt="${item.title?if_exists}">
                                </#if>
                            </a>
                            <span class="cat"><a href="${config.siteUrl}/type/${item.typeId?c}">${item.type.name}</a></span>
                        </figure>
                        <header class="entry-header">
                            <h2 class="entry-title">
                                <a href="${config.siteUrl}/article/${item.id?c}" rel="bookmark" title="${item.title}" data-toggle="tooltip" data-placement="bottom">${item.title}</a>
                            </h2>
                        </header>
                        <div class="entry-content">
                            <div class="archive-content">
                                ${item.description?if_exists}
                            </div>
                            <span class="title-l"></span>
                            <span class="entry-meta">
                                <span class="date" title="文章发表日期" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-clock-o fa-fw"></i>${item.createTime?string('yyyy-MM-dd')}</span>
                                <span class="views" title="文章阅读次数" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-eye fa-fw"></i>浏览(${item.lookCount!(0)})</span>
                                <span class="comment" title="文章评论次数" data-toggle="tooltip" data-placement="bottom">
                                    <a href="${config.siteUrl}/article/${item.id?c}#comment-box" rel="external nofollow">
                                        <i class="fa fa-comments-o fa-fw"></i>评论(${item.commentCount!(0)})
                                    </a>
                                </span>
                            </span>
                            <div class="clear"></div>
                            <span class="entry-more">
                                <a href="${config.siteUrl}/article/${item.id?c}" rel="bookmark" title="点击查看文章详情" data-toggle="tooltip" data-placement="bottom">阅读全文</a>
                            </span>
                        </div>
                    </article>
                </#list>
                <@pageBar></@pageBar>
            <#else >
                <article class="fade-in" style="height: auto">
                    <div class="rows">
                        <div class="col-md-10 col-sm-12">
                            <div class="h3 text-center">亲，啥也没找到啊~~<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/15/j_thumb.gif" alt="[囧]"></div>
                            <div class="h5 text-center">换个姿势，再来一次~~</div>
                        </div>
                        <div class="col-md-2 col-sm-12">
                            <img src="${config.staticWebSite}/img/wrong.gif" class="center-block" alt="惩罚我" style="width: 110px;margin-top: -10px;">
                        </div>
                    </div>
                    <form action="/" method="post" class="form-horizontal searchForm">
                        <input type="hidden" name="pageNumber" value="1">
                        <div class="input-group">
                            <input type="text" class="form-control br-none" name="keywords" placeholder="换个姿势，再来一次~~">
                            <span class="input-group-btn">
                                <button class="btn btn-default br-none nav-search-btn pointer" type="submit"><i class="fa fa-search"></i> 搜索</button>
                            </span>
                        </div>
                        <div class="clear" style="margin-bottom: 10px"></div>
                        <ul class="list-unstyled list-inline search-hot">
                            <li><strong style="position: relative;top: 2px;color: #999999;">热门搜索：</strong></li>
                            <li><a class="pointer" rel="external nofollow"><span class="label label-default">情感</span></a></li>
                            <li><a class="pointer" rel="external nofollow"><span class="label label-primary">生活</span></a></li>
                            <li><a class="pointer" rel="external nofollow"><span class="label label-success">计划</span></a></li>
                            <li><a class="pointer" rel="external nofollow"><span class="label label-info">工作</span></a></li>
                            <li><a class="pointer" rel="external nofollow"><span class="label label-warning">其他</span></a></li>
                        </ul>
                    </form>
                </article>
            </#if>
        </div>
        <#include "layout/sidebar.ftl"/>
    </div>
</div>

<@footer></@footer>
</@compress>