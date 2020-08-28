
@available(tvOS 13.0, *)
enum INCallAudioRoute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case speakerphoneAudioRoute
  case bluetoothAudioRoute
}
