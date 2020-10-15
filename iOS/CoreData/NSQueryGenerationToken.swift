
@available(iOS 10.0, *)
class NSQueryGenerationToken : NSObject, NSCopying, NSSecureCoding {
  class var current: NSQueryGenerationToken { get }
}
