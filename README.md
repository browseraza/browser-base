<p align="center">
  <a href="https://github.com/browseraza"><img src="https://raw.githubusercontent.com/browseraza/.github/main/assets/logo_transparent.png" width="256"></a>
</p>

<div align="center">
  <h1>Browseraza Browser Base</h1>

[![Actions Status](https://github.com/browseraza/browser-base/workflows/Build/badge.svg)](https://github.com/browseraza/browser-base/actions)
[![Downloads](https://img.shields.io/github/downloads/browseraza/browser-base/total.svg?style=flat-square)](https://github.com/browseraza/browser-base/releases)

Browseraza Base is a modern web browser, built on top of modern web technologies such as `Electron` and `React`, that can also be used as a framework to create a custom web browser licensed under the GPLv3 license. Browseraza Base is a fork of [Wexond](https://github.com/wexond/browser-base) after the license controversy in October-November 2021.

</div>

# Table of Contents:
- [Motivation](#motivation)
- [Features](#features)
- [Screenshots](#screenshots)
- [Downloads](#downloads)
- [Contributing](#contributing)
- [Development](#development)
  - [Running](#running)
- [Documentation](#documentation)
- [License](#license)

# Motivation

Compiling and editing Chromium directly may be challenging and time consuming, so we decided to build Browseraza with modern web technologies. Hence, the development effort and time is greatly reduced. Either way Firefox is based on Web Components and Chrome implements new dialogs in WebUI (which essentially is hosted in WebContents).

# Features

- **Browseraza Shield** - Browse the web without any ads and don't let websites to track you. Thanks to the Browseraza Shield powered by [Cliqz](https://github.com/cliqz-oss/adblocker), websites can load even 8 times faster!
- **Chromium without Google services and low resources usage** - Since Browseraza uses Electron under the hood which is based on only several and the most important Chromium components, it's not bloated with redundant Google tracking services and others.
- **Fast and fluent UI** - The animations are really smooth and their timings are perfectly balanced.
- **Highly customizable new tab page** - Customize almost an every aspect of the new tab page!
- **Customizable browser UI** - Choose whether Browseraza should have compact or normal UI.
- **Tab groups** - Easily group tabs, so it's hard to get lost.
- **Scrollable tabs**

## Other basic features

- Downloads popup with currently downloaded items (download manager WebUI page is WIP)
- History manager
- Bookmarks bar & manager
- Settings
- Find in page
- Dark and light theme
- Omnibox with autocomplete algorithm similar to Chromium
- State of the art tab system

# Screenshots

![image](https://user-images.githubusercontent.com/11065386/81024159-d9388f80-8e72-11ea-85e7-6c30e3b66554.png)

UI normal variant:
![image](https://user-images.githubusercontent.com/11065386/81024186-f40b0400-8e72-11ea-976e-cd1ca1b43ad8.png)

UI compact variant:
![image](https://user-images.githubusercontent.com/11065386/81024222-13099600-8e73-11ea-9fc9-3c63a034403d.png)
![image](https://user-images.githubusercontent.com/11065386/81024252-2ddc0a80-8e73-11ea-9f2f-6c9a4a175c60.png)

# Downloads
- [Releases](https://github.com/browseraza/browser-base/releases)

# Contributing

If you have found any bugs or just want to see some new features in Browseraza, feel free to open an issue. Every suggestion is very valuable for us, as they help us improve the browsing experience. Also, please don't hesitate to open a pull request. This is really important to us and for the further development of this project.
All code contributed are released under GPLv3.

# Development

## Running

Before running Browseraza, please ensure you have **latest** [`Node.js`](https://nodejs.org/en/) and [`Yarn`](https://classic.yarnpkg.com/en/docs/install/#windows-stable) installed on your machine.

### Windows

Make sure you have build tools installed. You can install them by running this command as **administrator**:

```bash
$ npm i -g windows-build-tools
```

```bash
$ yarn # Install needed depedencies.
$ yarn rebuild # Rebuild native modules using Electron headers.
$ yarn dev # Run Browseraza in development mode
```

### More commands

```bash
$ yarn compile-win32 # Package Browseraza for Windows
$ yarn compile-linux # Package Browseraza for Linux
$ yarn compile-darwin # Package Browseraza for macOS
$ yarn lint # Runs linter
$ yarn lint-fix # Runs linter and automatically applies fixes
```

More commands can be found in [`package.json`](package.json).

# Documentation

Guides and the API reference are located in [`docs`](docs) directory.

# License

This project is licensed under [GPLv3](LICENSE). \
The original projects PATENTS file or other "non-commercial" things do not apply, as they violate the GPLv3 license. \
Read more: https://github.com/wexond/browser-base/issues/622
