
extension UIScene {
  @available(iOS 13.0, *)
  enum ActivationState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unattached
    case foregroundActive
    case foregroundInactive
    case background
  }
}
extension UISceneSession {
  @available(iOS 13.0, *)
  struct Role : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
@available(iOS 13.0, *)
let UISceneErrorDomain: String
@available(iOS 13.0, *)
struct UISceneError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var multipleScenesNotSupported: UISceneError.Code { get }
  static var requestDenied: UISceneError.Code { get }
}
