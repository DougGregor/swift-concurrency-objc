
@available(iOS 10.0, *)
class HMCameraProfile : HMAccessoryProfile {
  var streamControl: HMCameraStreamControl? { get }
  var snapshotControl: HMCameraSnapshotControl? { get }
  var settingsControl: HMCameraSettingsControl? { get }
  var speakerControl: HMCameraAudioControl? { get }
  var microphoneControl: HMCameraAudioControl? { get }
}
