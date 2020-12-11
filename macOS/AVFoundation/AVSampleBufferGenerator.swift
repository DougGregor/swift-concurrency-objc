
@available(macOS 10.10, *)
class AVSampleBufferGenerator : NSObject {
  init(asset: AVAsset, timebase: CMTimebase?)
  func createSampleBuffer(for request: AVSampleBufferRequest) -> CMSampleBuffer?
  class func notifyOfDataReady(for sbuf: CMSampleBuffer, completionHandler: @escaping (Bool, Error) -> Void)
  class func notifyOfDataReady(for sbuf: CMSampleBuffer) async -> (Bool, Error)
}
extension AVSampleBufferRequest {
  enum Direction : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case forward
    case none
    case reverse
  }
  enum Mode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case immediate
    case scheduled
    case opportunistic
  }
}
@available(macOS 10.10, *)
class AVSampleBufferRequest : NSObject {
  init(start startCursor: AVSampleCursor)
  var startCursor: AVSampleCursor { get }
  var direction: AVSampleBufferRequest.Direction
  var limitCursor: AVSampleCursor?
  var preferredMinSampleCount: Int
  var maxSampleCount: Int
  var mode: AVSampleBufferRequest.Mode
  var overrideTime: CMTime
}
