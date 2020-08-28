
@available(iOS 8.0, *)
class WKBackForwardListItem : NSObject {
  var url: URL { get }
  var title: String? { get }
  var initialURL: URL { get }
}
