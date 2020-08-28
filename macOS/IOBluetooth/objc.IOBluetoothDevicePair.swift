
class IOBluetoothDevicePair : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  convenience init!(device: IOBluetoothDevice!)
  func start() -> IOReturn
  func stop()
  func device() -> IOBluetoothDevice!
  func setDevice(_ inDevice: IOBluetoothDevice!)
  func replyPINCode(_ PINCodeSize: Int, pinCode PINCode: UnsafeMutablePointer<BluetoothPINCode>!)
  func replyUserConfirmation(_ reply: Bool)
}
protocol IOBluetoothDevicePairDelegate : NSObjectProtocol {
  optional func devicePairingStarted(_ sender: Any!)
  optional func devicePairingConnecting(_ sender: Any!)
  optional func devicePairingPINCodeRequest(_ sender: Any!)
  optional func devicePairingUserConfirmationRequest(_ sender: Any!, numericValue: BluetoothNumericValue)
  optional func devicePairingUserPasskeyNotification(_ sender: Any!, passkey: BluetoothPasskey)
  optional func devicePairingFinished(_ sender: Any!, error: IOReturn)
  optional func deviceSimplePairingComplete(_ sender: Any!, status: BluetoothHCIEventStatus)
}
