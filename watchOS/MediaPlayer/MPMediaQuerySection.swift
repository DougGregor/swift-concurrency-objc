
@available(watchOS 2.0, *)
class MPMediaQuerySection : NSObject, NSSecureCoding, NSCopying {
  var title: String { get }
  var range: NSRange { get }
}
