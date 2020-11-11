
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
  @available(tvOS 10.0, *)
  static let EAAccessoryDidConnect: NSNotification.Name
  @available(tvOS 10.0, *)
  static let EAAccessoryDidDisconnect: NSNotification.Name
}
@available(tvOS 10.0, *)
let EAAccessoryKey: String
@available(tvOS 10.0, *)
let EAAccessorySelectedKey: String
@available(tvOS 3.0, *)
class EAAccessoryManager : NSObject {
  @available(tvOS 10.0, *)
  class func shared() -> EAAccessoryManager
  @available(tvOS 6, *)
  func showBluetoothAccessoryPicker(withNameFilter predicate: NSPredicate?, completion: EABluetoothAccessoryPickerCompletion? = nil)
  @available(tvOS 6, *)
  func showBluetoothAccessoryPickerAsync(withNameFilter predicate: NSPredicate?) async throws
  @available(tvOS 10.0, *)
  func registerForLocalNotifications()
  @available(tvOS 10.0, *)
  func unregisterForLocalNotifications()
  @available(tvOS 10.0, *)
  var connectedAccessories: [EAAccessory] { get }
}
