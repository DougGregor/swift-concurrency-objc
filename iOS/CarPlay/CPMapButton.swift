
@available(iOS 12.0, *)
class CPMapButton : NSObject, NSSecureCoding {
  init(handler: ((CPMapButton) -> Void)? = nil)
  var isEnabled: Bool
  var isHidden: Bool
  var image: UIImage?
  var focusedImage: UIImage?
}
