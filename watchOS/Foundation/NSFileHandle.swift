
class FileHandle : NSObject, NSSecureCoding {
  var availableData: Data { get }
  init(fileDescriptor fd: Int32, closeOnDealloc closeopt: Bool)
  @available(watchOS 6.0, *)
  func __readDataToEndOfFileAndReturnError() throws -> Data
  @available(watchOS 6.0, *)
  func __readDataUp(toLength length: Int) throws -> Data
  @available(watchOS 6.0, *)
  func __write(_ data: Data, error: ()) throws
  @available(watchOS 6.0, *)
  func __getOffset(_ offsetInFile: UnsafeMutablePointer<UInt64>) throws
  @available(watchOS 6.0, *)
  func __seek(toEndReturningOffset offsetInFile: UnsafeMutablePointer<UInt64>?) throws
  @available(watchOS 6.0, *)
  func seek(toOffset offset: UInt64) throws
  @available(watchOS 6.0, *)
  func truncate(atOffset offset: UInt64) throws
  @available(watchOS 6.0, *)
  func synchronize() throws
  @available(watchOS 6.0, *)
  func close() throws
}
extension FileHandle {
  class var standardInput: FileHandle { get }
  class var standardOutput: FileHandle { get }
  class var standardError: FileHandle { get }
  class var nullDevice: FileHandle { get }
  convenience init?(forReadingAtPath path: String)
  convenience init?(forWritingAtPath path: String)
  convenience init?(forUpdatingAtPath path: String)
  @available(watchOS 2.0, *)
  convenience init(forReadingFrom url: URL) throws
  @available(watchOS 2.0, *)
  convenience init(forWritingTo url: URL) throws
  @available(watchOS 2.0, *)
  convenience init(forUpdating url: URL) throws
}
extension NSExceptionName {
  static let fileHandleOperationException: NSExceptionName
}
extension FileHandle {
  class let readCompletionNotification: NSNotification.Name
}
extension NSNotification.Name {
  static let NSFileHandleReadToEndOfFileCompletion: NSNotification.Name
  static let NSFileHandleConnectionAccepted: NSNotification.Name
  static let NSFileHandleDataAvailable: NSNotification.Name
}
let NSFileHandleNotificationDataItem: String
let NSFileHandleNotificationFileHandleItem: String
@available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Not supported")
let NSFileHandleNotificationMonitorModes: String
extension FileHandle {
  func readInBackgroundAndNotify(forModes modes: [RunLoop.Mode]?)
  func readInBackgroundAndNotify()
  func readToEndOfFileInBackgroundAndNotify(forModes modes: [RunLoop.Mode]?)
  func readToEndOfFileInBackgroundAndNotify()
  func acceptConnectionInBackgroundAndNotify(forModes modes: [RunLoop.Mode]?)
  func acceptConnectionInBackgroundAndNotify()
  func waitForDataInBackgroundAndNotify(forModes modes: [RunLoop.Mode]?)
  func waitForDataInBackgroundAndNotify()
  @available(watchOS 2.0, *)
  var readabilityHandler: ((FileHandle) -> Void)?
  @available(watchOS 2.0, *)
  var writeabilityHandler: ((FileHandle) -> Void)?
}
extension FileHandle {
  convenience init(fileDescriptor fd: Int32)
  var fileDescriptor: Int32 { get }
}
extension FileHandle {
  @available(watchOS, introduced: 2.0, deprecated: 100000)
  func readDataToEndOfFile() -> Data
  @available(watchOS, introduced: 2.0, deprecated: 100000)
  func readData(ofLength length: Int) -> Data
  @available(watchOS, introduced: 2.0, deprecated: 100000)
  func write(_ data: Data)
  @available(watchOS, introduced: 2.0, deprecated: 100000)
  var offsetInFile: UInt64 { get }
  @available(watchOS, introduced: 2.0, deprecated: 100000)
  func seekToEndOfFile() -> UInt64
  @available(watchOS, introduced: 2.0, deprecated: 100000)
  func seek(toFileOffset offset: UInt64)
  @available(watchOS, introduced: 2.0, deprecated: 100000)
  func truncateFile(atOffset offset: UInt64)
  @available(watchOS, introduced: 2.0, deprecated: 100000)
  func synchronizeFile()
  @available(watchOS, introduced: 2.0, deprecated: 100000)
  func closeFile()
}
class Pipe : NSObject {
  var fileHandleForReading: FileHandle { get }
  var fileHandleForWriting: FileHandle { get }
}
