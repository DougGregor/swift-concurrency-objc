
@available(watchOS 2.0, *)
class HKDeletedObject : NSObject, NSSecureCoding {
  var uuid: UUID { get }
  @available(watchOS 4.0, *)
  var metadata: [String : Any]? { get }
}
