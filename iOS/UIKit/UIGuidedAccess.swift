
extension UIAccessibility {
  @available(iOS 12.2, *)
  static let guidedAccessErrorDomain: String
  @available(iOS 12.2, *)
  struct GuidedAccessError : _BridgedStoredNSError {
    let _nsError: NSError
    init(_nsError: NSError)
    static var errorDomain: String { get }
    static var permissionDenied: UIAccessibility.GuidedAccessError.Code { get }
    static var failed: UIAccessibility.GuidedAccessError.Code { get }
  }
  enum GuidedAccessRestrictionState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case allow
    case deny
  }
  @available(iOS 7.0, *)
  static func guidedAccessRestrictionState(forIdentifier restrictionIdentifier: String) -> UIAccessibility.GuidedAccessRestrictionState
  @available(iOS 12.2, *)
  static func configureForGuidedAccess(features: UIGuidedAccessAccessibilityFeature, enabled: Bool, completionHandler completion: @escaping (Bool, Error?) -> Void)
}
@available(iOS 7.0, *)
protocol UIGuidedAccessRestrictionDelegate : NSObjectProtocol {
  var guidedAccessRestrictionIdentifiers: [String]? { get }
  @asyncHandler func guidedAccessRestriction(withIdentifier restrictionIdentifier: String, didChange newRestrictionState: UIAccessibility.GuidedAccessRestrictionState)
  func textForGuidedAccessRestriction(withIdentifier restrictionIdentifier: String) -> String?
  optional func detailTextForGuidedAccessRestriction(withIdentifier restrictionIdentifier: String) -> String?
}
@available(iOS 12.2, *)
struct UIGuidedAccessAccessibilityFeature : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var voiceOver: UIGuidedAccessAccessibilityFeature { get }
  static var zoom: UIGuidedAccessAccessibilityFeature { get }
  static var assistiveTouch: UIGuidedAccessAccessibilityFeature { get }
  static var invertColors: UIGuidedAccessAccessibilityFeature { get }
  static var grayscaleDisplay: UIGuidedAccessAccessibilityFeature { get }
}
