
@available(macOS 10.15, *)
class MLKey : NSObject, NSCopying, NSSecureCoding {
  var name: String { get }
  var scope: String? { get }
}
