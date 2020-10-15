
@available(watchOS 2.0, *)
class HMRoom : NSObject {
  var name: String { get }
  var accessories: [HMAccessory] { get }
  @available(watchOS 2.0, *)
  var uniqueIdentifier: UUID { get }
}
