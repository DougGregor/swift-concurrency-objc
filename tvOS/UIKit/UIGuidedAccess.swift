
extension UIAccessibility {
  @available(tvOS 12.2, *)
  static let guidedAccessErrorDomain: String
  enum GuidedAccessRestrictionState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case allow
    case deny
  }
  @available(tvOS 7.0, *)
  static func guidedAccessRestrictionState(forIdentifier restrictionIdentifier: String) -> UIAccessibility.GuidedAccessRestrictionState
}
@available(tvOS 7.0, *)
protocol UIGuidedAccessRestrictionDelegate : NSObjectProtocol {
  var guidedAccessRestrictionIdentifiers: [String]? { get }
  func guidedAccessRestriction(withIdentifier restrictionIdentifier: String, didChange newRestrictionState: UIAccessibility.GuidedAccessRestrictionState)
  func textForGuidedAccessRestriction(withIdentifier restrictionIdentifier: String) -> String?
  optional func detailTextForGuidedAccessRestriction(withIdentifier restrictionIdentifier: String) -> String?
}
