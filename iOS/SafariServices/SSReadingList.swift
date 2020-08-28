
@available(iOS 7.0, *)
class SSReadingList : NSObject {
  class func `default`() -> SSReadingList?
  class func supportsURL(_ URL: URL) -> Bool
  func addItem(with URL: URL, title: String?, previewText: String?) throws
}
@available(iOS 7.0, *)
let SSReadingListErrorDomain: String
@available(iOS 7.0, *)
struct SSReadingListError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var urlSchemeNotAllowed: SSReadingListError.Code { get }
}
