
@available(macOS 10.13, *)
class AVRouteDetector : NSObject {
  var isRouteDetectionEnabled: Bool
  var multipleRoutesDetected: Bool { get }
}
extension NSNotification.Name {
  @available(macOS 10.13, *)
  static let AVRouteDetectorMultipleRoutesDetectedDidChange: NSNotification.Name
}
