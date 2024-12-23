;; Font
(when (typep (lem:implementation) 'lem-sdl2/sdl2:sdl2)
  (let ((font-regular #P"/home/l/fonts/IosevkaNerdFont/IosevkaNerdFont-Regular.ttf")
        (font-bold #P"/home/l/fonts/IosevkaNerdFont/IosevkaNerdFont-Bold.ttf")
        (font-size 18))
    (lem-sdl2/display:change-font (lem-sdl2/display:current-display)
                                  (lem-sdl2/font:make-font-config
                                   :latin-normal-file font-regular
                                   :latin-bold-file font-bold
                                   :size font-size))))

;; Messages Buffer
(define-command show-messages-buffer () ()
  (select-buffer "*Messages*"))
(define-key lem-vi-mode:*normal-keymap* "C-c m" 'show-messages-buffer)

;; Dashboard
(lem:define-key lem-vi-mode:*normal-keymap* "C-c d" 'lem-dashboard:open-dashboard)
