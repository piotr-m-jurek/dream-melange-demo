- dune build --root . @melange
- npx esbuild _build/default/lib/client/client/lib/client/client.js --bundle --outfile=static/client.js
- dune build
- dune exec ocaml_todo


