
struct AVAudioTimePitchAlgorithm : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVAudioTimePitchAlgorithm {
  @available(macOS 10.9, *)
  static let timeDomain: AVAudioTimePitchAlgorithm
  @available(macOS 10.9, *)
  static let spectral: AVAudioTimePitchAlgorithm
  @available(macOS 10.9, *)
  static let varispeed: AVAudioTimePitchAlgorithm
}
