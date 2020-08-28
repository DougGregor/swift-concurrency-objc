
@available(macOS 10.10, *)
class WKBackForwardListItem : NSObject {
  var url: URL { get }
  var title: String? { get }
  var initialURL: URL { get }
}
