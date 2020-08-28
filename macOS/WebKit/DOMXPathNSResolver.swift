
@available(macOS, introduced: 10.5, deprecated: 10.14)
protocol DOMXPathNSResolver : NSObjectProtocol {
  func lookupNamespaceURI(_ prefix: String!) -> String!
}
