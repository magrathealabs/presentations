# Presentations

[![Website](https://img.shields.io/website-up-down-green-red/http/speakerdeck.com.svg?label=speakerdeck)](https://speakerdeck.com/magrathealabs)

Our presentations using [reveal.js](https://github.com/hakimel/reveal.js).

## Development

We use [Yarn](https://yarnpkg.com) package manager to install the needed dependencies.

```sh
yarn install
yarn global add reveal-md
```

To run the slides in the live reload mode use option `--watch`:

```
reveal-md slides.md --watch --css theme/mlabs.css
```

Update themes:

```sh
scss --watch theme/source/mlabs.scss:theme/mlabs.css
```

### PDF Print

```
reveal-md slides.md --print slides.pdf
```

## License

The presentations in this repository are available under the terms of the [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

## About Magrathea Labs

`marvin-bot` is maintained by Magrathea Labs. The names and logos for Magrathea Labs are trademarks of Magrathea Labs.

Magrathea Labs is a team of specialists in Software Engineering, Distributed Systems, Artificial Intelligence and
Data Science. We love to solve challenging problems and build amazing things. Want to do something amazing with us?
We are available for [hire](mailto:contact@magrathealabs.com).

