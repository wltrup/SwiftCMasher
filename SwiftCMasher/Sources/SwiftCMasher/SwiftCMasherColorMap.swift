import Foundation

extension ColorMap {

   ///
   /// Returns the color map as an array of `String` values,
   /// each value corresponding to the hexadecimal representation
   /// of the given color.
   ///
   public func hexColors() -> [String] {
      switch self {
         case .amber:
            return Amber.hexColors()
         case .amethyst:
            return Amethyst.hexColors()
         case .apple:
            return Apple.hexColors()
         case .arctic:
            return Arctic.hexColors()
         case .bubblegum:
            return Bubblegum.hexColors()
         case .chroma:
            return Chroma.hexColors()
         case .copper:
            return Copper.hexColors()
         case .cosmic:
            return Cosmic.hexColors()
         case .dusk:
            return Dusk.hexColors()
         case .eclipse:
            return Eclipse.hexColors()
         case .ember:
            return Ember.hexColors()
         case .emerald:
            return Emerald.hexColors()
         case .emergency:
            return Emergency.hexColors()
         case .fall:
            return Fall.hexColors()
         case .flamingo:
            return Flamingo.hexColors()
         case .freeze:
            return Freeze.hexColors()
         case .fusion:
            return Fusion.hexColors()
         case .gem:
            return Gem.hexColors()
         case .ghostlight:
            return Ghostlight.hexColors()
         case .gothic:
            return Gothic.hexColors()
         case .guppy:
            return Guppy.hexColors()
         case .holly:
            return Holly.hexColors()
         case .horizon:
            return Horizon.hexColors()
         case .iceburn:
            return Iceburn.hexColors()
         case .infinity:
            return Infinity.hexColors()
         case .jungle:
            return Jungle.hexColors()
         case .lavender:
            return Lavender.hexColors()
         case .lilac:
            return Lilac.hexColors()
         case .neon:
            return Neon.hexColors()
         case .neutral:
            return Neutral.hexColors()
         case .nuclear:
            return Nuclear.hexColors()
         case .ocean:
            return Ocean.hexColors()
         case .pepper:
            return Pepper.hexColors()
         case .pride:
            return Pride.hexColors()
         case .prinsenvlag:
            return Prinsenvlag.hexColors()
         case .rainforest:
            return Rainforest.hexColors()
         case .redshift:
            return Redshift.hexColors()
         case .sapphire:
            return Sapphire.hexColors()
         case .savanna:
            return Savanna.hexColors()
         case .seasons:
            return Seasons.hexColors()
         case .seaweed:
            return Seaweed.hexColors()
         case .sepia:
            return Sepia.hexColors()
         case .sunburst:
            return Sunburst.hexColors()
         case .swamp:
            return Swamp.hexColors()
         case .torch:
            return Torch.hexColors()
         case .toxic:
            return Toxic.hexColors()
         case .tree:
            return Tree.hexColors()
         case .tropical:
            return Tropical.hexColors()
         case .viola:
            return Viola.hexColors()
         case .voltage:
            return Voltage.hexColors()
         case .waterlily:
            return Waterlily.hexColors()
         case .watermelon:
            return Watermelon.hexColors()
         case .wildfire:
            return Wildfire.hexColors()
      }
   }

   ///
   /// Returns the color map as an array of `UInt8ColorComponents`
   /// instances, each one packing (red, green, blue) integer values
   /// in the range [0, 255]. The values aren't `Int`s, despite the
   /// function name. Rather, they're `UInt8` values.
   ///
   public func intColors() -> [UInt8ColorComponents] {
      switch self {
         case .amber:
            return Amber.intColors()
         case .amethyst:
            return Amethyst.intColors()
         case .apple:
            return Apple.intColors()
         case .arctic:
            return Arctic.intColors()
         case .bubblegum:
            return Bubblegum.intColors()
         case .chroma:
            return Chroma.intColors()
         case .copper:
            return Copper.intColors()
         case .cosmic:
            return Cosmic.intColors()
         case .dusk:
            return Dusk.intColors()
         case .eclipse:
            return Eclipse.intColors()
         case .ember:
            return Ember.intColors()
         case .emerald:
            return Emerald.intColors()
         case .emergency:
            return Emergency.intColors()
         case .fall:
            return Fall.intColors()
         case .flamingo:
            return Flamingo.intColors()
         case .freeze:
            return Freeze.intColors()
         case .fusion:
            return Fusion.intColors()
         case .gem:
            return Gem.intColors()
         case .ghostlight:
            return Ghostlight.intColors()
         case .gothic:
            return Gothic.intColors()
         case .guppy:
            return Guppy.intColors()
         case .holly:
            return Holly.intColors()
         case .horizon:
            return Horizon.intColors()
         case .iceburn:
            return Iceburn.intColors()
         case .infinity:
            return Infinity.intColors()
         case .jungle:
            return Jungle.intColors()
         case .lavender:
            return Lavender.intColors()
         case .lilac:
            return Lilac.intColors()
         case .neon:
            return Neon.intColors()
         case .neutral:
            return Neutral.intColors()
         case .nuclear:
            return Nuclear.intColors()
         case .ocean:
            return Ocean.intColors()
         case .pepper:
            return Pepper.intColors()
         case .pride:
            return Pride.intColors()
         case .prinsenvlag:
            return Prinsenvlag.intColors()
         case .rainforest:
            return Rainforest.intColors()
         case .redshift:
            return Redshift.intColors()
         case .sapphire:
            return Sapphire.intColors()
         case .savanna:
            return Savanna.intColors()
         case .seasons:
            return Seasons.intColors()
         case .seaweed:
            return Seaweed.intColors()
         case .sepia:
            return Sepia.intColors()
         case .sunburst:
            return Sunburst.intColors()
         case .swamp:
            return Swamp.intColors()
         case .torch:
            return Torch.intColors()
         case .toxic:
            return Toxic.intColors()
         case .tree:
            return Tree.intColors()
         case .tropical:
            return Tropical.intColors()
         case .viola:
            return Viola.intColors()
         case .voltage:
            return Voltage.intColors()
         case .waterlily:
            return Waterlily.intColors()
         case .watermelon:
            return Watermelon.intColors()
         case .wildfire:
            return Wildfire.intColors()
      }
   }

