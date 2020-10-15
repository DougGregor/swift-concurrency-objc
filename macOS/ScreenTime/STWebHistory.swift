
@available(macOS 11.0, *)
class STWebHistory : NSObject {
  init(bundleIdentifier: String) throws
  func deleteHistory(for url: URL)
  func deleteHistory(during interval: DateInterval)
  func deleteAllHistory()
}
