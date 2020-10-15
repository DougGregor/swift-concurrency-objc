
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
