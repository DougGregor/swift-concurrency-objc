
extension SKNode {
  var isAccessibilityElement: Bool
  var accessibilityRole: String?
  var accessibilityRoleDescription: String?
  var accessibilitySubrole: String?
  var accessibilityFrame: CGRect
  weak var accessibilityParent: @sil_weak AnyObject?
  var accessibilityChildren: [Any]?
  var accessibilityHelp: String?
  var accessibilityLabel: String?
  var isAccessibilityEnabled: Bool
}
