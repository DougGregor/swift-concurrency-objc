
extension CXHandle {
  @available(macOS 11.0, *)
  enum HandleType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case generic
    case phoneNumber
    case emailAddress
  }
}
@available(macOS 11.0, *)
class CXHandle : NSObject, NSCopying, NSSecureCoding {
  var type: CXHandle.HandleType { get }
  var value: String { get }
  init(type: CXHandle.HandleType, value: String)
}
