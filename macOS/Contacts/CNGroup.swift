
@available(macOS 10.11, *)
class CNGroup : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var identifier: String { get }
  var name: String { get }
}
@available(macOS 10.11, *)
let CNGroupIdentifierKey: String
@available(macOS 10.11, *)
let CNGroupNameKey: String
