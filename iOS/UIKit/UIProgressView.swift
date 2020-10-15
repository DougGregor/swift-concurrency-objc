
extension UIProgressView {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case bar
  }
}
@available(iOS 2.0, *)
class UIProgressView : UIView, NSCoding {
  convenience init(progressViewStyle style: UIProgressView.Style)
  var progressViewStyle: UIProgressView.Style
  var progress: Float
  @available(iOS 5.0, *)
  var progressTintColor: UIColor?
  @available(iOS 5.0, *)
  var trackTintColor: UIColor?
  @available(iOS 5.0, *)
  var progressImage: UIImage?
  @available(iOS 5.0, *)
  var trackImage: UIImage?
  @available(iOS 5.0, *)
  func setProgress(_ progress: Float, animated: Bool)
  @available(iOS 9.0, *)
  var observedProgress: Progress?
}
