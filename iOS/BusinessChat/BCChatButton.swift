
extension BCChatButton {
  @available(iOS 11.3, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case light
    case dark
  }
}
@available(iOS 11.3, *)
class BCChatButton : UIControl {
  @available(iOS 11.3, *)
  init(style: BCChatButton.Style)
}
