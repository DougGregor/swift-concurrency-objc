
extension NSBox {
  enum TitlePosition : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case noTitle
    case aboveTop
    case atTop
    case belowTop
    case aboveBottom
    case atBottom
    case belowBottom
  }
  enum BoxType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case primary
    case separator
    @available(macOS 10.5, *)
    case custom
  }
}
class NSBox : NSView {
  var boxType: NSBox.BoxType
  var titlePosition: NSBox.TitlePosition
  var title: String
  var titleFont: NSFont
  var borderRect: NSRect { get }
  var titleRect: NSRect { get }
  var titleCell: Any { get }
  var contentViewMargins: NSSize
  func sizeToFit()
  func setFrameFromContentFrame(_ contentFrame: NSRect)
  var contentView: NSView?
  @available(macOS 10.5, *)
  var isTransparent: Bool
  @available(macOS 10.5, *)
  var borderWidth: CGFloat
  @available(macOS 10.5, *)
  var cornerRadius: CGFloat
  @available(macOS 10.5, *)
  @NSCopying var borderColor: NSColor
  @available(macOS 10.5, *)
  @NSCopying var fillColor: NSColor
}
extension NSBox {
  @available(macOS, introduced: 10.0, deprecated: 10.15, message: "borderType is only applicable to NSBoxOldStyle, which is deprecated. To replace a borderType of NSNoBorder, use the `transparent` property.")
  var borderType: NSBorderType
}
extension NSBox.BoxType {
  @available(macOS, introduced: 10.0, deprecated: 10.15, renamed: "NSBox.BoxType.primary")
  static let secondary: NSBox.BoxType
  @available(macOS, introduced: 10.0, deprecated: 10.15, message: "NSBoxOldStyle is discouraged in modern application design. It should be replaced with either NSBoxPrimary or NSBoxCustom.")
  static let oldStyle: NSBox.BoxType
}
