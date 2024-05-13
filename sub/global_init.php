<?php
/**
 * 全局初始化过程
 *
 * @package hu60t
 * @version 0.1.0
 * @author 老虎会游泳 <hu60.cn@gmail.com>
 * @copyright 配置文件
 *
 * 该过程文件由路由服务(q.php)载入，用于在页面加载前进行全局初始化处理。
 * 你可以在该页面定义全局变量、常量等信息，它们将在所有页中可用，
 * 这可以避免每个页都要重复定义相同的东西，方便开发。
 * 该过程还可以用于用于验证用户是否有访问权限、过滤URL等。
 * 甚至，你还可以在这里通过操作 $PAGE 对象临时改变要加载的页面。
 *
 * 该过程的意义在于方便快捷DIY，
 * 所以，尽情使用吧！
 */

$USER = new USER;

// 初始化 JHTML 页面
if ($PAGE->bid === 'jhtml') {
    // 开启 jhtml
    JsonPage::jhtml(true);
}

if (!function_exists('array_column')) {
	function array_column($arr2, $column_key) {
		$data = [];
		foreach ($arr2 as $key => $value) {
			$data[] = $value[$column_key];
		}
		return $data;
	}
}
