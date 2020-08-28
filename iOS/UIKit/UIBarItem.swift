
@available(iOS 2.0, *)
class UIBarItem : NSObject, NSCoding, UIAppearance {
  var isEnabled: Bool
  var title: String?
  var image: UIImage?
  @available(iOS 5.0, *)
  var landscapeImagePhone: UIImage?
  @available(iOS 11.0, *)
  var largeContentSizeImage: UIImage?
  var imageInsets: UIEdgeInsets
  @available(iOS 5.0, *)
  var landscapeImagePhoneInsets: UIEdgeInsets
  @available(iOS 11.0, *)
  var largeContentSizeImageInsets: UIEdgeInsets
  var tag: Int
  @available(iOS 5.0, *)
  func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State)
  @available(iOS 5.0, *)
  func titleTextAttributes(for state: UIControl.State) -> [NSAttributedString.Key : Any]?
}
