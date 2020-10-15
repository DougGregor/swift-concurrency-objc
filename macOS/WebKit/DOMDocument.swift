
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMDocument : DOMNode {
  var doctype: DOMDocumentType! { get }
  var implementation: DOMImplementation! { get }
  var documentElement: DOMElement! { get }
  @available(macOS 10.5, *)
  var inputEncoding: String! { get }
  @available(macOS 10.5, *)
  var xmlEncoding: String! { get }
  @available(macOS 10.5, *)
  var xmlVersion: String!
  @available(macOS 10.5, *)
  var xmlStandalone: Bool
  @available(macOS 10.5, *)
  var documentURI: String!
  var defaultView: DOMAbstractView! { get }
  var styleSheets: DOMStyleSheetList! { get }
  var title: String!
  var referrer: String! { get }
  var domain: String! { get }
  var url: String! { get }
  var cookie: String!
  var body: DOMHTMLElement!
  var images: DOMHTMLCollection! { get }
  var applets: DOMHTMLCollection! { get }
  var links: DOMHTMLCollection! { get }
  var forms: DOMHTMLCollection! { get }
  var anchors: DOMHTMLCollection! { get }
  @available(macOS 10.6, *)
  var lastModified: String! { get }
  @available(macOS 10.5, *)
  var charset: String!
  @available(macOS 10.5, *)
  var defaultCharset: String! { get }
  @available(macOS 10.5, *)
  var readyState: String! { get }
  @available(macOS 10.5, *)
  var characterSet: String! { get }
  @available(macOS 10.5, *)
  var preferredStylesheetSet: String! { get }
  @available(macOS 10.5, *)
  var selectedStylesheetSet: String!
  @available(macOS 10.6, *)
  var activeElement: DOMElement! { get }
  func createElement(_ tagName: String!) -> DOMElement!
  func createDocumentFragment() -> DOMDocumentFragment!
  func createTextNode(_ data: String!) -> DOMText!
  func createComment(_ data: String!) -> DOMComment!
  func createCDATASection(_ data: String!) -> DOMCDATASection!
  @available(macOS 10.5, *)
  func createProcessingInstruction(_ target: String!, data: String!) -> DOMProcessingInstruction!
  func createAttribute(_ name: String!) -> DOMAttr!
  func createEntityReference(_ name: String!) -> DOMEntityReference!
  func getElementsByTagName(_ tagname: String!) -> DOMNodeList!
  @available(macOS 10.5, *)
  func `import`(_ importedNode: DOMNode!, deep: Bool) -> DOMNode!
  @available(macOS 10.5, *)
  func createElementNS(_ namespaceURI: String!, qualifiedName: String!) -> DOMElement!
  @available(macOS 10.5, *)
  func createAttributeNS(_ namespaceURI: String!, qualifiedName: String!) -> DOMAttr!
  @available(macOS 10.5, *)
  func getElementsByTagNameNS(_ namespaceURI: String!, localName: String!) -> DOMNodeList!
  @available(macOS 10.5, *)
  func adoptNode(_ source: DOMNode!) -> DOMNode!
  func createEvent(_ eventType: String!) -> DOMEvent!
  func createRange() -> DOMRange!
  @available(macOS 10.5, *)
  func createNodeIterator(_ root: DOMNode!, whatToShow: UInt32, filter: DOMNodeFilter!, expandEntityReferences: Bool) -> DOMNodeIterator!
  @available(macOS 10.5, *)
  func createTreeWalker(_ root: DOMNode!, whatToShow: UInt32, filter: DOMNodeFilter!, expandEntityReferences: Bool) -> DOMTreeWalker!
  @available(macOS 10.5, *)
  func getOverrideStyle(_ element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
  @available(macOS 10.5, *)
  func createExpression(_ expression: String!, resolver: DOMXPathNSResolver!) -> DOMXPathExpression!
  @available(macOS 10.5, *)
  func createNSResolver(_ nodeResolver: DOMNode!) -> DOMXPathNSResolver!
  @available(macOS 10.5, *)
  func evaluate(_ expression: String!, contextNode: DOMNode!, resolver: DOMXPathNSResolver!, type: UInt16, in inResult: DOMXPathResult!) -> DOMXPathResult!
  @available(macOS 10.5, *)
  func execCommand(_ command: String!, userInterface: Bool, value: String!) -> Bool
  @available(macOS 10.5, *)
  func execCommand(_ command: String!, userInterface: Bool) -> Bool
  @available(macOS 10.5, *)
  func execCommand(_ command: String!) -> Bool
  @available(macOS 10.5, *)
  func queryCommandEnabled(_ command: String!) -> Bool
  @available(macOS 10.5, *)
  func queryCommandIndeterm(_ command: String!) -> Bool
  @available(macOS 10.5, *)
  func queryCommandState(_ command: String!) -> Bool
  @available(macOS 10.5, *)
  func queryCommandSupported(_ command: String!) -> Bool
  @available(macOS 10.5, *)
  func queryCommandValue(_ command: String!) -> String!
  func getElementsByName(_ elementName: String!) -> DOMNodeList!
  @available(macOS 10.5, *)
  func element(fromPoint x: Int32, y: Int32) -> DOMElement!
  @available(macOS 10.5, *)
  func createCSSStyleDeclaration() -> DOMCSSStyleDeclaration!
  @available(macOS 10.5, *)
  func getComputedStyle(_ element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
  @available(macOS 10.5, *)
  func getMatchedCSSRules(_ element: DOMElement!, pseudoElement: String!) -> DOMCSSRuleList!
  @available(macOS 10.5, *)
  func getMatchedCSSRules(_ element: DOMElement!, pseudoElement: String!, authorOnly: Bool) -> DOMCSSRuleList!
  @available(macOS 10.6, *)
  func getElementsByClassName(_ classNames: String!) -> DOMNodeList!
  @available(macOS 10.6, *)
  func hasFocus() -> Bool
  @available(macOS 10.6, *)
  func webkitCancelFullScreen()
  func getElementById(_ elementId: String!) -> DOMElement!
  @available(macOS 10.6, *)
  func querySelector(_ selectors: String!) -> DOMElement!
  @available(macOS 10.6, *)
  func querySelectorAll(_ selectors: String!) -> DOMNodeList!
}
extension DOMDocument {
}
