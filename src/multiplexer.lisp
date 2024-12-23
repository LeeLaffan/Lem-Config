(in-package :lem/frame-multiplexer)

(lem:define-key lem:*global-keymap* "C-t" lem/frame-multiplexer:*keymap*)

(lem:define-key lem/frame-multiplexer:*keymap* "h" 'frame-multiplexer-prev)
(lem:define-key lem/frame-multiplexer:*keymap* "l" 'frame-multiplexer-next)

(lem:define-key lem/frame-multiplexer:*keymap* "n" 'frame-multiplexer-create-with-previous-buffer)
