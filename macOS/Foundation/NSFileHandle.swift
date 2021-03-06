
class FileHandle : NSObject, NSSecureCoding {
  var availableData: Data { get }
  init(fileDescriptor fd: Int32, closeOnDealloc closeopt: Bool)
  @available(macOS 10.15, *)
  func __readDataToEndOfFileAndReturnError() throws -> Data
  @available(macOS 10.15, *)
  func __readDataUp(toLength length: Int) throws -> Data
  @available(macOS 10.15, *)
  func __write(_ data: Data, error: ()) throws
  @available(macOS 10.15, *)
  func __getOffset(_ offsetInFile: UnsafeMutablePointer<UInt64>) throws
  @available(macOS 10.15, *)
  func __seek(toEndReturningOffset offsetInFile: UnsafeMutablePointer<UInt64>?) throws
  @available(macOS 10.15, *)
  func seek(toOffset offset: UInt64) throws
  @available(macOS 10.15, *)
  func truncate(atOffset offset: UInt64) throws
  @available(macOS 10.15, *)
  func synchronize() throws
  @available(macOS 10.15, *)
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
  @available(macOS 10.6, *)
  convenience init(forReadingFrom url: URL) throws
  @available(macOS 10.6, *)
  convenience init(forWritingTo url: URL) throws
  @available(macOS 10.6, *)
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
extension FileHandle {
  func readInBackgroundAndNotify(forModes modes: [RunLoop.Mode]?)
  func readInBackgroundAndNotify()
  func readToEndOfFileInBackgroundAndNotify(forModes modes: [RunLoop.Mode]?)
  func readToEndOfFileInBackgroundAndNotify()
  func acceptConnectionInBackgroundAndNotify(forModes modes: [RunLoop.Mode]?)
  func acceptConnectionInBackgroundAndNotify()
  func waitForDataInBackgroundAndNotify(forModes modes: [RunLoop.Mode]?)
  func waitForDataInBackgroundAndNotify()
  @available(macOS 10.7, *)
  var readabilityHandler: ((FileHandle) -> Void)?
  @available(macOS 10.7, *)
  var writeabilityHandler: ((FileHandle) -> Void)?
}
extension FileHandle {
  convenience init(fileDescriptor fd: Int32)
  var fileDescriptor: Int32 { get }
}
extension FileHandle {
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func readDataToEndOfFile() -> Data
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func readData(ofLength length: Int) -> Data
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func write(_ data: Data)
  @available(macOS, introduced: 10.0, deprecated: 100000)
  var offsetInFile: UInt64 { get }
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func seekToEndOfFile() -> UInt64
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func seek(toFileOffset offset: UInt64)
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func truncateFile(atOffset offset: UInt64)
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func synchronizeFile()
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func closeFile()
}
class Pipe : NSObject {
  var fileHandleForReading: FileHandle { get }
  var fileHandleForWriting: FileHandle { get }
}
