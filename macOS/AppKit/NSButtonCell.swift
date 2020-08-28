
extension NSButton {
  enum ButtonType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case momentaryLight
    case pushOnPushOff
    case toggle
    case `switch`
    case radio
    case momentaryChange
    case onOff
    case momentaryPushIn
    @available(macOS 10.10.3, *)
    case accelerator
    @available(macOS 10.10.3, *)
    case multiLevelAccelerator
  }
  enum BezelStyle : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case rounded
    case regularSquare
    case disclosure
    case shadowlessSquare
    case circular
    case texturedSquare
    case helpButton
    case smallSquare
    case texturedRounded
    case roundRect
    case recessed
    case roundedDisclosure
    @available(macOS 10.7, *)
    case inline
  }
  @available(macOS, introduced: 10.0, deprecated: 10.12)
  enum GradientType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case concaveWeak
    case concaveStrong
    case convexWeak
    case convexStrong
  }
}
class NSButtonCell : NSActionCell {
  var bezelStyle: NSButton.BezelStyle
  func setButtonType(_ type: NSButton.ButtonType)
  var highlightsBy: NSCell.StyleMask
  var showsStateBy: NSCell.StyleMask
  @NSCopying var attributedTitle: NSAttributedString
  var alternateTitle: String
  @NSCopying var attributedAlternateTitle: NSAttributedString
  var alternateImage: NSImage?
  var imagePosition: NSControl.ImagePosition
  @available(macOS 10.5, *)
  var imageScaling: NSImageScaling
  var keyEquivalentModifierMask: NSEvent.ModifierFlags
  var isTransparent: Bool
  var imageDimsWhenDisabled: Bool
  var showsBorderOnlyWhileMouseInside: Bool
  var sound: NSSound?
  @NSCopying var backgroundColor: NSColor?
  func setPeriodicDelay(_ delay: Float, interval: Float)
  func mouseEntered(with event: NSEvent)
  func mouseExited(with event: NSEvent)
  func drawBezel(withFrame frame: NSRect, in controlView: NSView)
  func drawImage(_ image: NSImage, withFrame frame: NSRect, in controlView: NSView)
  func drawTitle(_ title: NSAttributedString, withFrame frame: NSRect, in controlView: NSView) -> NSRect
}
extension NSButtonCell {
  @available(macOS, introduced: 10.0, deprecated: 10.12, message: "The gradientType property is unused, and setting it has no effect.")
  var gradientType: NSButton.GradientType
  @available(macOS, introduced: 10.0, deprecated: 10.15, message: "The keyEquivalentFont property is no longer used. It always returns the NSButtonCell's font, and setting it has no effect.")
  var keyEquivalentFont: NSFont?
  @available(macOS, introduced: 10.0, deprecated: 10.15, message: "The keyEquivalentFont property is no longer used. Setting it has no effect.")
  func setKeyEquivalentFont(_ fontName: String, size fontSize: CGFloat)
}
