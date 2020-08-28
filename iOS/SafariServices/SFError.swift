
@available(iOS 10.0, *)
let SFErrorDomain: String
@available(iOS 10.0, *)
struct SFError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var noExtensionFound: SFError.Code { get }
  static var noAttachmentFound: SFError.Code { get }
  static var loadingInterrupted: SFError.Code { get }
}
