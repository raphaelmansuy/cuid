# cuid

[![CI Status](https://img.shields.io/travis/raphaelmansuy/cuid.svg?style=flat)](https://travis-ci.org/raphaelmansuy/cuid)
[![Version](https://img.shields.io/cocoapods/v/cuid.svg?style=flat)](https://cocoapods.org/pods/cuid)
[![License](https://img.shields.io/cocoapods/l/cuid.svg?style=flat)](https://cocoapods.org/pods/cuid)
[![Platform](https://img.shields.io/cocoapods/p/cuid.svg?style=flat)](https://cocoapods.org/pods/cuid)


Collision-resistant ids optimized for horizontal scaling and binary search lookup performance.

This is port in Swift 4.1 language of the javascript project [https://github.com/ericelliott/cuid](https://github.com/ericelliott/cuid)

 returns a short random string with some collision-busting measures. Safe to use as HTML element ID's, and unique server-side record lookups.

`let id = Cuid.gencuid()`

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

None

## Installation

cuid is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'cuid'
```

## Author

Raphael MANSUY, raphael.mansuy@gmail.com

## License

cuid is available under the MIT license. See the LICENSE file for more info.
