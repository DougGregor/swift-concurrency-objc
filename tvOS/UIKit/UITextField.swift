
@available(tvOS 2.0, *)
class UITextField : UIControl, UITextInput, NSCoding, UIContentSizeCategoryAdjusting {
  var text: String?
  @available(tvOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var textColor: UIColor?
  var font: UIFont?
  var textAlignment: NSTextAlignment
  var borderStyle: UITextField.BorderStyle
  @available(tvOS 7.0, *)
  var defaultTextAttributes: [NSAttributedString.Key : Any]
  var placeholder: String?
  @available(tvOS 6.0, *)
  @NSCopying var attributedPlaceholder: NSAttributedString?
  var clearsOnBeginEditing: Bool
  var adjustsFontSizeToFitWidth: Bool
  var minimumFontSize: CGFloat
  weak var delegate: @sil_weak UITextFieldDelegate?
  var background: UIImage?
  var disabledBackground: UIImage?
  var isEditing: Bool { get }
  @available(tvOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(tvOS 6.0, *)
  var typingAttributes: [NSAttributedString.Key : Any]?
  var clearButtonMode: UITextField.ViewMode
  var leftView: UIView?
  var leftViewMode: UITextField.ViewMode
  var rightView: UIView?
  var rightViewMode: UITextField.ViewMode
  func borderRect(forBounds bounds: CGRect) -> CGRect
  func textRect(forBounds bounds: CGRect) -> CGRect
  func placeholderRect(forBounds bounds: CGRect) -> CGRect
  func editingRect(forBounds bounds: CGRect) -> CGRect
  func clearButtonRect(forBounds bounds: CGRect) -> CGRect
  func leftViewRect(forBounds bounds: CGRect) -> CGRect
  func rightViewRect(forBounds bounds: CGRect) -> CGRect
  func drawText(in rect: CGRect)
  func drawPlaceholder(in rect: CGRect)
  @available(tvOS 6.0, *)
  var clearsOnInsertion: Bool
}
extension UIView {
  func endEditing(_ force: Bool) -> Bool
}
protocol UITextFieldDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldDidBeginEditing(_ textField: UITextField)
  @available(tvOS 2.0, *)
  optional func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldDidEndEditing(_ textField: UITextField)
  @available(tvOS 10.0, *)
  optional func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason)
  @available(tvOS 2.0, *)
  optional func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
  @available(tvOS 13.0, *)
  optional func textFieldDidChangeSelection(_ textField: UITextField)
  @available(tvOS 2.0, *)
  optional func textFieldShouldClear(_ textField: UITextField) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldShouldReturn(_ textField: UITextField) -> Bool
}
extension UITextField {
  class let textDidBeginEditingNotification: NSNotification.Name
  class let textDidEndEditingNotification: NSNotification.Name
  class let textDidChangeNotification: NSNotification.Name
  @available(tvOS 10.0, *)
  class let didEndEditingReasonUserInfoKey: String
  enum BorderStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case line
    case bezel
    case roundedRect
  }
  enum ViewMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case never
    case whileEditing
    case unlessEditing
    case always
  }
  @available(tvOS 10.0, *)
  enum DidEndEditingReason : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case committed
    @available(tvOS 10.0, *)
    case cancelled
  }
}
