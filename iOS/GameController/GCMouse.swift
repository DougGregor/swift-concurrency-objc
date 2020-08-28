
extension NSNotification.Name {
  @available(iOS 14.0, *)
  static let GCMouseDidConnect: NSNotification.Name
  @available(iOS 14.0, *)
  static let GCMouseDidDisconnect: NSNotification.Name
  @available(iOS 14.0, *)
  static let GCMouseDidBecomeCurrent: NSNotification.Name
  @available(iOS 14.0, *)
  static let GCMouseDidStopBeingCurrent: NSNotification.Name
}
@available(iOS 14.0, *)
class GCMouse : NSObject, GCDevice {
  var mouseInput: GCMouseInput? { get }
  class var current: GCMouse? { get }
  class func mice() -> [GCMouse]
}
