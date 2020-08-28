
class CTFrame : _CFObject {
}
@available(macOS 10.5, *)
func CTFrameGetTypeID() -> CFTypeID
enum CTFrameProgression : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case topToBottom
  case rightToLeft
  case leftToRight
}
@available(macOS 10.5, *)
let kCTFrameProgressionAttributeName: CFString
enum CTFramePathFillRule : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case evenOdd
  case windingNumber
}
@available(macOS 10.7, *)
let kCTFramePathFillRuleAttributeName: CFString
@available(macOS 10.7, *)
let kCTFramePathWidthAttributeName: CFString
@available(macOS 10.7, *)
let kCTFrameClippingPathsAttributeName: CFString
@available(macOS 10.7, *)
let kCTFramePathClippingPathAttributeName: CFString
@available(macOS 10.5, *)
func CTFrameGetStringRange(_ frame: CTFrame) -> CFRange
@available(macOS 10.5, *)
func CTFrameGetVisibleStringRange(_ frame: CTFrame) -> CFRange
@available(macOS 10.5, *)
func CTFrameGetPath(_ frame: CTFrame) -> CGPath
@available(macOS 10.5, *)
func CTFrameGetFrameAttributes(_ frame: CTFrame) -> CFDictionary?
@available(macOS 10.5, *)
func CTFrameGetLines(_ frame: CTFrame) -> CFArray
@available(macOS 10.5, *)
func CTFrameGetLineOrigins(_ frame: CTFrame, _ range: CFRange, _ origins: UnsafeMutablePointer<CGPoint>)
@available(macOS 10.5, *)
func CTFrameDraw(_ frame: CTFrame, _ context: CGContext)
