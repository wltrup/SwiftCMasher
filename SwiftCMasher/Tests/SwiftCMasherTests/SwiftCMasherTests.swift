import XCTest
@testable import SwiftCMasher

#if canImport(SwiftUI)
import SwiftUI
#endif

#if canImport(UIKit)
import UIKit
#endif

//func toIntColor(hex: String) -> UInt8ColorComponents? {
//   guard hex.count == 7 && hex.hasPrefix("#") else { return nil }
//   let hexColor = String(hex.dropFirst())
//   let scanner = Scanner(string: hexColor)
//   var hexNumber: UInt64 = 0
//   if scanner.scanHexInt64(&hexNumber) {
//      let x = hexNumber << 40
//      let r = UInt8((x & 0xff0000) >> 16)
//      let g = UInt8((x & 0x00ff00) >> 8)
//      let b = UInt8((x & 0x0000ff))
//      return .init(red: r, green: g, blue: b)
//   }
//   return nil
//}

//func toFloatColor(comps: UInt8ColorComponents) -> FloatColorComponents<Double> {
//   let r = Double(comps.red) / 255.0
//   let g = Double(comps.green) / 255.0
//   let b = Double(comps.blue) / 255.0
//   return .init(red: r, green: g, blue: b)
//}

//func approxEqual(_ x: Double, _ y: Double) -> Bool {
//   let p = 1e12
//   return Int(p * x) == Int(p * y)
//}

final class SwiftCMasherTests: XCTestCase {

   func test_equal_lengths_for_all_function_return_values() {
      for colorMap in ColorMap.allCases {

         let floatColors: [FloatColorComponents<Double>] = colorMap.floatColors()
         let len = floatColors.count

         let intColors = colorMap.intColors()
         XCTAssert(intColors.count == len)

         let hexColors = colorMap.hexColors()
         XCTAssert(hexColors.count == len)

#if canImport(SwiftUI)
         let colors = colorMap.colors()
         XCTAssert(colors.count == len)
#endif

#if canImport(UIKit)
         let uiColors = colorMap.uiColors()
         XCTAssert(uiColors.count == len)
#endif

      }
   }

//   func test_equal_color_values_across_all_functions() {
//      for colorMap in ColorMap.allCases {
//
//         let floatColors: [FloatColorComponents<Double>] = colorMap.floatColors()
//         let intColors = colorMap.intColors()
//         let hexColors = colorMap.hexColors()
//
//         let triplets = zip(floatColors, zip(intColors, hexColors))
//         for triplet in triplets {
//            let floatColor = triplet.0
//            let intColor = toFloatColor(comps: triplet.1.0)
//            XCTAssert(approxEqual(intColor.red, floatColor.red))
//            XCTAssert(approxEqual(intColor.green, floatColor.green))
//            XCTAssert(approxEqual(intColor.blue, floatColor.blue))
//            let hexColor = toIntColor(hex: triplet.1.1)
//            XCTAssert(hexColor != nil)
//            let hexColorAsFloat = toFloatColor(comps: hexColor!)
//            XCTAssert(approxEqual(hexColorAsFloat.red, floatColor.red))
//            XCTAssert(approxEqual(hexColorAsFloat.green, floatColor.green))
//            XCTAssert(approxEqual(hexColorAsFloat.blue, floatColor.blue))
//         }
//
//#if canImport(SwiftUI)
//         let colors = colorMap.colors()
//         let pairs1 = zip(colors, floatColors)
//         for pair in pairs1 {
//            let color = pair.0
//            let floatColor = Color(red: pair.1.red, green: pair.1.green, blue: pair.1.blue)
//            XCTAssert(floatColor == color)
//         }
//#endif
//
//#if canImport(UIKit)
//         let uiColors = colorMap.uiColors()
//         let pairs2 = zip(uiColors, floatColors)
//         for pair in pairs2 {
//            let uiColor = pair.0
//            let floatColor = UIColor(red: pair.1.red, green: pair.1.green, blue: pair.1.blue, alpha: 1)
//            XCTAssert(floatColor == uiColor)
//         }
//#endif
//
//      }
//   }

}
