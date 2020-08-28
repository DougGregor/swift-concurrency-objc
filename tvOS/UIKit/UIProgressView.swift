
extension UIProgressView {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case bar
  }
}
@available(tvOS 2.0, *)
class UIProgressView : UIView, NSCoding {
  convenience init(progressViewStyle style: UIProgressView.Style)
  var progressViewStyle: UIProgressView.Style
  var progress: Float
  @available(tvOS 5.0, *)
  var progressTintColor: UIColor?
  @available(tvOS 5.0, *)
  var trackTintColor: UIColor?
  @available(tvOS 5.0, *)
  var progressImage: UIImage?
  @available(tvOS 5.0, *)
  var trackImage: UIImage?
  @available(tvOS 5.0, *)
  func setProgress(_ progress: Float, animated: Bool)
  @available(tvOS 9.0, *)
  var observedProgress: Progress?
}
