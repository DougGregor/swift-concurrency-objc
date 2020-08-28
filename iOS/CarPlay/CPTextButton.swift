
@available(iOS 14.0, *)
enum CPTextButtonStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case normal
  case cancel
  case confirm
}
@available(iOS 14.0, *)
class CPTextButton : NSObject {
  init(title: String, textStyle: CPTextButtonStyle, handler: ((CPTextButton) -> Void)? = nil)
  var title: String
  var textStyle: CPTextButtonStyle
}
