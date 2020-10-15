
@available(iOS 11.0, *)
class WKContentRuleListStore : NSObject {
  class func `default`() -> Self!
  convenience init!(url: URL!)
  func compileContentRuleList(forIdentifier identifier: String!, encodedContentRuleList: String!, completionHandler: ((WKContentRuleList?, Error?) -> Void)!)
  func lookUpContentRuleList(forIdentifier identifier: String!, completionHandler: ((WKContentRuleList?, Error?) -> Void)!)
  func removeContentRuleList(forIdentifier identifier: String!, completionHandler: ((Error?) -> Void)!)
  func getAvailableContentRuleListIdentifiers(_ completionHandler: (([String]?) -> Void)!)
}
