
@available(tvOS 10.0, *)
class HMCharacteristicWriteAction<TargetValueType> : HMAction where TargetValueType : NSCopying {
  init(characteristic: HMCharacteristic, targetValue: TargetValueType)
  var characteristic: HMCharacteristic { get }
  @NSCopying var targetValue: TargetValueType { get }
  func updateTargetValue(_ targetValue: TargetValueType, completionHandler completion: @escaping (Error?) -> Void)
  func updateTargetValue(_ targetValue: TargetValueType) async throws
}
