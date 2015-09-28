# ReactiveCocoaApply

[![Version](https://img.shields.io/cocoapods/v/ReactiveCocoaApply.svg?style=flat)](http://cocoapods.org/pods/ReactiveCocoaApply)
[![License](https://img.shields.io/cocoapods/l/ReactiveCocoaApply.svg?style=flat)](http://cocoapods.org/pods/ReactiveCocoaApply)
[![Platform](https://img.shields.io/cocoapods/p/ReactiveCocoaApply.svg?style=flat)](http://cocoapods.org/pods/ReactiveCocoaApply)

Functions for applying operators to signals and singal producers. Code is based on original implementation of `|>` from RAC3.

## Usage

```
func myOperator(producer: SignalProducer<Void, Error>) -> SignalProducer<Void, Error> {
  return producer.on(started: { 
    print("started")
  })
}

SignalProducer<Void, NoError>
  .never
  .apply(myOperator)
  .start()
```

## Installation

ReactiveCocoaApply is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ReactiveCocoaApply"
```

## License

ReactiveCocoaApply is available under the MIT license. See the LICENSE file for more info.
