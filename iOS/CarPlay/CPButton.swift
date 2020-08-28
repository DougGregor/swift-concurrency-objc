
@available(iOS 14.0, *)
class CPButton : NSObject {
  init(image: UIImage, handler: ((CPButton) -> Void)? = nil)
  @NSCopying var image: UIImage? { get }
  var title: String?
  var isEnabled: Bool
}
let CPButtonMaximumImageSize: CGSize
