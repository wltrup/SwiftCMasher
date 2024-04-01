# SwiftCMasher
![](https://img.shields.io/badge/platforms-iOS%2013%20%7C%20tvOS%2013%20%7C%20watchOS%206%20%7C%20macOS%2010.15%20%7C%20visionOS%201.0-red)
[![Xcode](https://img.shields.io/badge/Xcode-15.3-blueviolet.svg)](https://developer.apple.com/xcode)
[![Swift](https://img.shields.io/badge/Swift-5.9-orange.svg)](https://swift.org)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/wltrup/SwiftCMasher)
![GitHub](https://img.shields.io/github/license/wltrup/SwiftCMasher)

## Overview

**SwiftCMasher** is an SPM library for any platform that supports Swift, providing a port of the excellent [CMasher color maps](https://cmasher.readthedocs.io/index.html). Those are color maps particularly suitable for conveying scientific data in an accurate and visually pleasing fashion.

Please refer to Ellert van der Velden's [overview](https://cmasher.readthedocs.io/user/usage.html#colormap-application-overview) of the various color maps for details on how to choose a particular color map for a particular application.

If you use this Swift port or Ellert's library (which is in Python), please follow his [Community Guidelines](https://cmasher.readthedocs.io/community_guidelines.html#community-guidelines).

## The Swift API

This library provides only the color maps, not the full set of functions defined in the original Python implementation. If you feel that any of those functions should be ported as well, please open an [issue](https://github.com/wltrup/SwiftCMasher/issues) and I'll consider it.

There are currently 53 supported color maps, described by the enumeration:

```swift
public enum ColorMap {
   case amber
   case amethyst
   case apple
   case arctic
   case bubblegum
   case chroma
   case copper
   case cosmic
   case dusk
   case eclipse
   case ember
   case emerald
   case emergency
   case fall
   case flamingo
   case freeze
   case fusion
   case gem
   case ghostlight
   case gothic
   case guppy
   case holly
   case horizon
   case iceburn
   case infinity
   case jungle
   case lavender
   case lilac
   case neon
   case neutral
   case nuclear
   case ocean
   case pepper
   case pride
   case prinsenvlag
   case rainforest
   case redshift
   case sapphire
   case savanna
   case seasons
   case seaweed
   case sepia
   case sunburst
   case swamp
   case torch
   case toxic
   case tree
   case tropical
   case viola
   case voltage
   case waterlily
   case watermelon
   case wildfire
}
```

Given any color map, it's possible to access its colors in a variety of ways:

```swift
public func hexColors() -> [String]
public func intColors() -> [UInt8ColorComponents]
public func floatColors<T: BinaryFloatingPoint>() -> [FloatColorComponents<T>]
```

In the above, `UInt8ColorComponents` and `FloatColorComponents` are structs providing access to the color's **red**, **green**, and **blue** components, either as integer values in the range \[0, 255\] (`UInt8`s) or as floating-point values (of the type `T`) in the range \[0, 1\]:

```swift
public struct UInt8ColorComponents {
   public let red: UInt8
   public let green: UInt8
   public let blue: UInt8
}

public struct FloatColorComponents<Value: BinaryFloatingPoint> {
   public let red: Value
   public let green: Value
   public let blue: Value
}
```

Note that `FloatColorComponents` is generic on the type of the values it contains. Additionally, if your project happens to support `UIKit` or `SwiftUI`, you can access a color map's color using

```swift
public func uiColors(alpha: CGFloat = 1) -> [UIColor]
public func colors(opacity: Double = 1) -> [Color]
```

## Preview app

**SwiftCMasher**  also includes an Xcode project building a preview app that lets you scroll through all the color maps. Here are screen shots of what it looks like on an iPhone 15 Pro, in both dark and light modes.

| dark mode | light mode |
| --------- | ---------- |
|
|
|

## Installation

**SwiftCMasher** is provided only as an SPM package, because I have moved away from CocoaPods and Carthage, and because it can be easily installed directly from Xcode.

## License

**SwiftCMasher** is available under the BSD 3-Clause License. See the [LICENSE](./LICENSE) file for more info.
