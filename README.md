# FFLabel

An interactive UILabel, can detect URLs, @username, #topic# automatically.

## Screenshots

<img src="https://github.com/liufan321/FFLabel/blob/master/screenshots/screenshots_1.png?raw=true" alt="FFLabel" title="FFLabel">

## Requirements

* iOS 8.0+
* Xcode 7.0 beta
* Swift 2.0

## Installation

### CocoaPods

CocoaPods 0.38 adds supports for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate FFLabel into your Xcode project using CocoaPods, specify it in your `Podfile`:

```
platform :ios, '8.0'
use_frameworks!

pod 'FFLabel'
```

Then, run the following command:

```bash
$ pod install
```

You should open the {Project}.xcworkspace instead of the {Project}.xcodeproj after you installed anything from CocoaPods.

For more information about how to use CocoaPods, I suggest [this tutorial](http://www.raywenderlich.com/64546/introduction-to-cocoapods-2).

## Usage

* import framework

```swift
import FFLabel
```

* set text

```swift
label.text = "#FFLabel#This is a @FFLabel Demo, access http://github.com/liufan321/fflabel can get the demo project. Follow @liufan2000 to get more information."
```

* conform protocol

```swift
class ViewController: UIViewController, FFLabelDelegate
```

* implement protocal function

```swift
func labelDidSelectedLinkText(label: FFLabel, text: String) {
    print(text)
}
```

# License

FFLabel is released under the MIT license. See LICENSE for details.
