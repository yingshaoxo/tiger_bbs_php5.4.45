{include file="tpl:comm.head" title="网页插件" no_webplug=true}
{config_load file="conf:site.info"}
<div class="tp">
	<a href="index.index.{$BID}">首页</a> &gt; 网页插件 | <a href="bbs.forum.140.html">论坛：网页插件专版</a>
</div>

<hr>

<div>
	<p>网页插件是一段插入{#SITE_SIMPLE_NAME#}网页首部&lt;body&gt;标签内的代码，可以在其中添加&lt;script&gt;、&lt;style&gt;等任何html标签来扩展虎绿林网页的功能。</p>
	<p style="color:red">警告：从他人处复制的代码可能含有恶意程序，造成版面错乱、帐户被盗、数据损坏，甚至计算机感染病毒等严重后果！</p>
	<p style="color:green">请仅从信任的人处复制代码，并且仔细检查，避免使用不知用途的代码。</p>
</div>

<hr>

<div>
    <form method="post" action="{$CID}.{$PID}.{$BID}">
		<p>插件代码：</p>
		<p>
			<textarea name="webplug" style="width:80%;height:100px;">{$webplug|code:false:true}</textarea>
		<p>
		<p style="color:green">保存前请先将本页存为书签，如果插件代码发生意外还能从书签进入本页删除。</p>
		<p>
			<input type="submit" name="go" value="保存" />
		</p>
	</form>
</div>

{include file="tpl:comm.foot"}