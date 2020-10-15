
@available(watchOS 2.0, *)
class HMZone : NSObject {
  var name: String { get }
  var rooms: [HMRoom] { get }
  @available(watchOS 2.0, *)
  var uniqueIdentifier: UUID { get }
}
