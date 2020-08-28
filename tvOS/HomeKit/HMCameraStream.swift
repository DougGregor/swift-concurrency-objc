
@available(tvOS 10.0, *)
class HMCameraStream : HMCameraSource {
  var audioStreamSetting: HMCameraAudioStreamSetting { get }
  @available(tvOS, introduced: 10.0, deprecated: 10.0)
  func setAudioStreamSetting(_ audioStreamSetting: HMCameraAudioStreamSetting)
  func updateAudioStreamSetting(_ audioStreamSetting: HMCameraAudioStreamSetting, completionHandler completion: @escaping (Error?) -> Void)
  func updateAudioStreamSetting(_ audioStreamSetting: HMCameraAudioStreamSetting) async throws
}
