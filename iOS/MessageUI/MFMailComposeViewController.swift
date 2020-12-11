
@available(iOS 3.0, *)
enum MFMailComposeResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cancelled
  case saved
  case sent
  case failed
}
@available(iOS 3.0, *)
let MFMailComposeErrorDomain: String
@available(iOS 3.0, *)
struct MFMailComposeError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var saveFailed: MFMailComposeError.Code { get }
  static var sendFailed: MFMailComposeError.Code { get }
}
@available(iOS 3.0, *)
class MFMailComposeViewController : UINavigationController {
  class func canSendMail() -> Bool
  weak var mailComposeDelegate: @sil_weak MFMailComposeViewControllerDelegate?
  func setSubject(_ subject: String)
  func setToRecipients(_ toRecipients: [String]?)
  func setCcRecipients(_ ccRecipients: [String]?)
  func setBccRecipients(_ bccRecipients: [String]?)
  func setMessageBody(_ body: String, isHTML: Bool)
  func addAttachmentData(_ attachment: Data, mimeType: String, fileName filename: String)
  @available(iOS 11.0, *)
  func setPreferredSendingEmailAddress(_ emailAddress: String)
}
protocol MFMailComposeViewControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?)
}
