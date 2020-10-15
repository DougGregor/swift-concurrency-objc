
extension UIButton {
  enum ButtonType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case custom
    @available(iOS 7.0, *)
    case system
    case detailDisclosure
    case infoLight
    case infoDark
    case contactAdd
    @available(iOS 13.0, *)
    case close
    static var roundedRect: UIButton.ButtonType { get }
  }
  @available(iOS 14.0, *)
  enum Role : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case normal
    case primary
    case cancel
    case destructive
  }
}
@available(iOS 13.4, *)
typealias UIButtonPointerStyleProvider = (UIButton, __UIPointerEffect, __UIPointerShape) -> UIPointerStyle?
@available(iOS 2.0, *)
class UIButton : UIControl, NSCoding {
  convenience init(type buttonType: UIButton.ButtonType)
  @available(iOS 13.0, *)
  class func systemButton(with image: UIImage, target: Any?, action: Selector?) -> Self
  @available(iOS 14.0, *)
  convenience init(__type buttonType: UIButton.ButtonType, primaryAction: UIAction?)
  var contentEdgeInsets: UIEdgeInsets
  var titleEdgeInsets: UIEdgeInsets
  var reversesTitleShadowWhenHighlighted: Bool
  var imageEdgeInsets: UIEdgeInsets
  var adjustsImageWhenHighlighted: Bool
  var adjustsImageWhenDisabled: Bool
  var showsTouchWhenHighlighted: Bool
  var buttonType: UIButton.ButtonType { get }
  @available(iOS 14.0, *)
  var role: UIButton.Role
  @available(iOS 13.4, *)
  var isPointerInteractionEnabled: Bool
  @available(iOS 13.4, *)
  var __pointerStyleProvider: UIButtonPointerStyleProvider?
  @available(iOS 14.0, *)
  @NSCopying var menu: UIMenu?
  func setTitle(_ title: String?, for state: UIControl.State)
  func setTitleColor(_ color: UIColor?, for state: UIControl.State)
  func setTitleShadowColor(_ color: UIColor?, for state: UIControl.State)
  func setImage(_ image: UIImage?, for state: UIControl.State)
  func setBackgroundImage(_ image: UIImage?, for state: UIControl.State)
  @available(iOS 13.0, *)
  func setPreferredSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration?, forImageIn state: UIControl.State)
  @available(iOS 6.0, *)
  func setAttributedTitle(_ title: NSAttributedString?, for state: UIControl.State)
  func title(for state: UIControl.State) -> String?
  func titleColor(for state: UIControl.State) -> UIColor?
  func titleShadowColor(for state: UIControl.State) -> UIColor?
  func image(for state: UIControl.State) -> UIImage?
  func backgroundImage(for state: UIControl.State) -> UIImage?
  @available(iOS 13.0, *)
  func preferredSymbolConfigurationForImage(in state: UIControl.State) -> UIImage.SymbolConfiguration?
  @available(iOS 6.0, *)
  func attributedTitle(for state: UIControl.State) -> NSAttributedString?
  var currentTitle: String? { get }
  var currentTitleColor: UIColor { get }
  var currentTitleShadowColor: UIColor? { get }
  var currentImage: UIImage? { get }
  var currentBackgroundImage: UIImage? { get }
  @available(iOS 13.0, *)
  var currentPreferredSymbolConfiguration: UIImage.SymbolConfiguration? { get }
  @available(iOS 6.0, *)
  var currentAttributedTitle: NSAttributedString? { get }
  @available(iOS 3.0, *)
  var titleLabel: UILabel? { get }
  @available(iOS 3.0, *)
  var imageView: UIImageView? { get }
  func backgroundRect(forBounds bounds: CGRect) -> CGRect
  func contentRect(forBounds bounds: CGRect) -> CGRect
  func titleRect(forContentRect contentRect: CGRect) -> CGRect
  func imageRect(forContentRect contentRect: CGRect) -> CGRect
}

extension UIButton {
  @available(iOS 14.0, *)
  convenience init(type buttonType: UIButton.ButtonType = .system, primaryAction: UIAction?)
}

@available(iOS 13.4, *)
extension UIButton {
  typealias PointerStyleProvider = (UIButton, UIPointerEffect, UIPointerShape) -> UIPointerStyle?
  var pointerStyleProvider: UIButton.PointerStyleProvider?
}
extension UIButton {
}
extension UIButton : UISpringLoadedInteractionSupporting {
}
