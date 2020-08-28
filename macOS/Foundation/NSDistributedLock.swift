
class NSDistributedLock : NSObject {
  init?(path: String)
  func `try`() -> Bool
  func unlock()
  func `break`()
  var lockDate: Date { get }
}
