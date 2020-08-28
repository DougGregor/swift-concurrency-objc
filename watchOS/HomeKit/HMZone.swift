
@available(watchOS 2.0, *)
class HMZone : NSObject {
  var name: String { get }
  var rooms: [HMRoom] { get }
  @available(watchOS 2.0, *)
  var uniqueIdentifier: UUID { get }
  func updateName(_ name: String, completionHandler completion: @escaping (Error?) -> Void)
  func addRoom(_ room: HMRoom, completionHandler completion: @escaping (Error?) -> Void)
  func removeRoom(_ room: HMRoom, completionHandler completion: @escaping (Error?) -> Void)
}
