
@available(macOS 11.0, *)
enum INPersonHandleType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case emailAddress
  case phoneNumber
}
@available(macOS 11.0, *)
class INPersonHandle : NSObject, NSCopying, NSSecureCoding {
  var value: String? { get }
  var type: INPersonHandleType { get }
  var label: INPersonHandleLabel? { get }
  init(value: String?, type: INPersonHandleType, label: INPersonHandleLabel?)
  convenience init(value: String?, type: INPersonHandleType)
}
