
@available(watchOS 3.2, *)
enum INPersonHandleType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case emailAddress
  case phoneNumber
}
@available(watchOS 3.2, *)
class INPersonHandle : NSObject, NSCopying, NSSecureCoding {
  var value: String? { get }
  var type: INPersonHandleType { get }
  @available(watchOS 3.2, *)
  var label: INPersonHandleLabel? { get }
  @available(watchOS 3.2, *)
  init(value: String?, type: INPersonHandleType, label: INPersonHandleLabel?)
  convenience init(value: String?, type: INPersonHandleType)
}
