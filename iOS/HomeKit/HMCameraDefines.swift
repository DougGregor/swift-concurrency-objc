
@available(iOS 10.0, *)
enum HMCameraStreamState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case starting
  case streaming
  case stopping
  case notStreaming
}
@available(iOS 10.0, *)
enum HMCameraAudioStreamSetting : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case muted
  case incomingAudioAllowed
  case bidirectionalAudioAllowed
}
