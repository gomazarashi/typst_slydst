#set text(lang: "ja") // 言語を日本語に設定
#set text(font: ("Yu Gothic")) // フォントを設定

#set heading(numbering: none)

#import "@preview/slydst:0.1.1": *


#show: slides.with(
  title: "Typstでスライドを作成する ", // 必須
  authors: ("ごま"),
  date: [#datetime.today().display()],
  subtitle: "slydstで手軽に静的スライドを作ろう",
  layout: "medium",
  ratio: 4 / 3,
  title-color: none,
)

