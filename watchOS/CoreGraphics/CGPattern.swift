
class CGPattern : _CFObject {
}
enum CGPatternTiling : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case noDistortion
  case constantSpacingMinimalDistortion
  case constantSpacing
}
typealias CGPatternDrawPatternCallback = @convention(c) (UnsafeMutableRawPointer?, CGContext) -> Void
typealias CGPatternReleaseInfoCallback = @convention(c) (UnsafeMutableRawPointer?) -> Void
struct CGPatternCallbacks {
  var version: UInt32
  var drawPattern: CGPatternDrawPatternCallback?
  var releaseInfo: CGPatternReleaseInfoCallback?
  init()
  init(version: UInt32, drawPattern: CGPatternDrawPatternCallback?, releaseInfo: CGPatternReleaseInfoCallback?)
}
extension CGPattern {
  @available(watchOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(info: UnsafeMutableRawPointer?, bounds: CGRect, matrix: CGAffineTransform, xStep: CGFloat, yStep: CGFloat, tiling: CGPatternTiling, isColored: Bool, callbacks: UnsafePointer<CGPatternCallbacks>)
}
