
@available(tvOS 10.0, *)
class HMCharacteristicWriteAction<TargetValueType> : HMAction where TargetValueType : NSCopying {
  var characteristic: HMCharacteristic { get }
  @NSCopying var targetValue: TargetValueType { get }
}
