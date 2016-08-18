;; Functions related to markdown editing (or blog writing)

(defun insert-yaml-frontmatter ()
  (interactive)
  (let ((title (read-string "Title: "))
        (categories (read-string "Categories: " "nyc essays"))
        (location (read-string "Location: " "Brooklyn, NY")))
    (insert (mapconcat 'identity
                       (list "---"
                         "layout: post"
                         (format "title: \"%s\"" title)
                         (format "date: %s" (format-time-string "%Y-%m-%d %T %z"))
                         (format "categories: %s" categories)
                         (format "location: %s" location)
                         "---") "\n"))))

;; Add a new entry to my little writing blog thingy
(defun new-cuaderno-entry ()
  (interactive)
  (let ((slug (read-string "Slug: "))
        (date (format-time-string "%Y-%m-%d"))
        (posts-dir "~/words/cuaderno/_posts"))
    (find-file (concat posts-dir "/" (format "%s-%s.markdown" date slug)))))
