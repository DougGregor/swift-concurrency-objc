
extension AVPlayerLooper {
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case ready
    case failed
    case cancelled
  }
}
