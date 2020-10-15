
@available(tvOS 10.0, *)
class HMZone : NSObject {
  var name: String { get }
  var rooms: [HMRoom] { get }
  @available(tvOS 9.0, *)
  var uniqueIdentifier: UUID { get }
}
