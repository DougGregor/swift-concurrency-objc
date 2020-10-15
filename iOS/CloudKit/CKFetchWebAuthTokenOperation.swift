
@available(iOS 9.2, *)
class CKFetchWebAuthTokenOperation : CKDatabaseOperation {
  convenience init(apiToken APIToken: String)
  var apiToken: String?
  var fetchWebAuthTokenCompletionBlock: ((String?, Error?) -> Void)?
}
