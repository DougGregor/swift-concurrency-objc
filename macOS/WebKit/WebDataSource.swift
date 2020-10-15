
@available(macOS, introduced: 10.3, deprecated: 10.14)
class WebDataSource : NSObject {
  init!(request: URLRequest!)
  var data: Data! { get }
  var representation: WebDocumentRepresentation! { get }
  var initialRequest: URLRequest! { get }
  var request: NSMutableURLRequest! { get }
  var response: URLResponse! { get }
  var textEncodingName: String! { get }
  var isLoading: Bool { get }
  var pageTitle: String! { get }
  var unreachableURL: URL! { get }
  var webArchive: WebArchive! { get }
  var mainResource: WebResource! { get }
  var subresources: [Any]! { get }
  func subresource(for URL: URL!) -> WebResource!
  func addSubresource(_ subresource: WebResource!)
}
