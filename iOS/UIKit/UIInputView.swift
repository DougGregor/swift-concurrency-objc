
extension UIInputView {
  @available(iOS 7.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case keyboard
  }
}
@available(iOS 7.0, *)
class UIInputView : UIView {
  var inputViewStyle: UIInputView.Style { get }
  @available(iOS 9.0, *)
  var allowsSelfSizing: Bool
  init(frame: CGRect, inputViewStyle: UIInputView.Style)
}
