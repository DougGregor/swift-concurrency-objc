
@available(tvOS 10.0, *)
class HMServiceGroup : NSObject {
  var name: String { get }
  var services: [HMService] { get }
  @available(tvOS 9.0, *)
  var uniqueIdentifier: UUID { get }
}
