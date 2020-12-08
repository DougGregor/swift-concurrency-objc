
@available(iOS 11.0, *)
let UIDocumentBrowserErrorDomain: String
@available(iOS 11.0, *)
struct UIDocumentBrowserError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var generic: UIDocumentBrowserError.Code { get }
  @available(iOS 12.0, *)
  static var noLocationAvailable: UIDocumentBrowserError.Code { get }
}
extension UIDocumentBrowserViewController {
  @available(iOS 11.0, *)
  enum ImportMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case copy
    case move
  }
  @available(iOS 11.0, *)
  enum BrowserUserInterfaceStyle : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case white
    case light
    case dark
  }
}
@available(iOS 11.0, *)
class UIDocumentBrowserViewController : UIViewController, NSCoding {
  @available(iOS, introduced: 11.0, deprecated: 14.0)
  init(forOpeningFilesWithContentTypes allowedContentTypes: [String]?)
  weak var delegate: @sil_weak UIDocumentBrowserViewControllerDelegate?
  var allowsDocumentCreation: Bool
  var allowsPickingMultipleItems: Bool
  @available(iOS, introduced: 11.0, deprecated: 14.0, message: "allowedContentTypes is no longer supported")
  var allowedContentTypes: [String] { get }
  @available(iOS, introduced: 11.0, deprecated: 14.0)
  var recentDocumentsContentTypes: [String] { get }
  @available(iOS 13.0, *)
  var shouldShowFileExtensions: Bool
  var additionalLeadingNavigationBarButtonItems: [UIBarButtonItem]
  var additionalTrailingNavigationBarButtonItems: [UIBarButtonItem]
  func revealDocument(at url: URL, importIfNeeded: Bool, completion: ((URL?, Error?) -> Void)? = nil)
  func revealDocument(at url: URL, importIfNeeded: Bool) async throws -> URL
  func importDocument(at documentURL: URL, nextToDocumentAt neighbourURL: URL, mode importMode: UIDocumentBrowserViewController.ImportMode, completionHandler completion: @escaping (URL?, Error?) -> Void)
  func importDocument(at documentURL: URL, nextToDocumentAt neighbourURL: URL, mode importMode: UIDocumentBrowserViewController.ImportMode) async throws -> URL
  @available(iOS 12.0, *)
  func transitionController(forDocumentAt documentURL: URL) -> UIDocumentBrowserTransitionController
  @available(iOS, introduced: 11.0, deprecated: 12.0)
  func transitionController(forDocumentURL documentURL: URL) -> UIDocumentBrowserTransitionController
  var customActions: [UIDocumentBrowserAction]
  var browserUserInterfaceStyle: UIDocumentBrowserViewController.BrowserUserInterfaceStyle
  @available(iOS 13.0, *)
  var localizedCreateDocumentActionTitle: String
  @available(iOS 13.0, *)
  var defaultDocumentAspectRatio: CGFloat
}
@available(iOS 11.0, *)
protocol UIDocumentBrowserViewControllerDelegate : NSObjectProtocol {
  @available(iOS, introduced: 11.0, deprecated: 12.0)
  @asyncHandler optional func documentBrowser(_ controller: UIDocumentBrowserViewController, didPickDocumentURLs documentURLs: [URL])
  @available(iOS 12.0, *)
  @asyncHandler optional func documentBrowser(_ controller: UIDocumentBrowserViewController, didPickDocumentsAt documentURLs: [URL])
  @asyncHandler optional func documentBrowser(_ controller: UIDocumentBrowserViewController, didRequestDocumentCreationWithHandler importHandler: @escaping (URL?, UIDocumentBrowserViewController.ImportMode) -> Void)
  @asyncHandler optional func documentBrowser(_ controller: UIDocumentBrowserViewController, didImportDocumentAt sourceURL: URL, toDestinationURL destinationURL: URL)
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, failedToImportDocumentAt documentURL: URL, error: Error?)
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, applicationActivitiesForDocumentURLs documentURLs: [URL]) -> [UIActivity]
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, willPresent activityViewController: UIActivityViewController)
}
@available(iOS 11.0, *)
class UIDocumentBrowserTransitionController : NSObject, UIViewControllerAnimatedTransitioning {
  var loadingProgress: Progress?
  weak var targetView: @sil_weak UIView?
}
