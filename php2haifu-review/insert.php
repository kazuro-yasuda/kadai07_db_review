<?php

/**
 * 1. index.phpのフォームの部分がおかしいので、ここを書き換えて、
 * insert.phpにPOSTでデータが飛ぶようにしてください。
 * 2. insert.phpで値を受け取ってください。
 * 3. 受け取ったデータをバインド変数に与えてください。
 * 4. index.phpフォームに書き込み、送信を行ってみて、実際にPhpMyAdminを確認してみてください！
 */

//1. POSTデータ取得
$book_title = $_POST['book_title'];
$book_url = $_POST['book_url'];
$coment = $_POST['coment'];

//2. DB接続します
try {
    //ID:'root', Password: 'root'
    $pdo = new PDO('mysql:dbname=gs_db_review;charset=utf8;host=localhost', 'root', 'root');
} catch (PDOException $e) {
    exit('DBConnectError:' . $e->getMessage());
}


//３．データ登録SQL作成

// 1. SQL文を用意
$stmt = $pdo->prepare('INSERT INTO
                        gs_an_table_review(
                            id,
                            book_title,
                            book_url,
                            coment,
                            date
                        ) VALUES (
                            NULL,
                            :book_title,
                            :book_url,
                            :coment,
                            sysdate()
                        );');

//  2. バインド変数を用意
// Integer 数値の場合 PDO::PARAM_INT
// String文字列の場合 PDO::PARAM_STR

$stmt->bindValue(':book_title', $book_title, PDO::PARAM_STR);
$stmt->bindValue(':book_url', $book_url, PDO::PARAM_STR);
$stmt->bindValue(':coment', $coment, PDO::PARAM_STR);

//  3. 実行
$status = $stmt->execute();
//４．データ登録処理後
if ($status === false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    exit('ErrorMessage:' . $error[2]);
} else {
    //５．index.phpへリダイレクト
  header('Location: index.php');

}
