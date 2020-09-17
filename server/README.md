
This is a sample semgrep rule server for serving individual rules and packs.

To run:

```sh
$ ./server -listen=:8080 -d=/path/to/semgrep/yml/files -packs=packs.yml
```

The `packs.yml` file contains rule packs.

```yaml
packs:
    expr:
        - bad-exponentiation
        - use-math-bits
        - odd-bits-leadingzeros
        - odd-bitwise
        - odd-compound-expression
```

The rule names must be the `id`s of the rules, *not* the filenames.

To serve and run a rule pack:

```sh
$ semgrep --config=http://localhost:8080/p/expr
```

To serve and run an individual rule:

```sh
$ semgrep --config=http://localhost:8080/r/bad-exponentiation
```
