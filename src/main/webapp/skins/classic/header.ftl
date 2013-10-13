<div class="nav">
    <div class="wrapper fn-clear">
        <h1 style="margin-top:4px"><a rel="nofollow" href="/">Symphony</a></h1>
        <form target="_blank" method="get" action="http://www.google.com/search">
            <input class="search" type="text" name="q" />
            <input class="fn-none" type="submit" name="btnG" value=""/>
            <input type="hidden" name="oe" value="UTF-8" />
            <input type="hidden" name="ie" value="UTF-8" />
            <input type="hidden" name="newwindow" value="0" />
            <input type="hidden" name="sitesearch" value="symphony.b3log.org" />
        </form>
        <span class="tags">
            <#list trendTags as trendTag>
            <a rel="tag" href="/tags/${trendTag.tagTitle?url('UTF-8')}">${trendTag.tagTitle}</a>
            </#list>
        </span>
        <div class="fn-right fn-clear user-nav">
            <#if isLoggedIn>
            <a href="/member/${userName}">${userName}</a>
            <a class="<#if unreadNotificationCount == 0>no-msg<#else>msg</#if>" href="/notifications/commented" title="${messageLabel}">${unreadNotificationCount}</a>
            <a href="/add-article">${addArticleLabel}</a>
            <a href="/settings">${settingsLabel}</a>
            <a href="${logoutURL}" title="${logoutLabel}" class="last">${logoutLabel}</a>
            <#else>
            <a href="javascript: Util.showLogin();" title="${loginLabel}">${loginLabel}</a>
            <a href="javascript:Util.goRegister()" class="last">${registerLabel}</a>
            <div class="form fn-none">
                <table cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="40">
                            <label for="nameOrEmail">${accountLabel}</label>
                        </td>
                        <td>
                            <input id="nameOrEmail" type="text"/>
                            <span style="top: 28px; left: 241px;"></span>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <label for="loginPassword">${passwordLabel}</label>
                        </td>
                        <td>
                            <input type="password" id="loginPassword" />
                            <span style="top: 83px; left: 241px;"></span>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3" align="right">
                            <span id="loginTip"></span>
                            <button class="red" onclick="Util.login()">${loginLabel}</button>
                        </td>
                    </tr>
                </table>
            </div>
            </#if>
        </div>
    </div>
</div>