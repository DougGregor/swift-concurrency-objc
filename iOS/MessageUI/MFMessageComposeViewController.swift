
@available(iOS 4.0, *)
enum MessageComposeResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cancelled
  case sent
  case failed
}
let MFMessageComposeViewControllerAttachmentURL: String
let MFMessageComposeViewControllerAttachmentAlternateFilename: String
extension NSNotification.Name {
  @available(iOS 5.0, *)
  static let MFMessageComposeViewControllerTextMessageAvailabilityDidChange: NSNotification.Name
}
@available(iOS 5.0, *)
let MFMessageComposeViewControllerTextMessageAvailabilityKey: String
@available(iOS 4.0, *)
class MFMessageComposeViewController : UINavigationController {
  class func canSendText() -> Bool
  @available(iOS 7.0, *)
  class func canSendSubject() -> Bool
  @available(iOS 7.0, *)
  class func canSendAttachments() -> Bool
  @available(iOS 7.0, *)
  class func isSupportedAttachmentUTI(_ uti: String) -> Bool
  weak var messageComposeDelegate: @sil_weak MFMessageComposeViewControllerDelegate?
  @available(iOS 7.0, *)
  func disableUserAttachments()
  var recipients: [String]?
  var body: String?
  @available(iOS 7.0, *)
  var subject: String?
  @available(iOS 7.0, *)
  var attachments: [[AnyHashable : Any]]? { get }
  @available(iOS 7.0, *)
  func addAttachmentURL(_ attachmentURL: URL, withAlternateFilename alternateFilename: String?) -> Bool
  @available(iOS 7.0, *)
  func addAttachmentData(_ attachmentData: Data, typeIdentifier uti: String, filename: String) -> Bool
}
protocol MFMessageComposeViewControllerDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  @asyncHandler func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult)
}
