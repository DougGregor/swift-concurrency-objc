
enum AVKeyValueStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case loading
  case loaded
  case failed
  case cancelled
}
protocol AVAsynchronousKeyValueLoading {
  func statusOfValue(forKey key: String, error outError: NSErrorPointer) -> AVKeyValueStatus
  func loadValuesAsynchronously(forKeys keys: [String], completionHandler handler: (() -> Void)? = nil)
  func loadValues(forKeys keys: [String]) async
}
