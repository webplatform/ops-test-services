# WebPlatform operations services test runner

**STATE: Sandbox, not ready at all!!**

Let’s automate tests on [webplatform.org](https://www.webplatform.org) services, what’s expected so we can ensure consistency during maintenance and refactoring.

Idea is that we declare à-la-TDD what’s exposed as a "run book" so it both documents what’s expected AND helps us ensure it remains so.

This repository leverages [ServerSpec](http://serverspec.org/) to describe configuration and tests if they are consistent.

If you have the [Requirements](#requirements), you can run in two commands;

    make build
    make run

Run within the container, note that its basically what Makefile does at `run` target but without asking `rake` to run;

    docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp renoirb-serverspec
    // ... in container, in the repository mounted as a volume, you can run rake


## TODO

1. [ ] yaml reader to describe HTTP requests parameters and expectations
1. [ ] Test in a way such that we can make requests with direct IP address and what Host header to use
1. [ ] Organize tests by domain names
1. [ ] Ensure tests covers both direct origin server AND Varnish/Fastly
1. [ ] Setup Travis CI?


## Requirements

- [Docker](https://www.docker.com/)
- [GNU Make](https://www.gnu.org/software/make/)


# Reference

- http://serverspec.org/
- http://blog.jasonantman.com/2015/02/rspec-matcher-for-hash-item-value/
- http://blog.jasonantman.com/2015/03/some-additional-serverspec-types/
- http://rspec.info/blog/2014/01/new-in-rspec-3-composable-matchers/

