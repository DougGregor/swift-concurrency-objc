
@available(tvOS 13.0, *)
let TVDocumentErrorDomain: String
@available(tvOS 13.0, *)
struct TVDocumentError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var failed: TVDocumentError.Code { get }
  static var cancelled: TVDocumentError.Code { get }
}
extension TVDocumentViewController {
  @available(tvOS 13.0, *)
  struct Event : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension TVDocumentViewController.Event {
  @available(tvOS 13.0, *)
  static let play: TVDocumentViewController.Event
  @available(tvOS 13.0, *)
  static let select: TVDocumentViewController.Event
  @available(tvOS 13.0, *)
  static let holdSelect: TVDocumentViewController.Event
  @available(tvOS 13.0, *)
  static let highlight: TVDocumentViewController.Event
  @available(tvOS 13.0, *)
  static let load: TVDocumentViewController.Event
  @available(tvOS 13.0, *)
  static let unload: TVDocumentViewController.Event
  @available(tvOS 13.0, *)
  static let appear: TVDocumentViewController.Event
  @available(tvOS 13.0, *)
  static let disappear: TVDocumentViewController.Event
}
@available(tvOS 13.0, *)
protocol TVDocumentViewControllerDelegate : NSObjectProtocol {
  optional func documentViewControllerWillUpdate(_ documentViewController: TVDocumentViewController)
  @asyncHandler optional func documentViewControllerDidUpdate(_ documentViewController: TVDocumentViewController)
  @asyncHandler optional func documentViewController(_ documentViewController: TVDocumentViewController, didUpdateWithContext context: [String : Any])
  @asyncHandler optional func documentViewController(_ documentViewController: TVDocumentViewController, didFailUpdateWithError error: Error)
  optional func documentViewController(_ documentViewController: TVDocumentViewController, handleEvent event: TVDocumentViewController.Event, with element: TVViewElement) -> Bool
}
@available(tvOS 13.0, *)
class TVDocumentViewController : UIViewController {
  var documentContext: [String : Any] { get }
  weak var appController: @sil_weak TVApplicationController? { get }
  weak var delegate: @sil_weak TVDocumentViewControllerDelegate?
  convenience init(context: [String : Any], for appController: TVApplicationController)
  func update(using context: [String : Any])
}
