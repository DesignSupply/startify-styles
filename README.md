# Startify-styles

Startify-stylesはウェブサイトを作成するために必要なリソースがひととおり揃った静的コーディングの開発環境で使うデザインアセットです。デザインから静的コーディングまでを行う過程で使用するデザインテンプレートデータや、そのテンプレートの対応したSassファイル（.scssおよび.sass形式））を使用することができ、DartSassのAPIを使ったコンパイルも可能で、効率よくデザインシステムを導入することができます。また、Sassファイルは下記の開発環境と組み合わせることで、PugやEJSなどのテンプレートエンジン、JavaScript（TypeScript）や各種フレームワークを併用したフロントエンド開発が可能となります。


- [Startify4](https://github.com/DesignSupply/startify4/)：Vue.js ＋ React ＋ Viteベースのコーディング環境
- [Startify3](https://github.com/DesignSupply/startify3/)：React ＋ webpackベースのコーディング環境
- [Startify2](https://github.com/DesignSupply/startify2/)：Vue.js ＋ webpackベースのコーディング環境
- [Startify-dev](https://github.com/DesignSupply/startify-dev/)：Docker ＋ Laravelのアプリケーション開発環境
- [Startify](https://github.com/DesignSupply/startify/)：Vue.js ＋ Gulpベースのコーディング環境（現在、更新停止中）



## Features

Startify-stylesで主にできることは以下になります。

* Figmaに対応したデザインガイドライン付きページデザインテンプレート
* Sass（SCSS記法・SASS記法）のコンパイル
* デザインテンプレートのフォーマットに合わせたSass・CSS変数およびmixinの使用
* ソースコードのマッピングファイルの生成
* CSSファイルのminify化



## Requirement

Dart SDK >=2.10.0 <3.0.0

Dart Sass >= 1.50.0



## Installation

### DartSDKのインストール（macOS）

#### 1. Homebrewのインストール
```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
#### 2. SDKのインストール
```bash
$ brew tap dart-lang/dart
```
#### 3. Dartパッケージ（Pub）のインストール
プロジェクトディレクトリにフォルダー内のファイル一式を入れて、pubspec.yamlがあるディレクトリまで移動し、必要なパッケージをインストールします。
```bash
$ dart pub get
```



## Usage

### 各種コマンド

#### 1. Sassコンパイル
```bash
$ dart compile.dart INPUT_FILE_PATH OUTPUT_FILE_PATH
```



## Note

* Sassファイルの変数はFigmaのテンプレートのデザインガイドに合わせています。
* Sassのファイルおよびディレクトリの構成はFLOCSSに基づいて設計しています。
* プロジェクト内で使用しているclass名はBEMの命名規則を緩やかに沿った設計になっています。
* Dartコマンドでのコンパイル処理はデフォルトで圧縮されたファイルが出力される設定になっています。
* コンパイル後のファイル名および出力先は、デフォルトでcssディレクトリ配下にmain.min.cssのファイル名で生成されます。



## Author

Ogawa Shinya

info@designsupply-web.com



## License

Startify-styles is under [MIT license](https://en.wikipedia.org/wiki/MIT_License).