
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
  @available(iOS 3.0, *)
  static let EAAccessoryDidConnect: NSNotification.Name
  @available(iOS 3.0, *)
  static let EAAccessoryDidDisconnect: NSNotification.Name
}
@available(iOS 3.0, *)
let EAAccessoryKey: String
@available(iOS 6.0, *)
let EAAccessorySelectedKey: String
@available(iOS 3.0, *)
class EAAccessoryManager : NSObject {
  @available(iOS 3.0, *)
  class func shared() -> EAAccessoryManager
  @available(iOS 6, *)
  func showBluetoothAccessoryPicker(withNameFilter predicate: NSPredicate?, completion: EABluetoothAccessoryPickerCompletion? = nil)
  @available(iOS 6, *)
  func showBluetoothAccessoryPicker(withNameFilter predicate: NSPredicate?) async throws
  @available(iOS 3.0, *)
  func registerForLocalNotifications()
  @available(iOS 3.0, *)
  func unregisterForLocalNotifications()
  @available(iOS 3.0, *)
  var connectedAccessories: [EAAccessory] { get }
}
