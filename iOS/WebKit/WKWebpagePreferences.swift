
extension WKWebpagePreferences {
  @available(iOS 13.0, *)
  enum ContentMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case recommended
    case mobile
    case desktop
  }
}
@available(iOS 13.0, *)
class WKWebpagePreferences : NSObject {
  @available(iOS 13.0, *)
  var preferredContentMode: WKWebpagePreferences.ContentMode
  @available(iOS 14.0, *)
  var allowsContentJavaScript: Bool
}
