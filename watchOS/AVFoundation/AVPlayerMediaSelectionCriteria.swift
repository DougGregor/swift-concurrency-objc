
@available(watchOS 1.0, *)
class AVPlayerMediaSelectionCriteria : NSObject {
  var preferredLanguages: [String]? { get }
  var preferredMediaCharacteristics: [AVMediaCharacteristic]? { get }
  @available(watchOS 5.0, *)
  var principalMediaCharacteristics: [AVMediaCharacteristic]? { get }
  init(preferredLanguages: [String]?, preferredMediaCharacteristics: [AVMediaCharacteristic]?)
  @available(watchOS 5.0, *)
  init(principalMediaCharacteristics: [AVMediaCharacteristic]?, preferredLanguages: [String]?, preferredMediaCharacteristics: [AVMediaCharacteristic]?)
}
