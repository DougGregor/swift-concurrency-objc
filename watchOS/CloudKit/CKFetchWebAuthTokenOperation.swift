
@available(watchOS 3.0, *)
class CKFetchWebAuthTokenOperation : CKDatabaseOperation {
  convenience init(apiToken APIToken: String)
  var apiToken: String?
  var fetchWebAuthTokenCompletionBlock: ((String?, Error?) -> Void)?
}
