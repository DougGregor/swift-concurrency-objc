
@available(macOS 10.10, *)
class WKNavigationResponse : NSObject {
  var isForMainFrame: Bool { get }
  @NSCopying var response: URLResponse { get }
  var canShowMIMEType: Bool { get }
}
