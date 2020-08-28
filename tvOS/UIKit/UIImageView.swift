
@available(tvOS 2.0, *)
class UIImageView : UIView {
  init(image: UIImage?)
  @available(tvOS 3.0, *)
  init(image: UIImage?, highlightedImage: UIImage?)
  var image: UIImage?
  @available(tvOS 3.0, *)
  var highlightedImage: UIImage?
  @available(tvOS 13.0, *)
  var preferredSymbolConfiguration: UIImage.SymbolConfiguration?
  @available(tvOS 3.0, *)
  var isHighlighted: Bool
  var animationImages: [UIImage]?
  @available(tvOS 3.0, *)
  var highlightedAnimationImages: [UIImage]?
  var animationDuration: TimeInterval
  var animationRepeatCount: Int
  func startAnimating()
  func stopAnimating()
  var isAnimating: Bool { get }
  @available(tvOS 9.0, *)
  var adjustsImageWhenAncestorFocused: Bool
  @available(tvOS 9.0, *)
  var focusedFrameGuide: UILayoutGuide { get }
  @available(tvOS 11.0, *)
  var overlayContentView: UIView { get }
  @available(tvOS 11.0, *)
  var masksFocusEffectToContents: Bool
}
