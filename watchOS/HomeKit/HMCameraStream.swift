
@available(watchOS 3.0, *)
class HMCameraStream : HMCameraSource {
  var audioStreamSetting: HMCameraAudioStreamSetting { get }
  @available(watchOS, introduced: 3.0, deprecated: 3.0)
  func setAudioStreamSetting(_ audioStreamSetting: HMCameraAudioStreamSetting)
  func updateAudioStreamSetting(_ audioStreamSetting: HMCameraAudioStreamSetting, completionHandler completion: @escaping (Error?) -> Void)
  func updateAudioStreamSetting(_ audioStreamSetting: HMCameraAudioStreamSetting) async throws
}
