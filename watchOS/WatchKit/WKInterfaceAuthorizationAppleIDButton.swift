
extension WKInterfaceAuthorizationAppleIDButton {
  @available(watchOS 6.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case white
  }
}
@available(watchOS 6.0, *)
class WKInterfaceAuthorizationAppleIDButton : WKInterfaceObject {
  @available(watchOS 6.0, *)
  @available(watchOS, deprecated: 6.1, message: "Use initWithStyle:target:action:")
  init(target: Any?, action: Selector)
  @available(watchOS 6.1, *)
  init(style: WKInterfaceAuthorizationAppleIDButton.Style, target: Any?, action: Selector)
}
