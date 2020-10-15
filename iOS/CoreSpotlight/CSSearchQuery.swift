
@available(iOS 10.0, *)
let CSSearchQueryErrorDomain: String
@available(iOS 10.0, *)
struct CSSearchQueryError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: CSSearchQueryError.Code { get }
  static var indexUnreachable: CSSearchQueryError.Code { get }
  static var invalidQuery: CSSearchQueryError.Code { get }
  static var cancelled: CSSearchQueryError.Code { get }
}
@available(iOS 10.0, *)
class CSSearchQuery : NSObject {
  init(queryString: String, attributes: [String]?)
  var isCancelled: Bool { get }
  var foundItemCount: Int { get }
  var foundItemsHandler: (([CSSearchableItem]) -> Void)?
  var completionHandler: ((Error?) -> Void)?
  var protectionClasses: [FileProtectionType]
  func start()
  func cancel()
}
