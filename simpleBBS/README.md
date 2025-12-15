Simple Bbs Readme
simpleBBS

Servlet / JSP / Tomcat を用いた 学習用の簡易掲示板アプリケーション です。

本プロジェクトは、Java Web アプリケーション開発の基礎（MVC、リクエスト処理、JSP 表示、バリデーション、セッション・クッキー）を理解することを目的として作成されています。

1. 概要

simpleBBS は以下を学習目的としたサンプルアプリです。

Servlet と JSP の役割分担

forward による画面遷移

入力バリデーション

リクエストスコープの理解

セッション・クッキーの基本

CSS を用いた画面装飾

DB は使用せず、投稿データはメモリ上で管理します。

2. 開発環境
項目	内容
IDE	Eclipse 2024（日本語）
Java	Java 21
サーバ	Apache Tomcat 9
3. 起動方法

Eclipse に本プロジェクトをインポート

Tomcat 9 をサーバーとして設定

プロジェクトをサーバーに追加

サーバーを起動

ブラウザで以下にアクセス

http://localhost:8080/simpleBBS/
4. 画面一覧とURL
画面	URL	説明
トップ	/simpleBBS/	index.jsp
投稿一覧	/simpleBBS/list	投稿一覧表示
新規投稿	/simpleBBS/create	投稿フォーム

※ JSP ファイルは WEB-INF 配下にあり、直接アクセスできません。

5. プロジェクト構成
simpleBBS
 ├ css
 │   └ style.css
 ├ WEB-INF
 │   ├ pages
 │   │   ├ createPage.jsp
 │   │   ├ listPage.jsp
 │   │   └ completePage.jsp
 │   └ web.xml
 ├ src
 │   └ bbsServlet
 │       ├ CreateServlet.java
 │       ├ ListServlet.java
 │       ├ Post.java
 │       └ PostRepository.java
 └ index.jsp
6. 主な機能
投稿一覧表示

投稿データを一覧表示

投稿が存在しない場合はメッセージを表示

新規投稿

名前・コメントの入力

入力チェック（必須）

エラー時は入力内容を保持して再表示

正常時は完了画面へ遷移

7. バリデーション仕様
項目	内容
名前	未入力不可
コメント	未入力不可
8. セッション・クッキー

セッション

投稿者名を保持

クッキー

投稿者名を保存し、次回アクセス時に自動入力

9. 画面デザイン

共通 CSS（style.css）を使用

中央寄せレイアウト

ボタン・入力欄の共通デザイン

10. 学習ポイント

Servlet と JSP の責務分離

WEB-INF の役割

contextPath を使ったパス指定

JSP の構文エラー対処

404 / 500 エラーの切り分け

11. 今後の拡張案

データベース（JDBC）連携

投稿の編集・削除

投稿日時の追加

ログイン機能

フィルタによる入力チェック

12. 備考

本プロジェクトは 学習目的 のため、実運用を想定したセキュリティ対策や永続化処理は行っていません。

以上