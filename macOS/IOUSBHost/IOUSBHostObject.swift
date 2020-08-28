
class IOUSBHostObject : NSObject {
  init(__ioService ioService: io_service_t, options: IOUSBHostObjectInitOptions = [], queue: DispatchQueue?, interestHandler: IOUSBHostInterestHandler? = nil) throws
  func destroy()
  var ioService: io_service_t { get }
  var queue: DispatchQueue { get }
  func __send(_ request: IOUSBDeviceRequest, data: NSMutableData?, bytesTransferred: UnsafeMutablePointer<Int>?, completionTimeout: TimeInterval) throws
  func __enqueue(_ request: IOUSBDeviceRequest, data: NSMutableData?, completionTimeout: TimeInterval, completionHandler: IOUSBHostCompletionHandler? = nil) throws
  func __abortDeviceRequests(with option: IOUSBHostAbortOption) throws
  func __descriptor(with type: tIOUSBDescriptorType, length: UnsafeMutablePointer<Int>, index: Int, languageID: Int, requestType: tIOUSBDeviceRequestTypeValue, requestRecipient: tIOUSBDeviceRequestRecipientValue) throws -> UnsafePointer<IOUSBDescriptor>
  func __string(with index: Int, languageID: Int) throws -> String
  var deviceAddress: Int { get }
  func __frameNumber(withTime time: UnsafeMutablePointer<IOUSBHostTime>?) -> UInt64
  func ioData(withCapacity capacity: Int) throws -> NSMutableData
}
typealias IOUSBHostInterestHandler = (IOUSBHostObject, UInt32, UnsafeMutableRawPointer?) -> Void
