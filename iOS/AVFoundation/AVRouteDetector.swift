
@available(iOS 11.0, *)
class AVRouteDetector : NSObject {
  var isRouteDetectionEnabled: Bool
  var multipleRoutesDetected: Bool { get }
}
extension NSNotification.Name {
  @available(iOS 11.0, *)
  static let AVRouteDetectorMultipleRoutesDetectedDidChange: NSNotification.Name
}
