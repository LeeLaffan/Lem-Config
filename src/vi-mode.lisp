(lem-vi-mode:vi-mode)

(lem:define-command save-all-buffers () () (lem:save-some-buffers t))
(lem:define-key lem-vi-mode:*normal-keymap* "Space Space" 'save-all-buffers)

(lem:define-key lem-vi-mode:*normal-keymap* "g e" 'lem:find-file)
(lem:define-key lem-vi-mode:*normal-keymap* "g d" 'lem/language-mode:find-definitions)

(lem:define-key lem-vi-mode:*normal-keymap* "C-b" 'lem:previous-buffer)
(lem:define-key lem-vi-mode:*normal-keymap* "C-B" 'lem:next-buffer)
