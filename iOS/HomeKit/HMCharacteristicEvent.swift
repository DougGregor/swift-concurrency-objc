
@available(iOS 9.0, *)
class HMCharacteristicEvent<TriggerValueType> : HMEvent, NSCopying, NSMutableCopying where TriggerValueType : NSCopying {
  init(characteristic: HMCharacteristic, triggerValue: TriggerValueType?)
  var characteristic: HMCharacteristic { get }
  @NSCopying var triggerValue: TriggerValueType? { get }
  @available(iOS, introduced: 9.0, deprecated: 11.0, message: "No longer supported.")
  func updateTriggerValue(_ triggerValue: TriggerValueType?, completionHandler completion: @escaping (Error?) -> Void)
  @available(iOS, introduced: 9.0, deprecated: 11.0, message: "No longer supported.")
  func updateTriggerValue(_ triggerValue: TriggerValueType?) async throws
}
@available(iOS 11.0, *)
class HMMutableCharacteristicEvent<TriggerValueType> : HMCharacteristicEvent<NSCopying> where TriggerValueType : NSCopying {
}
