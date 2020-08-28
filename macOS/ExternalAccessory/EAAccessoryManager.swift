
struct EABluetoothAccessoryPickerError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var alreadyConnected: EABluetoothAccessoryPickerError.Code { get }
  static var resultNotFound: EABluetoothAccessoryPickerError.Code { get }
  static var resultCancelled: EABluetoothAccessoryPickerError.Code { get }
  static var resultFailed: EABluetoothAccessoryPickerError.Code { get }
}
let EABluetoothAccessoryPickerErrorDomain: String
typealias EABluetoothAccessoryPickerCompletion = (Error?) -> Void
extension NSNotification.Name {
  @available(macOS 10.13, *)
  static let EAAccessoryDidConnect: NSNotification.Name
  @available(macOS 10.13, *)
  static let EAAccessoryDidDisconnect: NSNotification.Name
}
@available(macOS 10.13, *)
let EAAccessoryKey: String
@available(macOS 10.13, *)
class EAAccessoryManager : NSObject {
  @available(macOS 10.13, *)
  class func shared() -> EAAccessoryManager
  @available(macOS 10.13, *)
  func registerForLocalNotifications()
  @available(macOS 10.13, *)
  func unregisterForLocalNotifications()
  @available(macOS 10.13, *)
  var connectedAccessories: [EAAccessory] { get }
}
