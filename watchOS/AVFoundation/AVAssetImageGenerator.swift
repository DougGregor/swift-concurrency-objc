
extension AVAssetImageGenerator {
  struct ApertureMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  enum Result : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case succeeded
    case failed
    case cancelled
  }
}
extension AVAssetImageGenerator.ApertureMode {
}
typealias AVAssetImageGeneratorCompletionHandler = (CMTime, CGImage?, CMTime, AVAssetImageGenerator.Result, Error?) -> Void
