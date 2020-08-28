
class CTLine : _CFObject {
}
struct CTLineBoundsOptions : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var excludeTypographicLeading: CTLineBoundsOptions { get }
  static var excludeTypographicShifts: CTLineBoundsOptions { get }
  static var useHangingPunctuation: CTLineBoundsOptions { get }
  static var useGlyphPathBounds: CTLineBoundsOptions { get }
  static var useOpticalBounds: CTLineBoundsOptions { get }
  static var includeLanguageExtents: CTLineBoundsOptions { get }
}
enum CTLineTruncationType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case start
  case end
  case middle
}
@available(macOS 10.5, *)
func CTLineGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
func CTLineCreateWithAttributedString(_ attrString: CFAttributedString) -> CTLine
@available(macOS 10.5, *)
func CTLineCreateTruncatedLine(_ line: CTLine, _ width: Double, _ truncationType: CTLineTruncationType, _ truncationToken: CTLine?) -> CTLine?
@available(macOS 10.5, *)
func CTLineCreateJustifiedLine(_ line: CTLine, _ justificationFactor: CGFloat, _ justificationWidth: Double) -> CTLine?
@available(macOS 10.5, *)
func CTLineGetGlyphCount(_ line: CTLine) -> CFIndex
@available(macOS 10.5, *)
func CTLineGetGlyphRuns(_ line: CTLine) -> CFArray
@available(macOS 10.5, *)
func CTLineGetStringRange(_ line: CTLine) -> CFRange
@available(macOS 10.5, *)
func CTLineGetPenOffsetForFlush(_ line: CTLine, _ flushFactor: CGFloat, _ flushWidth: Double) -> Double
@available(macOS 10.5, *)
func CTLineDraw(_ line: CTLine, _ context: CGContext)
@available(macOS 10.5, *)
func CTLineGetTypographicBounds(_ line: CTLine, _ ascent: UnsafeMutablePointer<CGFloat>?, _ descent: UnsafeMutablePointer<CGFloat>?, _ leading: UnsafeMutablePointer<CGFloat>?) -> Double
@available(macOS 10.8, *)
func CTLineGetBoundsWithOptions(_ line: CTLine, _ options: CTLineBoundsOptions) -> CGRect
@available(macOS 10.5, *)
func CTLineGetTrailingWhitespaceWidth(_ line: CTLine) -> Double
@available(macOS 10.5, *)
func CTLineGetImageBounds(_ line: CTLine, _ context: CGContext?) -> CGRect
@available(macOS 10.5, *)
func CTLineGetStringIndexForPosition(_ line: CTLine, _ position: CGPoint) -> CFIndex
@available(macOS 10.5, *)
func CTLineGetOffsetForStringIndex(_ line: CTLine, _ charIndex: CFIndex, _ secondaryOffset: UnsafeMutablePointer<CGFloat>?) -> CGFloat
@available(macOS 10.11, *)
func CTLineEnumerateCaretOffsets(_ line: CTLine, _ block: @escaping (Double, CFIndex, Bool, UnsafeMutablePointer<Bool>) -> Void)
