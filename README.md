# Abstract Code Coverage Format

An open, extensive, [JSON Schema](http://json-schema.org)-specified format of software source code coverage information.

## Features

* JSON as the underlying format
* JSON Schema that fully specifies and describes the format
* Programming language and tool-agnostic format
* Support for branch coverage information
* No need of access to source code to render a nice-looking coverage report

## The Schema

The schema is in [abstract-coverage-schema.json](abstract-coverage-schema.json). This is the main artifact of this project.
It is validated agaist the [metaschema](http://json-schema.org/specification.html#meta-schemas) on [Travis](https://travis-ci.org) on every push.

Examples are in [examples](examples) directory. They are validated against this schema.

## Implementations

* _Add your own implementation here via a pull request_

## Related projects

In the order of frequency of encounters in my research:

### SonarQube Generic Test Coverage format

Pros:
* XML Schema
  * The only coverage format I know of that has an openly available schema. Wow!

Cons:
* XML (what year is it?)
* Overly verbose element names (`linesToCover`)
* Poor branch coverage info

### Cobertura

Pros:

* Seems to be widely supported

Cons:

* Doesn't have an easily discoverable schema or even an example

### Coveralls

Pros:

* Widely supported

Cons:

* Doesn't have an easily discoverable schema or even an example

### Cover for Bitbucket Server

Pros:

* Compact

Cons:

* Too compact

### CodeClimate

Pros:

* Seems to be widely supported

Cons:

* Doesn't have an easily discoverable schema or even an example

## TODO

* Help OpenCov support this format
  * Write an opencov client gem to replace coveralls (which is just not cool to piggyback on)
* Write a renderer to a standalone nice-looking project coverage report
* Port [Makefile](Makefile) to Windows
