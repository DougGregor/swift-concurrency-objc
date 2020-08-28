
@available(tvOS 10.0, *)
class HMZone : NSObject {
  var name: String { get }
  var rooms: [HMRoom] { get }
  @available(tvOS 9.0, *)
  var uniqueIdentifier: UUID { get }
  func updateName(_ name: String, completionHandler completion: @escaping (Error?) -> Void)
  func updateName(_ name: String) async throws
  func addRoom(_ room: HMRoom, completionHandler completion: @escaping (Error?) -> Void)
  func addRoom(_ room: HMRoom) async throws
  func removeRoom(_ room: HMRoom, completionHandler completion: @escaping (Error?) -> Void)
  func removeRoom(_ room: HMRoom) async throws
}
