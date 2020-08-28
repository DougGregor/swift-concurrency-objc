
extension CMHeadphoneMotionManager {
  typealias DeviceMotionHandler = (CMDeviceMotion?, Error?) -> Void
}
@available(iOS 14.0, *)
class CMHeadphoneMotionManager : NSObject {
  class func authorizationStatus() -> CMAuthorizationStatus
  weak var delegate: @sil_weak CMHeadphoneMotionManagerDelegate?
  var isDeviceMotionAvailable: Bool { get }
  var isDeviceMotionActive: Bool { get }
  var deviceMotion: CMDeviceMotion? { get }
  func startDeviceMotionUpdates()
  func startDeviceMotionUpdates(to queue: OperationQueue, withHandler handler: @escaping CMHeadphoneMotionManager.DeviceMotionHandler)
  func stopDeviceMotionUpdates()
}
