
@available(tvOS 2.0, *)
class UIBarItem : NSObject, NSCoding, UIAppearance {
  var isEnabled: Bool
  var title: String?
  var image: UIImage?
  @available(tvOS 11.0, *)
  var largeContentSizeImage: UIImage?
  var imageInsets: UIEdgeInsets
  @available(tvOS 11.0, *)
  var largeContentSizeImageInsets: UIEdgeInsets
  var tag: Int
  @available(tvOS 5.0, *)
  func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State)
  @available(tvOS 5.0, *)
  func titleTextAttributes(for state: UIControl.State) -> [NSAttributedString.Key : Any]?
}
