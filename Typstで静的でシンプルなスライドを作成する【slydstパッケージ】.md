# はじめに
この記事では、Typstのパッケージであるslydstを使って、静的でシンプルなスライドを作成する方法について解説します。
このパッケージでは、Typstの見出しを利用してスライドのセクションやスライドを作成します。
公式のREADMEによると、アニメーション等はサポートされていないようですが、シンプルなスライドを作成するのには十分な機能が揃っているようです。

# 環境
2024年9月18日時点の最新版を使用しています。
- Typst: 0.11.1
- slydst:0.1.1

# 導入
パッケージの導入は、Typst Universeのページに存在する他のパッケージと同様に行えます。

```typst
#import "@preview/slydst:0.1.1": *
```

# 使い方
## タイトル等の設定
まず、Typstファイルを作成し次のようなプリアンブルを記述します。

```typst
#import "@preview/slydst:0.1.1": *

#show: slides.with(
  title: "ここにタイトルを挿入", // 必須
  subtitle: none,
  date: none,
  authors: (),
  layout: "medium",
  ratio: 4/3,
  title-color: none,
)

ここにコンテンツを挿入
```

このプリアンブルでは以下の項目を設定できます。
- title: スライドのタイトル
- subtitle: スライドのサブタイトル
- date: スライドの日付
- authors: スライドの著者
- layout: スライドのレイアウト
- ratio: スライドの幅と高さの比率
- title-color: タイトルの色

タイトルは必須ですが、他の項目は省略可能です。
それでは個人的に設定してみたものを以下に示します。

```typst
#set text(lang: "ja") // 言語を日本語に設定
#set text(font: ("Yu Gothic")) // フォントを設定

#set heading( numbering: "1.1.")

#import "@preview/slydst:0.1.1": *　// slydstの導入


#show: slides.with(
  title: "Typstでスライドを作成する ", // 必須
  subtitle: "slydstで手軽に静的スライドを作ろう",
  date: [#datetime.today().display()],
  authors: ("ごま"),
  layout: "medium",
  ratio: 4/3,
  title-color: none,
)

```

![スライドのタイトル](images/slide_title.png)

大体の設定の解説は必要なさそうですが、いくつか補足しておくと、`date`の項目は`#datetime.today().display()`で現在の日付を取得し、表示しています。詳しくは[datetime](https://typst.app/docs/reference/foundations/datetime/)を参照してください。また、`ratio`はスライドの幅と高さの比率を指定します。形式は`幅/高さ`なので、今回は`幅:4, 高さ:3`の比率に設定しています。`title-color`はタイトルの色を指定しますが、デフォルトの色が気に入っているので今回は指定していません。

## スライドの作成
次に、スライドの作成を行います。ここではTypstの見出しを利用してスライドのセクションやスライドを作成します。以下のように記述します。

```typst
= レベル1の見出し→セクション

== レベル2の見出し→スライド
```

![セクションの作成](images/section.png)
![スライドの作成](images/slide.png)

このように、Typstの見出しを利用してスライドのセクションやスライドを作成することができます。スライドの内容は、見出しの下に記述します。

## 画像の挿入
画像を挿入する場合は、通常のTypstの画像挿入と同様に記述します。

```typst
==　図を挿入する
これは花です。
#figure(image("flower.jpg", width: 60%))
```

![画像の挿入](images/image.png)

## コードの挿入
raw形式でコードを挿入することもできます。

```typst
    == コードを挿入する
    ```java
    class Hello {
        public static void main(String[] args) {
            System.out.println("Hello, World!");
        }
    }
    ```
```

![コードの挿入](images/code.png)

# 他のパッケージとの併用
slydstを他のパッケージと併用してみます。これが可能であれば、LT会や講義等のための資料作成にかなり役立ちそうです。

## codelst








