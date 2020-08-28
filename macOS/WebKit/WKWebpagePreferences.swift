
extension WKWebpagePreferences {
  enum ContentMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case recommended
    case mobile
    case desktop
  }
}
@available(macOS 10.15, *)
class WKWebpagePreferences : NSObject {
  var preferredContentMode: WKWebpagePreferences.ContentMode
  @available(macOS 11.0, *)
  var allowsContentJavaScript: Bool
}
