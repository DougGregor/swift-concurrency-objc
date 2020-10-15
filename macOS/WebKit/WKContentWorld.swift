
@available(macOS 11.0, *)
class WKContentWorld : NSObject {
  class var page: WKContentWorld { get }
  class var defaultClient: WKContentWorld { get }
  class func world(name: String) -> WKContentWorld
  var name: String? { get }
}
