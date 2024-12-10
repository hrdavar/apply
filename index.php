<?php

require_once('config/config.php');
require_once('lib/func.php');
require_once('lib/header.php');

if (!isset($_GET['page'])) {
    redirect('home');
}
$page_info = page_info(page_url());
$condition = "link='" . page_url() . "'";
$result = select_all_sql('content', $condition);

if (!empty($result)) {
    $post_info = $result[0];
} else {
    $post_info = null;
}

if ($page_info && page_url() == $page_info['link']) {
    require_once('lib/' . $page_info['file'].'.php');
} elseif ($post_info) {
    require_once('lib/article.php');
} else {
    redirect('lib/404.php');
}

//require_once('lib/footer.php');
?>

