{include file="tpl:comm.head" title="聊天模式"}
与 <a href="user.info.{$chatUser.uid}.{$bid}">{$chatUser.name}</a> 聊天
<hr />
{form action="msg.index.send.{$chatUser->uid}.{$bid}" method="post"}
    {input type="textarea" name="content" id="content" }<br />
    {input type="submit" name="go" value="回复"}
    <!--input type="button" id="add_files" value="添加附件" onclick="addFiles()"/-->
    <!--{include file="tpl:comm.addfiles"}-->
{/form}
<hr />
{if $chatCount > 0}
<div class="chat_list">
{foreach $chatList as $k}
    <div class="chat_box">
    {$ok=$uinfo->uid($k.byuid)}
    {if $k.isread==0}[{if $k.touid == $USER->uid}新{else}对方未读{/if}] {/if}来自：<a href="user.info.{$k.byuid}.{$bid}">{$uinfo.name}</a><br />
    时间：{date("Y-m-d H:i:s",$k.ctime)}<br />
    {$ubb->display($k.content, true)}
    </div>
    <hr />
{/foreach}
</div>
<div class="pager">
    {if $p < $maxP}<a href="?p={$p+1}">下页</a>{/if}
    {if $p > 1}<a href="?p={$p-1}">上页</a>{/if}
    {$p}/{$maxP}页
</div>
{else}
你还没有和 <a href="user.info.{$chatUser.uid}.{$bid}">{$chatUser.name}</a> 说过话
{/if}
<hr />
<a href="msg.index.inbox.all.{$bid}">收件箱</a> |
<a href="msg.index.outbox.all.{$bid}">发件箱</a> |
<a href="msg.index.@.{$bid}">@信息</a>
{include file="tpl:comm.foot"}
