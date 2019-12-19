# SRI Generator

A way to generate Sub-Resource Integrity hashes on the command-line*

\* As long as you have Ruby installed!

## Install

Install with:

```
gem install sri
```

## Usage

This gem comes with an executable called `generate-sri`. You can run it like this:

```
generate-sri -hash sha384 ~/path/to/a/file
```

Or like this:

```
cat ~/path/to/a/file | generate-sri -hash sha384
```

## Rationale

It is easier for me to remember "generate-sri" than it is to remember:

```
cat ~/path/to/a/file | openssl digst -sha384 -binary | base64
```
