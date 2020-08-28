
extension CPNavigationAlert {
  @available(iOS 12.0, *)
  enum DismissalContext : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case timeout
    case userDismissed
    case systemDismissed
  }
}
let CPNavigationAlertMinimumDuration: TimeInterval
@available(iOS 12.0, *)
class CPNavigationAlert : NSObject, NSSecureCoding {
  @available(iOS, introduced: 12.0, deprecated: 13.0)
  init(titleVariants: [String], subtitleVariants: [String]?, imageSet: CPImageSet?, primaryAction: CPAlertAction, secondaryAction: CPAlertAction?, duration: TimeInterval)
  init(titleVariants: [String], subtitleVariants: [String]?, image: UIImage?, primaryAction: CPAlertAction, secondaryAction: CPAlertAction?, duration: TimeInterval)
  func updateTitleVariants(_ newTitleVariants: [String], subtitleVariants newSubtitleVariants: [String])
  var titleVariants: [String] { get }
  var subtitleVariants: [String] { get }
  @NSCopying var imageSet: CPImageSet? { get }
  @NSCopying var image: UIImage? { get }
  var primaryAction: CPAlertAction { get }
  var secondaryAction: CPAlertAction? { get }
  var duration: TimeInterval { get }
}
