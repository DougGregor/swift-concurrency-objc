
class IOUSBHostStream : IOUSBHostIOSource {
  var hostPipe: IOUSBHostPipe { get }
  var streamID: Int { get }
  func abort(with option: IOUSBHostAbortOption) throws
  func abort() throws
  func __sendIORequest(with data: NSMutableData?, bytesTransferred: UnsafeMutablePointer<Int>?) throws
  func enqueueIORequest(with data: NSMutableData?, completionHandler: IOUSBHostCompletionHandler? = nil) throws
  func enqueueIORequest(with data: NSMutableData?) async throws -> (IOReturn, Int)
}
