
class CTRun : _CFObject {
}
struct CTRunStatus : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var rightToLeft: CTRunStatus { get }
  static var nonMonotonic: CTRunStatus { get }
  static var hasNonIdentityMatrix: CTRunStatus { get }
}
@available(tvOS 9.0, *)
func CTRunGetTypeID() -> CFTypeID
@available(tvOS 9.0, *)
func CTRunGetGlyphCount(_ run: CTRun) -> CFIndex
@available(tvOS 9.0, *)
func CTRunGetAttributes(_ run: CTRun) -> CFDictionary
@available(tvOS 9.0, *)
func CTRunGetStatus(_ run: CTRun) -> CTRunStatus
@available(tvOS 9.0, *)
func CTRunGetGlyphsPtr(_ run: CTRun) -> UnsafePointer<CGGlyph>?
@available(tvOS 9.0, *)
func CTRunGetGlyphs(_ run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGGlyph>)
@available(tvOS 9.0, *)
func CTRunGetPositionsPtr(_ run: CTRun) -> UnsafePointer<CGPoint>?
@available(tvOS 9.0, *)
func CTRunGetPositions(_ run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGPoint>)
@available(tvOS 9.0, *)
func CTRunGetAdvancesPtr(_ run: CTRun) -> UnsafePointer<CGSize>?
@available(tvOS 9.0, *)
func CTRunGetAdvances(_ run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGSize>)
@available(tvOS 9.0, *)
func CTRunGetStringIndicesPtr(_ run: CTRun) -> UnsafePointer<CFIndex>?
@available(tvOS 9.0, *)
func CTRunGetStringIndices(_ run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CFIndex>)
@available(tvOS 9.0, *)
func CTRunGetStringRange(_ run: CTRun) -> CFRange
@available(tvOS 9.0, *)
func CTRunGetTypographicBounds(_ run: CTRun, _ range: CFRange, _ ascent: UnsafeMutablePointer<CGFloat>?, _ descent: UnsafeMutablePointer<CGFloat>?, _ leading: UnsafeMutablePointer<CGFloat>?) -> Double
@available(tvOS 9.0, *)
func CTRunGetImageBounds(_ run: CTRun, _ context: CGContext?, _ range: CFRange) -> CGRect
@available(tvOS 9.0, *)
func CTRunGetTextMatrix(_ run: CTRun) -> CGAffineTransform
@available(tvOS 9.0, *)
func CTRunGetBaseAdvancesAndOrigins(_ runRef: CTRun, _ range: CFRange, _ advancesBuffer: UnsafeMutablePointer<CGSize>?, _ originsBuffer: UnsafeMutablePointer<CGPoint>?)
@available(tvOS 9.0, *)
func CTRunDraw(_ run: CTRun, _ context: CGContext, _ range: CFRange)
