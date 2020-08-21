semgrep-go
==========

This repo holds patterns for finding odd Go code.

The rules engines currently supported:

* [semgrep](https://semgrep.dev/)
* [ruleguard](https://github.com/quasilyte/go-ruleguard)

I'll accept [comby](https://comby.dev) patterns if you can't get them to work with either semgrep or ruleguard.


* badexponentiation: check for `2^x` and `10^x` which look like exponentiation
* badnilguard: check for poorly formed nil guards
* errtodo: check for TODOs in error handling code
* hmac-bytes: check for using bytes.Equal() with HMACs
* hostport: check for using fmt.Sprintf() instead of net.JoinHostPort()
* mathbits: check for places you should use math/bits instead
* oddbitwise: check for odd bit-wise expressions
* oddcompare: check for odd comparisions
* oddcompound: check for odd compound += or -= expressions
* oddifsequence: check for an odd sequence of ifs
* oddmathbits: check for odd uses of math/bits
* parseint-downcast: check for places a parsed 64-bit int is downcase to 32-bits
* returnnil: check for odd nil-returns
* sprinterr: check for fmt.Sprint(err) instead of err.Error()

Ruleguard checks are in ruleguard.rules.go.
* unconvert: check for unnecessary convertions
* timeeq: check for using == and 1= with time.Time values
* wrongerr: check for potentially checking the wrong error value
* errnoterror: check for variables called `err` which are not the error type
* ifbodythenbody: check for if statements with identical if and else bodies
* subtractnoteq: check for x-y==0 instead of x==y
* selfassign: check for variable self-assignments
* oddnestedif: check for odd patterns of nested-ifs.
* oddbitwise: check for odd bitwise expressions
* ifreturn: check for off if/return sequences
* oddifsequence: check for if sequences
* nestedifsequence: check for odd nested if sequences
* identicalassignments:  check for `x = y ; y = x` pairs.
* oddcompoundop: check fo rodd compound operations
* constswitch: check for switch statements with expressions
* oddcomparisions: check for odd comparisions
* oddmathbits: check for odd uses of math/bits
* floateq: check for exact comparisions of floating point values
* badexponent: check for `2^x` and `10^x` , which look like exponentiation
* floatloop: check for using floats as loop counters
* urlredacted: check for logging urls without calling url.Redacted()
* sprinterr: check for calling fmt.Sprint(err) instead of err.Error()
* largeloopcopy: check for large value copies in loops
_
