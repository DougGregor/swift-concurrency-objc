
@available(macOS 10.12, *)
class NSQueryGenerationToken : NSObject, NSCopying, NSSecureCoding {
  class var current: NSQueryGenerationToken { get }
}
