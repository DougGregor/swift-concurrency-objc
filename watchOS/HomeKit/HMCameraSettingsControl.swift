
@available(watchOS 3.0, *)
class HMCameraSettingsControl : HMCameraControl {
  var nightVision: HMCharacteristic? { get }
  var currentHorizontalTilt: HMCharacteristic? { get }
  var targetHorizontalTilt: HMCharacteristic? { get }
  var currentVerticalTilt: HMCharacteristic? { get }
  var targetVerticalTilt: HMCharacteristic? { get }
  var opticalZoom: HMCharacteristic? { get }
  var digitalZoom: HMCharacteristic? { get }
  var imageRotation: HMCharacteristic? { get }
  var imageMirroring: HMCharacteristic? { get }
}
