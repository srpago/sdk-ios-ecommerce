# SrPago-Ecommerce

[![CI Status](https://img.shields.io/travis/fbustosr@srpago.com/SrPago-Ecommerce.svg?style=flat)](https://travis-ci.org/fbustosr@srpago.com/SrPago-Ecommerce)
[![Version](https://img.shields.io/cocoapods/v/SrPago-Ecommerce.svg?style=flat)](https://cocoapods.org/pods/SrPago-Ecommerce)
[![License](https://img.shields.io/cocoapods/l/SrPago-Ecommerce.svg?style=flat)](https://cocoapods.org/pods/SrPago-Ecommerce)
[![Platform](https://img.shields.io/cocoapods/p/SrPago-Ecommerce.svg?style=flat)](https://cocoapods.org/pods/SrPago-Ecommerce)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

SrPago-Ecommerce is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SrPago-Ecommerce'
```

Then open a terminal and install or update your podfile to download this repo

```ruby
pod install
```

After this, import SrPago.framework in your file

```ruby
import SrPago
```

Set a new instance of SrPago class and setup this initialization with your current key

```
let srPago: SrPago = SrPago.sharedInstance() as? SrPago
srPago.publishableKey = "pk_pPieieldkierllllE"
srPago.liveMode = false
```

## Author

fbustosr@srpago.com, SrPago

## License

SrPago-Ecommerce is available under the MIT license. See the LICENSE file for more info.
