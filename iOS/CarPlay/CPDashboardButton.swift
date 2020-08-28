
@available(iOS 13.4, *)
class CPDashboardButton : NSObject, NSSecureCoding {
  init(titleVariants: [String], subtitleVariants: [String], image: UIImage, handler: ((CPDashboardButton) -> Void)? = nil)
  var image: UIImage { get }
  var titleVariants: [String] { get }
  var subtitleVariants: [String] { get }
}
