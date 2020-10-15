
class IOUSBHostPipe : IOUSBHostIOSource {
  var originalDescriptors: UnsafePointer<IOUSBHostIOSourceDescriptors> { get }
  var descriptors: UnsafePointer<IOUSBHostIOSourceDescriptors> { get }
  func adjust(with descriptors: UnsafePointer<IOUSBHostIOSourceDescriptors>) throws
  var idleTimeout: TimeInterval { get }
  func setIdleTimeout(_ idleTimeout: TimeInterval) throws
  func clearStall() throws
  func __sendControlRequest(_ request: IOUSBDeviceRequest, data: NSMutableData?, bytesTransferred: UnsafeMutablePointer<Int>?, completionTimeout: TimeInterval) throws
  func __enqueueControlRequest(_ request: IOUSBDeviceRequest, data: NSMutableData?, completionTimeout: TimeInterval, completionHandler: IOUSBHostCompletionHandler? = nil) throws
  func __enqueueControlRequest(_ request: IOUSBDeviceRequest, data: NSMutableData?, completionTimeout: TimeInterval) async throws -> (IOReturn, Int)
  func __abort(with option: IOUSBHostAbortOption) throws
  func __sendIORequest(with data: NSMutableData?, bytesTransferred: UnsafeMutablePointer<Int>?, completionTimeout: TimeInterval) throws
  func enqueueIORequest(with data: NSMutableData?, completionTimeout: TimeInterval, completionHandler: IOUSBHostCompletionHandler? = nil) throws
  func enqueueIORequest(with data: NSMutableData?, completionTimeout: TimeInterval) async throws -> (IOReturn, Int)
  func sendIORequest(with data: NSMutableData, frameList: UnsafeMutablePointer<IOUSBHostIsochronousFrame>, frameListCount: Int, firstFrameNumber: UInt64) throws
  func enqueueIORequest(with data: NSMutableData, frameList: UnsafeMutablePointer<IOUSBHostIsochronousFrame>, frameListCount: Int, firstFrameNumber: UInt64, completionHandler: IOUSBHostIsochronousCompletionHandler? = nil) throws
  func enqueueIORequest(with data: NSMutableData, frameList: UnsafeMutablePointer<IOUSBHostIsochronousFrame>, frameListCount: Int, firstFrameNumber: UInt64) async throws -> (IOReturn, UnsafeMutablePointer<IOUSBHostIsochronousFrame>)
  func enableStreams() throws
  func disableStreams() throws
  func copyStream(withStreamID streamID: Int) throws -> IOUSBHostStream
}
