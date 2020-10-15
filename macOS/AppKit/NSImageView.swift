
class NSImageView : NSControl, NSAccessibilityImage, NSMenuItemValidation {
  @available(macOS 10.12, *)
  convenience init(image: NSImage)
  var image: NSImage?
  var isEditable: Bool
  var imageAlignment: NSImageAlignment
  var imageScaling: NSImageScaling
  var imageFrameStyle: NSImageView.FrameStyle
  @available(macOS 11, *)
  @NSCopying var symbolConfiguration: NSImage.SymbolConfiguration?
  @available(macOS 10.14, *)
  @NSCopying var contentTintColor: NSColor?
  var animates: Bool
  var allowsCutCopyPaste: Bool
}
