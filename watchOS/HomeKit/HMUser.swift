
@available(watchOS 2.0, *)
class HMUser : NSObject {
  var name: String { get }
  @available(watchOS 2.0, *)
  var uniqueIdentifier: UUID { get }
}
