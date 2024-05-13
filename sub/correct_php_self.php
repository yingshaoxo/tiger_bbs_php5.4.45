<?php
/**
 * 修正$_SERVER['PHP_SELF']
 *
 * @package hu60t
 * @version 0.1.0
 * @author 老虎会游泳 <hu60.cn@gmail.com>
 * @copyright LGPLv3
 */

//检查并重设置$_SERVER[PHP_SELF]，该变量在IIS6中FastCGI模式下运行的php中被误加PATH_INFO
if ($_SERVER['PHP_SELF'] === $_SERVER['SCRIPT_NAME'] . $_SERVER['PATH_INFO']) $_SERVER['PHP_SELF'] = $_SERVER['SCRIPT_NAME'];
