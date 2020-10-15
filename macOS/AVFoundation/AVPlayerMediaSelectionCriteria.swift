
@available(macOS 10.9, *)
class AVPlayerMediaSelectionCriteria : NSObject {
  var preferredLanguages: [String]? { get }
  var preferredMediaCharacteristics: [AVMediaCharacteristic]? { get }
  @available(macOS 10.14, *)
  var principalMediaCharacteristics: [AVMediaCharacteristic]? { get }
  init(preferredLanguages: [String]?, preferredMediaCharacteristics: [AVMediaCharacteristic]?)
  @available(macOS 10.14, *)
  init(principalMediaCharacteristics: [AVMediaCharacteristic]?, preferredLanguages: [String]?, preferredMediaCharacteristics: [AVMediaCharacteristic]?)
}
