
extension UIActivityIndicatorView {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(tvOS 13.0, *)
    case medium
    @available(tvOS 13.0, *)
    case large
    @available(tvOS, introduced: 9.0, deprecated: 13.0, renamed: "UIActivityIndicatorView.Style.large")
    case whiteLarge
    @available(tvOS, introduced: 9.0, deprecated: 13.0, renamed: "UIActivityIndicatorView.Style.medium")
    case white
  }
}
@available(tvOS 2.0, *)
class UIActivityIndicatorView : UIView, NSCoding {
  init(style: UIActivityIndicatorView.Style)
  var style: UIActivityIndicatorView.Style
  var hidesWhenStopped: Bool
  @available(tvOS 5.0, *)
  var color: UIColor!
  func startAnimating()
  func stopAnimating()
  var isAnimating: Bool { get }
}
