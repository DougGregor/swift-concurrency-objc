
struct AVAudioTimePitchAlgorithm : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVAudioTimePitchAlgorithm {
  @available(watchOS 1.0, *)
  static let lowQualityZeroLatency: AVAudioTimePitchAlgorithm
  @available(watchOS 1.0, *)
  static let timeDomain: AVAudioTimePitchAlgorithm
  @available(watchOS 1.0, *)
  static let spectral: AVAudioTimePitchAlgorithm
  @available(watchOS 1.0, *)
  static let varispeed: AVAudioTimePitchAlgorithm
}
