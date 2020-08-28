
class CTRun : _CFObject {
}
struct CTRunStatus : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var rightToLeft: CTRunStatus { get }
  static var nonMonotonic: CTRunStatus { get }
  static var hasNonIdentityMatrix: CTRunStatus { get }
}
@available(macOS 10.5, *)
func CTRunGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
func CTRunGetGlyphCount(_ run: CTRun) -> CFIndex
@available(macOS 10.5, *)
func CTRunGetAttributes(_ run: CTRun) -> CFDictionary
@available(macOS 10.5, *)
func CTRunGetStatus(_ run: CTRun) -> CTRunStatus
@available(macOS 10.5, *)
func CTRunGetGlyphsPtr(_ run: CTRun) -> UnsafePointer<CGGlyph>?
@available(macOS 10.5, *)
func CTRunGetGlyphs(_ run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGGlyph>)
@available(macOS 10.5, *)
func CTRunGetPositionsPtr(_ run: CTRun) -> UnsafePointer<CGPoint>?
@available(macOS 10.5, *)
func CTRunGetPositions(_ run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGPoint>)
@available(macOS 10.5, *)
func CTRunGetAdvancesPtr(_ run: CTRun) -> UnsafePointer<CGSize>?
@available(macOS 10.5, *)
func CTRunGetAdvances(_ run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGSize>)
@available(macOS 10.5, *)
func CTRunGetStringIndicesPtr(_ run: CTRun) -> UnsafePointer<CFIndex>?
@available(macOS 10.5, *)
func CTRunGetStringIndices(_ run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CFIndex>)
@available(macOS 10.5, *)
func CTRunGetStringRange(_ run: CTRun) -> CFRange
@available(macOS 10.5, *)
func CTRunGetTypographicBounds(_ run: CTRun, _ range: CFRange, _ ascent: UnsafeMutablePointer<CGFloat>?, _ descent: UnsafeMutablePointer<CGFloat>?, _ leading: UnsafeMutablePointer<CGFloat>?) -> Double
@available(macOS 10.5, *)
func CTRunGetImageBounds(_ run: CTRun, _ context: CGContext?, _ range: CFRange) -> CGRect
@available(macOS 10.5, *)
func CTRunGetTextMatrix(_ run: CTRun) -> CGAffineTransform
@available(macOS 10.11, *)
func CTRunGetBaseAdvancesAndOrigins(_ runRef: CTRun, _ range: CFRange, _ advancesBuffer: UnsafeMutablePointer<CGSize>?, _ originsBuffer: UnsafeMutablePointer<CGPoint>?)
@available(macOS 10.5, *)
func CTRunDraw(_ run: CTRun, _ context: CGContext, _ range: CFRange)
