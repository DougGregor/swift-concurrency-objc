
class CGFunction : _CFObject {
}
typealias CGFunctionEvaluateCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafePointer<CGFloat>, UnsafeMutablePointer<CGFloat>) -> Void
typealias CGFunctionReleaseInfoCallback = @convention(c) (UnsafeMutableRawPointer?) -> Void
struct CGFunctionCallbacks {
  var version: UInt32
  var evaluate: CGFunctionEvaluateCallback?
  var releaseInfo: CGFunctionReleaseInfoCallback?
  init()
  init(version: UInt32, evaluate: CGFunctionEvaluateCallback?, releaseInfo: CGFunctionReleaseInfoCallback?)
}
extension CGFunction {
  @available(macOS 10.2, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.2, *)
  /*not inherited*/ init?(info: UnsafeMutableRawPointer?, domainDimension: Int, domain: UnsafePointer<CGFloat>?, rangeDimension: Int, range: UnsafePointer<CGFloat>?, callbacks: UnsafePointer<CGFunctionCallbacks>)
}
