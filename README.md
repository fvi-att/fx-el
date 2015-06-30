# fx-el
>「**FXぅ**！　**FX**がしたいよう！」
>
>「でも仕事中だからやすやすとみれないよぉ・・・」
>
>「*emacs*上でfx情報が見られれば、作業してるふりして、**fx**ができるね！やったね！」


と言うわけで作って見ました。

##インストール##
cd ~/.emacs.d/

git clone git@github.com:fvi-att/fx-el.git

@init.el

(load "~/.emacs.d/fx-el.d/fx-el.el")

##使用方法##
M-x fx

使用する通貨組み合わせを選択

---

##確認できる通貨組み合わせ一覧##

* USDJPY(default)
* GBPNZD
* GBPAUD
* AUDNZD
* EURUSD
* USDCAD
* GBPUSD
* EURCHF
* AUDUSD
* EURJPY
* EURNZD
* AUDCHF

##作成に用いたもの
[gaitameonline](http://www.gaitameonline.com/rateaj/getrate "外為オンライン")
さんが提供するjsonAPIを用いました。有難うございました



