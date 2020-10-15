
class IOBluetoothDeviceInquiry : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  init!(delegate: Any!)
  func start() -> IOReturn
  func stop() -> IOReturn
  var inquiryLength: UInt8
  var searchType: IOBluetoothDeviceSearchTypes
  var updateNewDeviceNames: Bool
  func foundDevices() -> [Any]!
  func clearFoundDevices()
  func setSearchCriteria(_ inServiceClassMajor: BluetoothServiceClassMajor, majorDeviceClass inMajorDeviceClass: BluetoothDeviceClassMajor, minorDeviceClass inMinorDeviceClass: BluetoothDeviceClassMinor)
}
protocol IOBluetoothDeviceInquiryDelegate {
  optional func deviceInquiryStarted(_ sender: IOBluetoothDeviceInquiry!)
  optional func deviceInquiryDeviceFound(_ sender: IOBluetoothDeviceInquiry!, device: IOBluetoothDevice!)
  optional func deviceInquiryUpdatingDeviceNamesStarted(_ sender: IOBluetoothDeviceInquiry!, devicesRemaining: UInt32)
  optional func deviceInquiryDeviceNameUpdated(_ sender: IOBluetoothDeviceInquiry!, device: IOBluetoothDevice!, devicesRemaining: UInt32)
  optional func deviceInquiryComplete(_ sender: IOBluetoothDeviceInquiry!, error: IOReturn, aborted: Bool)
}
