# differenceBetweenTimes

[![Build Status](https://travis-ci.org/viniciusalmeida/differenceBetweenTimes.svg?branch=master)](https://travis-ci.org/viniciusalmeida/differenceBetweenTimes)

A node package to show the difference between two or more formated times.

This library was created to parser times served by http://ergast.com/mrd.

### Install

```bash
npm install differencebetweentimes
```

### Usage

```coffeescript
differenceParser = require('differencebetweentimes').differenceBetweenTimes

differenceParser ['1:34.494', '1:32.812', '1:35.606']
# returns ['1:34.494', '-01.682', '+01.112']
```
