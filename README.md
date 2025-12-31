# pict
project initialization C-lang tool

C equivalent of what `cargo new` and `cargo init` is for Rust.

## Philosophy
My primary design goal for `pict` is that it can run without needing to install it. `pict` is written in POSIX `sh`, one of the most commonly available shells, with it being largely backwards-compatible with bash and zsh.

I took heavy inspiration from Cargo's `new` and `init` sub-commands. I continuously find `cargo new` and `cargo init` intuitive and useful :)

## License
`pict` is licensed under the MIT License.\
See the [LICENSE](./LICENSE) file for details.
