
@available(iOS 12.0, *)
class CPGridButton : NSObject, NSSecureCoding {
  init(titleVariants: [String], image: UIImage, handler: ((CPGridButton) -> Void)? = nil)
  var isEnabled: Bool
  var image: UIImage { get }
  var titleVariants: [String] { get }
}
