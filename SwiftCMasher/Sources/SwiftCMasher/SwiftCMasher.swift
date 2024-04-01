import Foundation

///
/// Umbrella namespace for all supported color maps.
///
/// `ColorMap` supports 3, 4, or 5 ways to obtain a given color map.
///
/// These are always available:
///
///   • `public func hexColors() -> [String]`
///   • `public func intColors() -> [UInt8ColorComponents]`
///   • `public func floatColors<T: BinaryFloatingPoint>() -> [FloatColorComponents<T>]`
///
/// This is available if UIKit is available:
///
///   • `public func uiColors(alpha: CGFloat = 1) -> [UIColor]`
///
/// This is available if SwiftUI is available:
///
///   • `public func colors(opacity: Double = 1) -> [Color]`
///
/// See the `ColorMap` extension in *SwiftCMasherColorMap.swift*
/// for more detail.
///
public enum ColorMap: String, CaseIterable, Identifiable {

   public var name: String { rawValue }
   public var id: String { rawValue }

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

///
/// Return type for the `floatColors()` function.
/// See the `ColorMap` extension in *SwiftCMasherColorMap.swift*
/// for more detail.
///
public struct FloatColorComponents<Value: BinaryFloatingPoint> {
   /// A floating-point value in the range [0, 1].
   public let red: Value
   /// A floating-point value in the range [0, 1].
   public let green: Value
   /// A floating-point value in the range [0, 1].
   public let blue: Value
}

///
/// Return type for the `intColors()` function.
/// See the `ColorMap` extension in *SwiftCMasherColorMap.swift*
/// for more detail.
///
public struct UInt8ColorComponents {
   /// An integer value in the range [0, 255].
   public let red: UInt8
   /// An integer value in the range [0, 255].
   public let green: UInt8
   /// An integer value in the range [0, 255].
   public let blue: UInt8
}
