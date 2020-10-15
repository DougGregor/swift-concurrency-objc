
extension NSObject {
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityAttributeNames() -> [NSAccessibility.Attribute]
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityAttributeNames() -> [NSAccessibility.Attribute]
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityAttributeValue(_ attribute: NSAccessibility.Attribute) -> Any?
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityAttributeValue(_ attribute: NSAccessibility.Attribute) -> Any?
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityIsAttributeSettable(_ attribute: NSAccessibility.Attribute) -> Bool
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityIsAttributeSettable(_ attribute: NSAccessibility.Attribute) -> Bool
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilitySetValue(_ value: Any?, forAttribute attribute: NSAccessibility.Attribute)
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilitySetValue(_ value: Any?, forAttribute attribute: NSAccessibility.Attribute)
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityParameterizedAttributeNames() -> [NSAccessibility.ParameterizedAttribute]
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityParameterizedAttributeNames() -> [NSAccessibility.ParameterizedAttribute]
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityAttributeValue(_ attribute: NSAccessibility.ParameterizedAttribute, forParameter parameter: Any?) -> Any?
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityAttributeValue(_ attribute: NSAccessibility.ParameterizedAttribute, forParameter parameter: Any?) -> Any?
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityActionNames() -> [NSAccessibility.Action]
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityActionNames() -> [NSAccessibility.Action]
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityActionDescription(_ action: NSAccessibility.Action) -> String?
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityActionDescription(_ action: NSAccessibility.Action) -> String?
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityPerformAction(_ action: NSAccessibility.Action)
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityPerformAction(_ action: NSAccessibility.Action)
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use isAccessibilityElement instead")
  class func accessibilityIsIgnored() -> Bool
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use isAccessibilityElement instead")
  func accessibilityIsIgnored() -> Bool
  class func accessibilityHitTest(_ point: NSPoint) -> Any?
  func accessibilityHitTest(_ point: NSPoint) -> Any?
  var accessibilityFocusedUIElement: Any? { get }
  class func accessibilityIndex(ofChild child: Any) -> Int
  func accessibilityIndex(ofChild child: Any) -> Int
  class func accessibilityArrayAttributeCount(_ attribute: NSAccessibility.Attribute) -> Int
  func accessibilityArrayAttributeCount(_ attribute: NSAccessibility.Attribute) -> Int
  class func accessibilityArrayAttributeValues(_ attribute: NSAccessibility.Attribute, index: Int, maxCount: Int) -> [Any]
  func accessibilityArrayAttributeValues(_ attribute: NSAccessibility.Attribute, index: Int, maxCount: Int) -> [Any]
  @available(macOS 10.9, *)
  var accessibilityNotifiesWhenDestroyed: Bool { get }
  class func accessibilityFocusedUIElement() -> Any?
  class func accessibilityNotifiesWhenDestroyed() -> Bool
}
extension NSWorkspace {
  @available(macOS 10.10, *)
  var accessibilityDisplayShouldIncreaseContrast: Bool { get }
  @available(macOS 10.10, *)
  var accessibilityDisplayShouldDifferentiateWithoutColor: Bool { get }
  @available(macOS 10.10, *)
  var accessibilityDisplayShouldReduceTransparency: Bool { get }
  @available(macOS 10.12, *)
  var accessibilityDisplayShouldReduceMotion: Bool { get }
  @available(macOS 10.12, *)
  var accessibilityDisplayShouldInvertColors: Bool { get }
}
extension NSWorkspace {
  @available(macOS 10.13, *)
  var isVoiceOverEnabled: Bool { get }
  @available(macOS 10.13, *)
  var isSwitchControlEnabled: Bool { get }
}
extension NSWorkspace {
  @available(macOS 10.10, *)
  class let accessibilityDisplayOptionsDidChangeNotification: NSNotification.Name
}
extension NSObject {
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilitySetOverrideValue(_ value: Any?, forAttribute attribute: NSAccessibility.Attribute) -> Bool
  @available(macOS, introduced: 10.1, deprecated: 10.10, message: "Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilitySetOverrideValue(_ value: Any?, forAttribute attribute: NSAccessibility.Attribute) -> Bool
}
extension NSAccessibility {
  @available(macOS 10.10, *)
  static func screenRect(fromView parentView: NSView, rect frame: NSRect) -> NSRect
  @available(macOS 10.10, *)
  static func screenPoint(fromView parentView: NSView, point: NSPoint) -> NSPoint
  static func setMayContainProtectedContent(_ flag: Bool) -> Bool
  @available(macOS, introduced: 10.1, deprecated: 10.11, message: "Exceptions are no longer appropriate for indicating errors in accessibility API. Unexpected values should be handled through appropriate type checking.")
  static func raiseBadArgumentException(_ element: Any!, _ attribute: NSAccessibility.Attribute!, _ value: Any!)
  static func unignoredAncestor(of element: Any) -> Any?
  static func unignoredDescendant(of element: Any) -> Any?
  static func unignoredChildren(from originalChildren: [Any]) -> [Any]
  static func unignoredChildrenForOnlyChild(from originalChild: Any) -> [Any]
  static func post(element: Any, notification: NSAccessibility.Notification)
}
extension NSAccessibility.Role {
  func description(with subrole: NSAccessibility.Subrole?) -> String?
  static func description(for element: Any) -> String?
}
extension NSAccessibility.Action {
  var description: String? { get }
}
struct NSAccessibility {
  var _reserved: UnsafeMutableRawPointer
  init(_reserved: UnsafeMutableRawPointer)
}
