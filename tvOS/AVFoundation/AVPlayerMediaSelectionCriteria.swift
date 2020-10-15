
@available(tvOS 9.0, *)
class AVPlayerMediaSelectionCriteria : NSObject {
  var preferredLanguages: [String]? { get }
  var preferredMediaCharacteristics: [AVMediaCharacteristic]? { get }
  @available(tvOS 12.0, *)
  var principalMediaCharacteristics: [AVMediaCharacteristic]? { get }
  init(preferredLanguages: [String]?, preferredMediaCharacteristics: [AVMediaCharacteristic]?)
  @available(tvOS 12.0, *)
  init(principalMediaCharacteristics: [AVMediaCharacteristic]?, preferredLanguages: [String]?, preferredMediaCharacteristics: [AVMediaCharacteristic]?)
}