   ///
   /// Returns the color map as an array of `FloatColorComponents` instances,
   /// each one packing (red, green, blue) floating-point values in the
   /// range [0, 1]. The values aren't necessarily `Float`s, despite the names
   /// of the function and of the return type.
   ///
   public func floatColors<T: BinaryFloatingPoint>() -> [FloatColorComponents<T>] {
      switch self {
         case .amber:
            return Amber.floatColors()
         case .amethyst:
            return Amethyst.floatColors()
         case .apple:
            return Apple.floatColors()
         case .arctic:
            return Arctic.floatColors()
         case .bubblegum:
            return Bubblegum.floatColors()
         case .chroma:
            return Chroma.floatColors()
         case .copper:
            return Copper.floatColors()
         case .cosmic:
            return Cosmic.floatColors()
         case .dusk:
            return Dusk.floatColors()
         case .eclipse:
            return Eclipse.floatColors()
         case .ember:
            return Ember.floatColors()
         case .emerald:
            return Emerald.floatColors()
         case .emergency:
            return Emergency.floatColors()
         case .fall:
            return Fall.floatColors()
         case .flamingo:
            return Flamingo.floatColors()
         case .freeze:
            return Freeze.floatColors()
         case .fusion:
            return Fusion.floatColors()
         case .gem:
            return Gem.floatColors()
         case .ghostlight:
            return Ghostlight.floatColors()
         case .gothic:
            return Gothic.floatColors()
         case .guppy:
            return Guppy.floatColors()
         case .holly:
            return Holly.floatColors()
         case .horizon:
            return Horizon.floatColors()
         case .iceburn:
            return Iceburn.floatColors()
         case .infinity:
            return Infinity.floatColors()
         case .jungle:
            return Jungle.floatColors()
         case .lavender:
            return Lavender.floatColors()
         case .lilac:
            return Lilac.floatColors()
         case .neon:
            return Neon.floatColors()
         case .neutral:
            return Neutral.floatColors()
         case .nuclear:
            return Nuclear.floatColors()
         case .ocean:
            return Ocean.floatColors()
         case .pepper:
            return Pepper.floatColors()
         case .pride:
            return Pride.floatColors()
         case .prinsenvlag:
            return Prinsenvlag.floatColors()
         case .rainforest:
            return Rainforest.floatColors()
         case .redshift:
            return Redshift.floatColors()
         case .sapphire:
            return Sapphire.floatColors()
         case .savanna:
            return Savanna.floatColors()
         case .seasons:
            return Seasons.floatColors()
         case .seaweed:
            return Seaweed.floatColors()
         case .sepia:
            return Sepia.floatColors()
         case .sunburst:
            return Sunburst.floatColors()
         case .swamp:
            return Swamp.floatColors()
         case .torch:
            return Torch.floatColors()
         case .toxic:
            return Toxic.floatColors()
         case .tree:
            return Tree.floatColors()
         case .tropical:
            return Tropical.floatColors()
         case .viola:
            return Viola.floatColors()
         case .voltage:
            return Voltage.floatColors()
         case .waterlily:
            return Waterlily.floatColors()
         case .watermelon:
            return Watermelon.floatColors()
         case .wildfire:
            return Wildfire.floatColors()
      }
   }

}

#if canImport(SwiftUI)
import SwiftUI
extension ColorMap {
   ///
   /// Returns the color map as an array of SwiftUI `Color` values.
   ///
   public func colors(opacity: Double = 1) -> [Color] {
      let comps: [FloatColorComponents<Double>] = floatColors()
      return comps.map { Color(red: $0.red, green: $0.green, blue: $0.blue, opacity: opacity) }
   }
}
#endif

#if canImport(UIKit)
import UIKit
extension ColorMap {
   ///
   /// Returns the color map as an array of UIKit `UIColor` values.
   ///
   public func uiColors(alpha: CGFloat = 1) -> [UIColor] {
      let comps: [FloatColorComponents<CGFloat>] = floatColors()
      return comps.map { UIColor(red: $0.red, green: $0.green, blue: $0.blue, alpha: alpha) }
   }
}
#endif
