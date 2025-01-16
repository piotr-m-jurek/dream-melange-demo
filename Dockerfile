FROM ocaml/opam:debian-ocaml-5.1

RUN sudo apt-get update && sudo apt-get install -y m4 pkg-config openssh-server neovim

COPY . /app/
WORKDIR /app
RUN sudo chown -R opam:opam /app


RUN eval $(opam env)
RUN opam install . -y --deps-only
RUN eval $(opam env)
RUN opam exec -- dune build


# Make the executable runnable
RUN sudo chmod +x /app/_build/default/bin/main.exe
# Run the executable
CMD [ "/app/_build/default/bin/main.exe" ]
