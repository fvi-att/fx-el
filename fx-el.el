;;
;;fx in emacs
;;
;;
;;created by fvi@
;;created at 20150630
;;

(defvar fx-update-interval-time 5000 "interval time for update fx_emacs")

;;デフォルトの画面表示用変数
(setq fx-display-bid 0)
(setq fx-display-ask 0)


'(
(switch-to-buffer "fx-mode" t)
(window-edges (selected-window))
)

;;gaitameonline.comさんからjsonデータを取得する。
(require 'json)
(require 'cl)

(defun fx ()
  ;;M-x fx　で実行できるようにする
  (interactive)
  (let ((url "http://www.gaitameonline.com/rateaj/getrate")
	(type (read-from-minibuffer "What is currency type? (Default:" "USDJPY"))
	(fx-buffer (get-buffer-create "*fx*"))
       )
    
    (set-buffer fx-buffer)
    (display-buffer (current-buffer))

    (while t 
      (set-buffer (url-retrieve-synchronously url))
      (goto-char (point-min))
      (delete-region (point-min) (search-forward "\n\n" nil t))

      (let ((set_currency (cl-remove-if-not (lambda (x) (string-equal type (cdr(assoc 'currencyPairCode x)))) (cdr (car (json-read-from-string (buffer-string))))))) 

      (message "%s@(%s)" (format "%s -> %s,%s" (cdr(assoc 'currencyPairCode (aref set_currency 0))) (cdr(assoc 'bid (aref set_currency 0))) (cdr(assoc 'ask (aref set_currency 0)))) (format-time-string "%H:%M:%S"))

      ;;価格更新
      (setq fx-display-bid (cdr (assoc 'bid (aref set_currency 0))))
      (setq fx-display-ask (cdr (assoc 'bid (aref set_currency 0))))


      )
      ;;サーバへの負荷防止のため一定の期間waitする
      (sleep-for 0 fx-update-interval-time)
     )
   )
)









