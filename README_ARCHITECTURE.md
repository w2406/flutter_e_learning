# アーキテクチャ

## ディレクトリ構成

### common
contextディレクトリは、定数やルーティング、DI用のプロバイダーなどアプリ全体で利用される情報を管理するための場所です。

### domain(ドメイン層)
domainディレクトリは、アプリケーションのビジネスロジックやドメインモデル（業務的な意味を持つデータ構造や処理）を管理するための場所です。各コンテキスト毎に分けてドメインモデルを配置します。

### generated
generatedディレクトリは、自動生成用ファイルが配置される場所です。
直接修正をすることはありません。

### i18n
i18nディレクトリは、アプリの多言語対応（i18n: internationalization/国際化）のためのリソースファイルを管理する場所です。

### infrastructure(インフラストラクチャ層)
infrastructureディレクトリは、アプリケーションのインフラストラクチャ層を担うコードを管理する場所です。
DBや外部APIなどを定義します。repositoryの実装はここに配置します。

### presantation(プレゼンテーション層)
ディレクトリは、アプリケーションのプレゼンテーション層（UI層）を管理する場所です。
UI(View)とUIの状態(ViewMode)を分けることで関心の分離を行います。

### usecase(ユースケース層)
ディレクトリは、アプリケーションのユースケース層（アプリの具体的な操作や処理の流れ）を管理する場所です。
各コンテキスト毎にユースケースを定義します。


```
   lib
    ├── common
    │   ├── constants
    │   ├── provider
    │   └── router
    ├── domain
    │   ├── dify
    │   ├── history
    │   ├── progress
    │   ├── question
    │   └── コンテキスト
    ├── generated
    │   ├── common
    │   ├── domain
    │   ├── i18n
    │   ├── infrastructure
    │   └── presantation
    ├── i18n
    │   ├── en
    │   └── ja
    ├── infrastructure
    │   ├── data
    │   └── repository
    ├── presantation
    │   ├── history
    │   ├── history_list
    │   ├── home
    │   ├── question
    │   ├── section
    │   ├── section_list
    │   └── setting
    └── usecase
        ├── dify
        ├── history
        ├── progress
        ├── question
        └── setting

```

---

## 画面作成からデータベース保存までのフロー例

![フローサンプル](README_image/architecture/flow_sample.png)

このように、UI→ViewModel→UseCase→Repository→Infrastructure(DB)の順で処理が流れ、責務が分離されています。
