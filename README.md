# SimpleBBS

## 概要

SimpleBBS は、**Servlet / JSP の基礎学習**を目的として作成した、
シンプルな掲示板アプリケーションです。

Tomcat 上で動作し、投稿の一覧表示・新規投稿・入力チェック（バリデーション）など、
Webアプリケーションの基本的な流れを一通り確認できます。

---

## 使用技術

* Java 21
* Apache Tomcat 9
* Servlet / JSP
* Eclipse 2024（日本語版）
* HTML / CSS

---

## プロジェクト構成

```
simpleBBS
├─ src
│  ├─ bbsServlet
│  │  ├─ CreateServlet.java   // 投稿フォーム表示・投稿処理
│  │  └─ ListServlet.java     // 投稿一覧表示
│  └─ post
│     ├─ Post.java            // 投稿データ（Entity）
│     └─ PostRepository.java  // 投稿データ管理
│
├─ WebContent
│  ├─ index.jsp               // トップページ
│  ├─ css
│  │  └─ style.css            // 共通スタイル
│  └─ WEB-INF
│     ├─ pages
│     │  ├─ listPage.jsp      // 投稿一覧画面
│     │  ├─ createPage.jsp    // 投稿フォーム画面
│     │  └─ completePage.jsp  // 投稿完了画面
│     └─ web.xml
```

---

## 機能一覧

* 投稿一覧表示
* 新規投稿
* 入力バリデーション

  * 名前未入力チェック
  * コメント未入力チェック
* 入力エラー時の再表示（入力内容保持）

---

## 画面遷移

1. トップページ（index.jsp）
2. 投稿一覧画面（/list）
3. 投稿フォーム画面（/create）
4. 投稿完了画面

※ JSP はすべて `WEB-INF` 配下に配置し、直接アクセスできない構成としています。

---

## URL 一覧（ローカル実行時）

```
http://localhost:8080/simpleBBS/
http://localhost:8080/simpleBBS/list
http://localhost:8080/simpleBBS/create
```

---

## 設計方針（学習目的）

* Servlet：処理・制御を担当（Controller）
* JSP：画面表示のみを担当（View）
* Repository：データ管理を一元化（Model）
* MVC を意識したシンプルな構成

---

## 注意点

* 本アプリは学習用のため、データはメモリ上で管理しています
* サーバー再起動で投稿データは消えます

---

## 今後の拡張予定

* セッション・Cookie の活用
* データベース連携
* 投稿削除・編集機能

---

## 作成者

学習用サンプル（Servlet / JSP 基礎）
