
@available(iOS 2.0, *)
class UIImageView : UIView {
  init(image: UIImage?)
  @available(iOS 3.0, *)
  init(image: UIImage?, highlightedImage: UIImage?)
  var image: UIImage?
  @available(iOS 3.0, *)
  var highlightedImage: UIImage?
  @available(iOS 13.0, *)
  var preferredSymbolConfiguration: UIImage.SymbolConfiguration?
  @available(iOS 3.0, *)
  var isHighlighted: Bool
  var animationImages: [UIImage]?
  @available(iOS 3.0, *)
  var highlightedAnimationImages: [UIImage]?
  var animationDuration: TimeInterval
  var animationRepeatCount: Int
  func startAnimating()
  func stopAnimating()
  var isAnimating: Bool { get }
}
