(message "sys config loaded")

;; -- sets up cygwin
(let* ((cygwin-root "c:/cygwin")
  (cygwin-bin (concat cygwin-root "/bin")))
(when (and (eq 'windows-nt system-type)
  (file-readable-p cygwin-root))
(setq exec-path (cons cygwin-bin exec-path))
(setenv "PATH" (concat cygwin-bin ";" (getenv "PATH")))
(setq shell-file-name "bash")
(setenv "SHELL" shell-file-name) 
(setq explicit-shell-file-name shell-file-name) 
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)))
