
@available(watchOS 2.0, *)
class HMCharacteristicEvent<TriggerValueType> : HMEvent, NSCopying, NSMutableCopying where TriggerValueType : NSCopying {
  init(characteristic: HMCharacteristic, triggerValue: TriggerValueType?)
  var characteristic: HMCharacteristic { get }
  @NSCopying var triggerValue: TriggerValueType? { get }
  @available(watchOS, introduced: 2.0, deprecated: 4.0, message: "No longer supported.")
  func updateTriggerValue(_ triggerValue: TriggerValueType?, completionHandler completion: @escaping (Error?) -> Void)
}
@available(watchOS 4.0, *)
class HMMutableCharacteristicEvent<TriggerValueType> : HMCharacteristicEvent<NSCopying> where TriggerValueType : NSCopying {
}
