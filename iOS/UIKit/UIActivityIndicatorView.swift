
extension UIActivityIndicatorView {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(iOS 13.0, *)
    case medium
    @available(iOS 13.0, *)
    case large
    @available(iOS, introduced: 2.0, deprecated: 13.0, renamed: "UIActivityIndicatorView.Style.large")
    case whiteLarge
    @available(iOS, introduced: 2.0, deprecated: 13.0, renamed: "UIActivityIndicatorView.Style.medium")
    case white
    @available(iOS, introduced: 2.0, deprecated: 13.0, renamed: "UIActivityIndicatorView.Style.medium")
    case gray
  }
}
@available(iOS 2.0, *)
class UIActivityIndicatorView : UIView, NSCoding {
  init(style: UIActivityIndicatorView.Style)
  var style: UIActivityIndicatorView.Style
  var hidesWhenStopped: Bool
  @available(iOS 5.0, *)
  var color: UIColor!
  func startAnimating()
  func stopAnimating()
  var isAnimating: Bool { get }
}
