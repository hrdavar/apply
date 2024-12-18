<?php
const BASE_TITLE='mmmmmmmm';
function asset($file)
    {return trim(BASE_URL,'/ ') .'/' .trim($file,'/ ');}

function redirect($url)
    {
        header("Location:" .trim(BASE_URL,'/ ') .'/'. trim($url,'/ '));
        exit();
    }
function url($url)
    {
        return trim(BASE_URL,'/ ').'/'.trim($url,'/ ');
    }
function page_url()
{return urldecode(basename(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH)));}
function dd($var)

{echo "<pre style='direction: ltr'>";
var_dump($var);
exit();}
function icon()
{
return('<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">');
}
function msg($text){
    return '<div class="alert alert-success zindex" role="alert">'.$text.'</div>';
}
function err($text){
    return '<div class="alert alert-fill-danger" role="alert">'.$text.'</div>';
}
function get_user_ip() {
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        return $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        return $_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
        return $_SERVER['REMOTE_ADDR'];
    }
}
function page_info($link = null) {
    global $connection;
    $query = "SELECT * FROM page";
    if ($link !== null) {
        $query .= " WHERE link = :link";
        $result = $connection->prepare($query);
        $result->bindValue(':link', $link, PDO::PARAM_STR);
        $result->execute();
        $row = $result->fetch(PDO::FETCH_ASSOC);
        return $row;}
    }
function update_visitors($id = null, $table_name = null, $ip = null)
{
    global $connection;
    if ($id !== null && $table_name !== null) {
        $query = "UPDATE `$table_name` SET visitor = visitor + 1 WHERE id = ?";
        $stmt = $connection->prepare($query);
        $stmt->bindValue(1, $id);
        $stmt->execute();
    } elseif ($ip !== null)
    {
        $query = "SELECT * FROM `home` WHERE ip = ?";
        $stmt = $connection->prepare($query);
        $stmt->bindValue(1, $ip);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($row)
        {
            $query = "UPDATE `home` SET visitor = visitor + 1 WHERE ip = ?";
            $stmt = $connection->prepare($query);
            $stmt->bindValue(1, $ip);
            $stmt->execute();
        } else {
            $query = "INSERT INTO `home` (ip, visitor) VALUES (?, 1)";
            $stmt = $connection->prepare($query);
            $stmt->bindValue(1, $ip);
            $stmt->execute();
        }
    }
}
function count_sql_row($table_name){
    global $connection;
    //$sql='SELECT * FROM ';
    //$sql .=$sql2;
    $result = $connection->prepare("SELECT * FROM $table_name ");
    $result->execute();
    $count = $result->rowCount();
    return $count;}

function sum_visitor_content()
{   global $connection;
    $result = $connection->prepare("SELECT SUM(visitor) AS sum FROM content;");
    $result->execute();
    $row = $result->fetch(PDO::FETCH_ASSOC);
    return $row['sum'];}
function select_all_sql($table_name,$condition)
{   global $connection;
    if (empty($condition)){$condition=1;}
    $result = $connection->prepare("SELECT * FROM $table_name WHERE $condition");
    $result->execute();
    $row = $result->fetchAll(PDO:: FETCH_ASSOC);
    return $row;}
function sql_count($table_name)
{   global $connection;
    $result = $connection->prepare("SELECT * FROM $table_name");
    $result->execute();
    $count = $result->rowCount();
    return $count;}
function select_row_sql($table_name,$condition) {
    global $connection;
    if (empty($condition)){$condition=1;}
    $result = $connection->prepare("SELECT * FROM $table_name WHERE $condition");
        $result->execute();
        $row = $result->fetch(PDO::FETCH_ASSOC);
        return $row;}

function count_all_visitors() {
    global $connection;

    $query = "SELECT SUM(visitor) AS total_visitors FROM home";
    $stmt = $connection->prepare($query);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    return $result['total_visitors'];
}
function digit_format($price){
    $persian_digits = ['۰','۱','۲','۳','۴','۵','۶','۷','۸','۹'];
    $latin_digits = ['0','1','2','3','4','5','6','7','8','9'];

    // تبدیل اعداد فارسی به اعداد لاتین
    $price = str_replace($persian_digits, $latin_digits, $price);
    return $price;
}

$formatter = new IntlDateFormatter(
                "fa_IR@calendar=persian", 
                IntlDateFormatter::FULL, 
                    IntlDateFormatter::FULL, 
                'Asia/Tehran', 
                IntlDateFormatter::TRADITIONAL, 
                "yyyy-MMMM-dd");

// convert to number
function convert_to_number($string) {
    $persian = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
    $arabic = ['٩', '٨', '٧', '٦', '٥', '٤', '٣', '٢', '١','٠'];

    $num = range(0, 9);
    $convertedPersianNums = str_replace($persian, $num, $string);
    $englishNumbersOnly = str_replace($arabic, $num, $convertedPersianNums);

return $englishNumbersOnly;}

?>