
extension AVAssetWriter {
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case writing
    case completed
    case failed
    case cancelled
  }
}
extension AVAssetWriter {
  var movieFragmentInterval: CMTime
  var overallDurationHint: CMTime
}
extension AVAssetWriter {
}
extension AVAssetWriter {
}
