
@available(tvOS 10.0, *)
class HMRoom : NSObject {
  var name: String { get }
  var accessories: [HMAccessory] { get }
  @available(tvOS 9.0, *)
  var uniqueIdentifier: UUID { get }
}
