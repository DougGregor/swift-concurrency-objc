
@available(watchOS 3.0, *)
class HMAccessoryProfile : NSObject {
  var uniqueIdentifier: UUID { get }
  var services: [HMService] { get }
  weak var accessory: @sil_weak HMAccessory? { get }
}
