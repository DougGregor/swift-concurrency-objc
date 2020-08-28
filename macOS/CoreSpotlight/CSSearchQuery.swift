
@available(macOS 10.12, *)
let CSSearchQueryErrorDomain: String
@available(macOS 10.12, *)
struct CSSearchQueryError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: CSSearchQueryError.Code { get }
  static var indexUnreachable: CSSearchQueryError.Code { get }
  static var invalidQuery: CSSearchQueryError.Code { get }
  static var cancelled: CSSearchQueryError.Code { get }
}
@available(macOS 10.12, *)
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
