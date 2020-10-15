
extension SFSafariViewController {
  @available(iOS 11.0, *)
  enum DismissButtonStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case done
    case close
    case cancel
  }
}
@available(iOS 9.0, *)
class SFSafariViewController : UIViewController {
  @available(iOS 11.0, *)
  init(url URL: URL, configuration: SFSafariViewController.Configuration)
  @available(iOS, introduced: 9.0, deprecated: 11.0)
  init(url URL: URL, entersReaderIfAvailable: Bool)
  convenience init(url URL: URL)
  weak var delegate: @sil_weak SFSafariViewControllerDelegate?
  @available(iOS 11.0, *)
  @NSCopying var configuration: SFSafariViewController.Configuration { get }
  @available(iOS 10.0, *)
  var preferredBarTintColor: UIColor?
  @available(iOS 10.0, *)
  var preferredControlTintColor: UIColor?
  @available(iOS 11.0, *)
  var dismissButtonStyle: SFSafariViewController.DismissButtonStyle
}
@available(iOS 9.0, *)
protocol SFSafariViewControllerDelegate : NSObjectProtocol {
  optional func safariViewController(_ controller: SFSafariViewController, activityItemsFor URL: URL, title: String?) -> [UIActivity]
  @available(iOS 11.0, *)
  optional func safariViewController(_ controller: SFSafariViewController, excludedActivityTypesFor URL: URL, title: String?) -> [UIActivity.ActivityType]
  @asyncHandler optional func safariViewControllerDidFinish(_ controller: SFSafariViewController)
  @asyncHandler optional func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool)
  @available(iOS 11.0, *)
  optional func safariViewController(_ controller: SFSafariViewController, initialLoadDidRedirectTo URL: URL)
  @available(iOS 14.0, *)
  optional func safariViewControllerWillOpenInBrowser(_ controller: SFSafariViewController)
}
