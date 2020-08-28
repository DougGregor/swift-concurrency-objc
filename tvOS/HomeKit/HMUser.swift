
@available(tvOS 10.0, *)
class HMUser : NSObject {
  var name: String { get }
  @available(tvOS 9.0, *)
  var uniqueIdentifier: UUID { get }
}
