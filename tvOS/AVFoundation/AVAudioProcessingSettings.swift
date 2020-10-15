
struct AVAudioTimePitchAlgorithm : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVAudioTimePitchAlgorithm {
  @available(tvOS 9.0, *)
  static let lowQualityZeroLatency: AVAudioTimePitchAlgorithm
  @available(tvOS 9.0, *)
  static let timeDomain: AVAudioTimePitchAlgorithm
  @available(tvOS 9.0, *)
  static let spectral: AVAudioTimePitchAlgorithm
  @available(tvOS 9.0, *)
  static let varispeed: AVAudioTimePitchAlgorithm
}
