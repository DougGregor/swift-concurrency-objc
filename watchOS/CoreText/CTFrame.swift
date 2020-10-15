
class CTFrame : _CFObject {
}
@available(watchOS 2.0, *)
func CTFrameGetTypeID() -> CFTypeID
enum CTFrameProgression : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case topToBottom
  case rightToLeft
  case leftToRight
}
@available(watchOS 2.0, *)
let kCTFrameProgressionAttributeName: CFString
enum CTFramePathFillRule : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case evenOdd
  case windingNumber
}
@available(watchOS 2.0, *)
let kCTFramePathFillRuleAttributeName: CFString
@available(watchOS 2.0, *)
let kCTFramePathWidthAttributeName: CFString
@available(watchOS 2.0, *)
let kCTFrameClippingPathsAttributeName: CFString
@available(watchOS 2.0, *)
let kCTFramePathClippingPathAttributeName: CFString
@available(watchOS 2.0, *)
func CTFrameGetStringRange(_ frame: CTFrame) -> CFRange
@available(watchOS 2.0, *)
func CTFrameGetVisibleStringRange(_ frame: CTFrame) -> CFRange
@available(watchOS 2.0, *)
func CTFrameGetPath(_ frame: CTFrame) -> CGPath
@available(watchOS 2.0, *)
func CTFrameGetFrameAttributes(_ frame: CTFrame) -> CFDictionary?
@available(watchOS 2.0, *)
func CTFrameGetLines(_ frame: CTFrame) -> CFArray
@available(watchOS 2.0, *)
func CTFrameGetLineOrigins(_ frame: CTFrame, _ range: CFRange, _ origins: UnsafeMutablePointer<CGPoint>)
@available(watchOS 2.0, *)
func CTFrameDraw(_ frame: CTFrame, _ context: CGContext)
