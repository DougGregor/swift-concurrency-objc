
@available(watchOS 2.0, *)
class HMCharacteristicEvent<TriggerValueType> : HMEvent, NSCopying, NSMutableCopying where TriggerValueType : NSCopying {
  var characteristic: HMCharacteristic { get }
  @NSCopying var triggerValue: TriggerValueType? { get }
}
@available(watchOS 4.0, *)
class HMMutableCharacteristicEvent<TriggerValueType> : HMCharacteristicEvent<NSCopying> where TriggerValueType : NSCopying {
}
