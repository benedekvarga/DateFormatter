# DateFormatter

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Support](#support)
- [Contributing](#contributing)

## Installation

Download the project directory, add `DateFormatter.swift`  to your project. It's that simple, ready to use.

## Usage

Your `Date` instances now have new computed `String` properties:<br />

`full`: yyyy.MM.dd - hh:mm:ss<br />
`date`: yyyy.MM.dd<br />
`dateReversed`: dd.MM.yyyy<br />
`time`: hh:mm:ss<br />
`iso8601`: yyyy-MM-dd'T'hh:mm:ss<br />

You can call `custom(format: String)` on any of your `Date` instances which returns the `Date` in `String` with custom format. Use `yyyy` for year, `MM` for month, `dd` for day, `hh` for hour, `mm` for minute, `ss` for second and `SSSS` for milisecond.

## Support

Please [open an issue](https://github.com/benedekvarga/DateFormatter/issues/new) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/benedekvarga/DateFormatter/compare/).
