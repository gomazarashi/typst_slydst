#set text(lang: "ja") // 言語を日本語に設定
#set text(font: ("Yu Gothic")) // フォントを設定

#set heading(numbering: none)

#import "@preview/slydst:0.1.1": *
#import "@preview/codelst:2.0.1":*
#import "@preview/showybox:2.0.1":*

#show: slides.with(
  title: "Typstでスライドを作成する ", // 必須
  authors: ("ごま"),
  date: [#datetime.today().display()],
  subtitle: "slydstで手軽に静的スライドを作ろう",
  layout: "medium",
  ratio: 4 / 3,
  title-color: none,
)

== showyboxを使ってみる
#v(10%)
#showybox(title: "Green's Theorem", frame: (
  border-color: olive,
  title-color: olive.lighten(10%),
  body-color: olive.lighten(95%),
  footer-color: olive.lighten(80%),
), footer: "証明は省略する。")[
  閉曲線$C$で囲まれた領域$D$において、$C^1$級関数$P(x,y)$と$Q(x,y)$に対して、以下が成り立つ。
  $ integral.cont_C (P dif x + Q dif y ) = integral.double_D ((diff Q)/(diff x)-(diff P)/(diff y)) dif x dif y $
]