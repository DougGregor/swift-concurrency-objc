
@available(macOS 10.15, *)
class OSLogStore : NSObject {
  @available(macOS 10.15, *)
  class func local() throws -> Self
  @available(macOS 10.15, *)
  convenience init(url: URL) throws
  @available(macOS 10.15, *)
  func __entriesEnumerator(options: OSLogEnumerator.Options = [], position: OSLogPosition?, predicate: NSPredicate?) throws -> OSLogEnumerator
  @available(macOS 10.15, *)
  func position(date: Date) -> OSLogPosition
  @available(macOS 10.15, *)
  func position(timeIntervalSinceEnd seconds: TimeInterval) -> OSLogPosition
  @available(macOS 10.15, *)
  func position(timeIntervalSinceLatestBoot seconds: TimeInterval) -> OSLogPosition
}

@available(macOS 10.15, *)
@available(iOS, unavailable, message: "macOS only")
@available(tvOS, unavailable, message: "macOS only")
@available(watchOS, unavailable, message: "macOS only")
extension OSLogStore {
  func getEntries(with options: OSLogEnumerator.Options = [], at position: OSLogPosition? = nil, matching predicate: NSPredicate? = nil) throws -> AnySequence<OSLogEntry>
}
