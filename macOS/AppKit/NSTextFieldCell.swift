
extension NSTextField {
  enum BezelStyle : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case squareBezel
    case roundedBezel
  }
}
class NSTextFieldCell : NSActionCell {
  @NSCopying var backgroundColor: NSColor?
  var drawsBackground: Bool
  @NSCopying var textColor: NSColor?
  var bezelStyle: NSTextField.BezelStyle
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  @available(macOS 10.5, *)
  func setWantsNotificationForMarkedText(_ flag: Bool)
  @available(macOS 10.5, *)
  var allowedInputSourceLocales: [String]?
}
