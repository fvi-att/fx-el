# fx-el
>「**FXぅ**！　**FX**がしたいよう！」
>
>「でも仕事中だからやすやすとみれないよぉ・・・」
>
>「*emacs*上でfx情報が見られれば、作業してるふりして、**fx**ができるね！やったね！」


そんなfx中毒なemacsユーザがいるかもしれない・・・・・（俺だけ？

というわけで即席で作って見ました。

emacsでちらっとリアルタイム為替レートを見るプラグイン 

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

##今後の予定

* マルチスレッド対応
* 価格変動時に背景をチカチカさせる
* 別のウィンドウで表示する

##作成に用いたもの
[gaitameonline](http://www.gaitameonline.com/rateaj/getrate "外為オンライン")
さんが提供するjsonAPIを用いました。有難うございました



