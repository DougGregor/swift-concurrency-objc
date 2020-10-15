
@available(macOS 10.11, *)
enum CNContainerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unassigned
  case local
  case exchange
  case cardDAV
}
@available(macOS 10.11, *)
class CNContainer : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var name: String { get }
  var type: CNContainerType { get }
}
@available(macOS 10.11, *)
let CNContainerIdentifierKey: String
@available(macOS 10.11, *)
let CNContainerNameKey: String
@available(macOS 10.11, *)
let CNContainerTypeKey: String
