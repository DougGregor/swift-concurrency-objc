
@available(macOS 10.10, *)
class NSAccessibilityElement : NSObject, NSAccessibilityProtocol {
  class func element(withRole role: NSAccessibility.Role, frame: NSRect, label: String?, parent: Any?) -> Any
  func accessibilityAddChildElement(_ childElement: NSAccessibilityElement)
  func accessibilityFrameInParentSpace() -> NSRect
  func setAccessibilityFrameInParentSpace(_ accessibilityFrameInParentSpace: NSRect)
}
