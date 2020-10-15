
class CTFrame : _CFObject {
}
@available(tvOS 9.0, *)
func CTFrameGetTypeID() -> CFTypeID
enum CTFrameProgression : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case topToBottom
  case rightToLeft
  case leftToRight
}
@available(tvOS 9.0, *)
let kCTFrameProgressionAttributeName: CFString
enum CTFramePathFillRule : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case evenOdd
  case windingNumber
}
@available(tvOS 9.0, *)
let kCTFramePathFillRuleAttributeName: CFString
@available(tvOS 9.0, *)
let kCTFramePathWidthAttributeName: CFString
@available(tvOS 9.0, *)
let kCTFrameClippingPathsAttributeName: CFString
@available(tvOS 9.0, *)
let kCTFramePathClippingPathAttributeName: CFString
@available(tvOS 9.0, *)
func CTFrameGetStringRange(_ frame: CTFrame) -> CFRange
@available(tvOS 9.0, *)
func CTFrameGetVisibleStringRange(_ frame: CTFrame) -> CFRange
@available(tvOS 9.0, *)
func CTFrameGetPath(_ frame: CTFrame) -> CGPath
@available(tvOS 9.0, *)
func CTFrameGetFrameAttributes(_ frame: CTFrame) -> CFDictionary?
@available(tvOS 9.0, *)
func CTFrameGetLines(_ frame: CTFrame) -> CFArray
@available(tvOS 9.0, *)
func CTFrameGetLineOrigins(_ frame: CTFrame, _ range: CFRange, _ origins: UnsafeMutablePointer<CGPoint>)
@available(tvOS 9.0, *)
func CTFrameDraw(_ frame: CTFrame, _ context: CGContext)
