
@available(macOS 10.11, *)
class WKWebsiteDataStore : NSObject, NSSecureCoding {
  class func `default`() -> WKWebsiteDataStore
  class func nonPersistent() -> WKWebsiteDataStore
  var isPersistent: Bool { get }
  class func allWebsiteDataTypes() -> Set<String>
  func fetchDataRecords(ofTypes dataTypes: Set<String>, completionHandler: @escaping ([WKWebsiteDataRecord]) -> Void)
  func removeData(ofTypes dataTypes: Set<String>, for dataRecords: [WKWebsiteDataRecord], completionHandler: @escaping () -> Void)
  func removeData(ofTypes dataTypes: Set<String>, modifiedSince date: Date, completionHandler: @escaping () -> Void)
  @available(macOS 10.13, *)
  var httpCookieStore: WKHTTPCookieStore { get }
}
