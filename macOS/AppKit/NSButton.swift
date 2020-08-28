
class NSButton : NSControl, NSUserInterfaceValidations, NSAccessibilityButton, NSUserInterfaceCompression {
  @available(macOS 10.12, *)
  convenience init(title: String, image: NSImage, target: Any?, action: Selector?)
  @available(macOS 10.12, *)
  convenience init(title: String, target: Any?, action: Selector?)
  @available(macOS 10.12, *)
  convenience init(image: NSImage, target: Any?, action: Selector?)
  @available(macOS 10.12, *)
  convenience init(checkboxWithTitle title: String, target: Any?, action: Selector?)
  @available(macOS 10.12, *)
  convenience init(radioButtonWithTitle title: String, target: Any?, action: Selector?)
  func setButtonType(_ type: NSButton.ButtonType)
  var title: String
  @NSCopying var attributedTitle: NSAttributedString
  var alternateTitle: String
  @NSCopying var attributedAlternateTitle: NSAttributedString
  @available(macOS 11.0, *)
  var hasDestructiveAction: Bool
  var sound: NSSound?
  @available(macOS 10.10.3, *)
  var isSpringLoaded: Bool
  @available(macOS 10.10.3, *)
  var maxAcceleratorLevel: Int
  func setPeriodicDelay(_ delay: Float, interval: Float)
  func getPeriodicDelay(_ delay: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)
  var bezelStyle: NSButton.BezelStyle
  var isBordered: Bool
  var isTransparent: Bool
  var showsBorderOnlyWhileMouseInside: Bool
  var image: NSImage?
  var alternateImage: NSImage?
  var imagePosition: NSControl.ImagePosition
  @available(macOS 10.5, *)
  var imageScaling: NSImageScaling
  @available(macOS 10.12, *)
  var imageHugsTitle: Bool
  @available(macOS 11, *)
  @NSCopying var symbolConfiguration: NSImage.SymbolConfiguration?
  @available(macOS 10.12.2, *)
  @NSCopying var bezelColor: NSColor?
  @available(macOS 10.14, *)
  @NSCopying var contentTintColor: NSColor?
  var state: NSControl.StateValue
  var allowsMixedState: Bool
  func setNextState()
  func highlight(_ flag: Bool)
  var keyEquivalent: String
  var keyEquivalentModifierMask: NSEvent.ModifierFlags
}
extension NSButton {
}
