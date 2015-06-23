;;; itunes.el --- Controling itunes from emacs

;; Copyright © 2015 Rustem Muslimov
;;
;; Author:     Rustem Muslimov <r.muslimov@gmail.com>
;; Version:    0.1.0
;; Keywords:   itunes
;; Package-Requires:

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Controlling itunes from emacs

;; add to your emacs's init.el
;; (require 'itunes.el)
;;
;; Example of binding keys globally:
;;   (global-set-key (kbd "C-c i n") 'itunes-next)
;;   (global-set-key (kbd "C-c i p") 'itunes-prev)

;;; Code:

(defvar itunes-prefix "osascript -e 'tell application \"iTunes\"")

(defun itunes-track-command (action)
  (if (> 0 (call-process-shell-command
       (format "%s to %s track'" itunes-prefix action)))
      (message "Calling to Itunes failed")))

(defun itunes-next (&optional number)
  (interactive "p")
  (dotimes (_ (or number 1))
    (itunes-track-command "next")))

(defun itunes-prev (&optional number)
  (interactive "p")
  (dotimes (_ (or number 1))
    (itunes-track-command "previous")))

(provide 'itunes)
