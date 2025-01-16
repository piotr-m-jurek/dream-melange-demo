(lang dune 3.16)
(using melange 0.1)

(name ocaml_todo)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Author Name <author@example.com>")

(maintainers "Maintainer Name <maintainer@example.com>")

; (license LICENSE)

(documentation https://url/to/documentation)

(package
 (name ocaml_todo)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends
   (ocaml (>= 4.14))
   dream
   html_of_jsx
   )
 (tags
  ("add topics" "to describe" your project)))


(dialect
 (name mlx)
 (implementation
  (merlin_reader mlx)
  (extension mlx)
  (preprocess
   (run mlx-pp %{input-file}))))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
