
@available(macOS 10.12.2, *)
class NSColorPickerTouchBarItem : NSTouchBarItem {
  class func colorPicker(withIdentifier identifier: NSTouchBarItem.Identifier) -> Self
  class func textColorPicker(withIdentifier identifier: NSTouchBarItem.Identifier) -> Self
  class func strokeColorPicker(withIdentifier identifier: NSTouchBarItem.Identifier) -> Self
  class func colorPicker(withIdentifier identifier: NSTouchBarItem.Identifier, buttonImage image: NSImage) -> Self
  @NSCopying var color: NSColor
  var showsAlpha: Bool
  @available(macOS 10.13, *)
  var allowedColorSpaces: [NSColorSpace]?
  var colorList: NSColorList!
  weak var target: @sil_weak AnyObject?
  var action: Selector?
  var isEnabled: Bool
}
