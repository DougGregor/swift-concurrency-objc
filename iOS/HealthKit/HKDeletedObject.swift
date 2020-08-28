
@available(iOS 9.0, *)
class HKDeletedObject : NSObject, NSSecureCoding {
  var uuid: UUID { get }
  @available(iOS 11.0, *)
  var metadata: [String : Any]? { get }
}
