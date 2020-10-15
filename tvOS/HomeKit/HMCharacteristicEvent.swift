
@available(tvOS 10.0, *)
class HMCharacteristicEvent<TriggerValueType> : HMEvent, NSCopying, NSMutableCopying where TriggerValueType : NSCopying {
  var characteristic: HMCharacteristic { get }
  @NSCopying var triggerValue: TriggerValueType? { get }
}
@available(tvOS 11.0, *)
class HMMutableCharacteristicEvent<TriggerValueType> : HMCharacteristicEvent<NSCopying> where TriggerValueType : NSCopying {
}
