{include file="tpl:comm.head" title="表单测试"}
{div class="title"}百度搜索{/div}
{div class="content"}
{form action="http://wap.baidu.com/s" method="get"}
{input type="text" name="word" value=$smarty.server.HTTP_HOST}
{input type="submit" value="百度一下"}
{/form}
{/div}
{div class="title"}随意的表单{/div}
{div class="content"}
{form enctype="multipart/form-data"}
{input type="textarea" value="{implode("\n",$smarty.server|code)}" name="npb"}<br/>
{input type="checkbox" name="fts" value="a&b$c"}
{input type="checkbox" name="dt" value="a&b$c" checked=true}
{select name="eba" value=[1,2,3,4,5] selected=3}
{select name="ado" value=[2,3,4] output=["aa","bb","cc"] selected=[3,4] multiple=true}
{select name="af" option=["a"=>3,"b"=>4,"c"=>5] selected=4}
{select}
{/form}
{form enctype="application/x-www-form-application"}
{input type="submit" value="go"}
{/form}
{/div}
{div class="title"}hu60t报时:{/div}
{include file="tpl:comm.foot"}