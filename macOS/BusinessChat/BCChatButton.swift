
extension BCChatButton {
  @available(macOS 10.13.4, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case light
    case dark
  }
}
@available(macOS 10.13.4, *)
class BCChatButton : NSControl {
  @available(macOS 10.13.4, *)
  init(style: BCChatButton.Style)
}
