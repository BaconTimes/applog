# applog

[![CI Status](https://img.shields.io/travis/804258952@qq.com/applog.svg?style=flat)](https://travis-ci.org/804258952@qq.com/applog)
[![Version](https://img.shields.io/cocoapods/v/applog.svg?style=flat)](https://cocoapods.org/pods/applog)
[![License](https://img.shields.io/cocoapods/l/applog.svg?style=flat)](https://cocoapods.org/pods/applog)
[![Platform](https://img.shields.io/cocoapods/p/applog.svg?style=flat)](https://cocoapods.org/pods/applog)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

applog is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'applog'
```
allow apps to  request though http
```plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
    <key>NSExceptionDomains</key>
    <dict>
        <key>localhost</key>
        <dict>
            <key>NSExceptionAllowsInsecureHTTPLoads</key>
            <true/>
        </dict>
    </dict>
</dict>
</plist>
```

## Author

804258952@qq.com, ch3coohna@qq.com

## License

applog is available under the MIT license. See the LICENSE file for more info.
