
@available(macOS 10.15, *)
enum EPDeveloperToolStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case authorized
}
@available(macOS 10.15, *)
class EPDeveloperTool : NSObject {
  var authorizationStatus: EPDeveloperToolStatus { get }
  func requestAccess(completionHandler handler: @escaping (Bool) -> Void)
}
