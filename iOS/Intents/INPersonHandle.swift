
@available(iOS 10.0, *)
enum INPersonHandleType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case emailAddress
  case phoneNumber
}
@available(iOS 10.0, *)
class INPersonHandle : NSObject, NSCopying, NSSecureCoding {
  var value: String? { get }
  var type: INPersonHandleType { get }
  @available(iOS 10.2, *)
  var label: INPersonHandleLabel? { get }
  @available(iOS 10.2, *)
  init(value: String?, type: INPersonHandleType, label: INPersonHandleLabel?)
  convenience init(value: String?, type: INPersonHandleType)
}
