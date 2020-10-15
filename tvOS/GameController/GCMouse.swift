
extension NSNotification.Name {
  @available(tvOS 14.0, *)
  static let GCMouseDidConnect: NSNotification.Name
  @available(tvOS 14.0, *)
  static let GCMouseDidDisconnect: NSNotification.Name
  @available(tvOS 14.0, *)
  static let GCMouseDidBecomeCurrent: NSNotification.Name
  @available(tvOS 14.0, *)
  static let GCMouseDidStopBeingCurrent: NSNotification.Name
}
@available(tvOS 14.0, *)
class GCMouse : NSObject, GCDevice {
  var mouseInput: GCMouseInput? { get }
  class var current: GCMouse? { get }
  class func mice() -> [GCMouse]
}
