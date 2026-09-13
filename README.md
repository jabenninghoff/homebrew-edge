# homebrew-edge

Repository for [Homebrew](https://brew.sh/) formulae or Casks that are experimental, under development, or otherwise unsuitable for inclusion in [homebrew-core](https://github.com/Homebrew/homebrew-core) or [homebrew-cask](https://github.com/Homebrew/homebrew-cask).

## Requirements

* [Homebrew](https://github.com/Homebrew/brew)
* macOS

## Installation

Install using `brew tap` and `brew trust`:

```sh
brew tap jabenninghoff/edge
brew trust --tap jabenninghoff/edge
```

Install casks and formulae using `brew install`:

`brew install jabenninghoff/edge/<formula>`

Or `brew tap jabenninghoff/edge` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "jabenninghoff/edge"
brew "<formula>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
