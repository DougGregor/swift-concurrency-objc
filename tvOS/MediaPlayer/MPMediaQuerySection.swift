
@available(tvOS 4.2, *)
class MPMediaQuerySection : NSObject, NSSecureCoding, NSCopying {
  var title: String { get }
  var range: NSRange { get }
}
