# Presentations

[![Website](https://img.shields.io/website-up-down-green-red/http/speakerdeck.com.svg?label=speakerdeck)](https://speakerdeck.com/magrathealabs)

Our presentations using [reveal.js](https://github.com/hakimel/reveal.js).

## Presentations

* [O Guia do Mochileiro dos ChatBots](http://www.magrathealabs.com/decks/20170921-chatbots)
* [Carreiras em Computação](http://www.magrathealabs.com/decks/20171025-udesc-careers/)

You can also find them on [Speakerdeck](https://speakerdeck.com/magrathealabs).

## Development

We use [Yarn](https://yarnpkg.com) package manager to install the needed dependencies.

```sh
yarn install
yarn global add reveal-md
```

or with NPM:

```sh
npm install -g reveal-md
```

To run the slides in the live mode use option `--watch`:

```
reveal-md slides.md --watch --css theme/mlabs.css --highlight-theme hybrid
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

`presentations` is maintained by Magrathea Labs. The names and logos for Magrathea Labs are trademarks of Magrathea Labs.

Magrathea Labs is a team of specialists in Software Engineering, Distributed Systems, Artificial Intelligence and
Data Science. We love to solve challenging problems and build amazing things. Want to do something amazing with us?
We are available for [hire](mailto:contact@magrathealabs.com).
