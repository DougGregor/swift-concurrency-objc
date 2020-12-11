
protocol QLPreviewingController : NSObjectProtocol {
  optional func preparePreviewOfSearchableItem(identifier: String, queryString: String?, completionHandler handler: @escaping (Error?) -> Void)
  optional func preparePreviewOfSearchableItem(identifier: String, queryString: String?) async throws
  optional func preparePreviewOfFile(at url: URL, completionHandler handler: @escaping (Error?) -> Void)
  optional func preparePreviewOfFile(at url: URL) async throws
}
