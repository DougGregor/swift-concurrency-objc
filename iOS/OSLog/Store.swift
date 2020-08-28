
class OSLogStore : NSObject {
  convenience init(url: URL) throws
  func __entriesEnumerator(options: OSLogEnumerator.Options = [], position: OSLogPosition?, predicate: NSPredicate?) throws -> OSLogEnumerator
  func position(date: Date) -> OSLogPosition
  func position(timeIntervalSinceEnd seconds: TimeInterval) -> OSLogPosition
  func position(timeIntervalSinceLatestBoot seconds: TimeInterval) -> OSLogPosition
}
