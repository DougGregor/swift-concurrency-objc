
class CTRun : _CFObject {
}
struct CTRunStatus : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var rightToLeft: CTRunStatus { get }
  static var nonMonotonic: CTRunStatus { get }
  static var hasNonIdentityMatrix: CTRunStatus { get }
}
@available(watchOS 2.0, *)
func CTRunGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CTRunGetGlyphCount(_ run: CTRun) -> CFIndex
@available(watchOS 2.0, *)
func CTRunGetAttributes(_ run: CTRun) -> CFDictionary
@available(watchOS 2.0, *)
func CTRunGetStatus(_ run: CTRun) -> CTRunStatus
@available(watchOS 2.0, *)
func CTRunGetGlyphsPtr(_ run: CTRun) -> UnsafePointer<CGGlyph>?
@available(watchOS 2.0, *)
func CTRunGetGlyphs(_ run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGGlyph>)
@available(watchOS 2.0, *)
func CTRunGetPositionsPtr(_ run: CTRun) -> UnsafePointer<CGPoint>?
@available(watchOS 2.0, *)
func CTRunGetPositions(_ run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGPoint>)
@available(watchOS 2.0, *)
func CTRunGetAdvancesPtr(_ run: CTRun) -> UnsafePointer<CGSize>?
@available(watchOS 2.0, *)
func CTRunGetAdvances(_ run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGSize>)
@available(watchOS 2.0, *)
func CTRunGetStringIndicesPtr(_ run: CTRun) -> UnsafePointer<CFIndex>?
@available(watchOS 2.0, *)
func CTRunGetStringIndices(_ run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CFIndex>)
@available(watchOS 2.0, *)
func CTRunGetStringRange(_ run: CTRun) -> CFRange
@available(watchOS 2.0, *)
func CTRunGetTypographicBounds(_ run: CTRun, _ range: CFRange, _ ascent: UnsafeMutablePointer<CGFloat>?, _ descent: UnsafeMutablePointer<CGFloat>?, _ leading: UnsafeMutablePointer<CGFloat>?) -> Double
@available(watchOS 2.0, *)
func CTRunGetImageBounds(_ run: CTRun, _ context: CGContext?, _ range: CFRange) -> CGRect
@available(watchOS 2.0, *)
func CTRunGetTextMatrix(_ run: CTRun) -> CGAffineTransform
@available(watchOS 2.0, *)
func CTRunGetBaseAdvancesAndOrigins(_ runRef: CTRun, _ range: CFRange, _ advancesBuffer: UnsafeMutablePointer<CGSize>?, _ originsBuffer: UnsafeMutablePointer<CGPoint>?)
@available(watchOS 2.0, *)
func CTRunDraw(_ run: CTRun, _ context: CGContext, _ range: CFRange)
