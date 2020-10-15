
extension AVAssetReader {
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case reading
    case completed
    case failed
    case cancelled
  }
}
@available(macOS 10.7, *)
class AVAssetReader : NSObject {
  init(asset: AVAsset) throws
  var asset: AVAsset { get }
  var status: AVAssetReader.Status { get }
  var error: Error? { get }
  var timeRange: CMTimeRange
  var outputs: [AVAssetReaderOutput] { get }
  func canAdd(_ output: AVAssetReaderOutput) -> Bool
  func add(_ output: AVAssetReaderOutput)
  func startReading() -> Bool
  func cancelReading()
}
