(in-package lem-core/commands/project)

(defun file-root-p (pathname)
  "Overwites the base function to check if one of the root-files are in the dir"
  (when (and (probe-file pathname) (directory-pathname-p pathname))
    (let ((files (list-file-names pathname)))
      (when (intersection *root-files* files :test #'equalp) t))))

(define-key *global-keymap* "C-x p l" 'project-switch)

(define-command project-save-prompt () ()
  "Remember the current project for later sessions."
  (when (remember-project (prompt-for-directory "Save Project: " :directory (buffer-directory)))
    (message "Project saved.")))
