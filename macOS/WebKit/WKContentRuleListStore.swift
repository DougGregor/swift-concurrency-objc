
@available(macOS 10.13, *)
class WKContentRuleListStore : NSObject {
  class func `default`() -> Self!
  convenience init!(url: URL!)
  func compileContentRuleList(forIdentifier identifier: String!, encodedContentRuleList: String!, completionHandler: ((WKContentRuleList?, Error?) -> Void)!)
  func compileContentRuleList(forIdentifier identifier: String!, encodedContentRuleList: String!) async throws -> WKContentRuleList?
  func lookUpContentRuleList(forIdentifier identifier: String!, completionHandler: ((WKContentRuleList?, Error?) -> Void)!)
  func lookUpContentRuleList(forIdentifier identifier: String!) async throws -> WKContentRuleList?
  func removeContentRuleList(forIdentifier identifier: String!, completionHandler: ((Error?) -> Void)!)
  func removeContentRuleList(forIdentifier identifier: String!) async throws
  func getAvailableContentRuleListIdentifiers(_ completionHandler: (([String]?) -> Void)!)
}
