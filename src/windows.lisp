(let ((output (uiop:run-program (concatenate 'string python-exe " " "/home/l/code/python/winman.py Lem 2") :output :string)))
  (lem:message "Captured: ~a~%" output))
