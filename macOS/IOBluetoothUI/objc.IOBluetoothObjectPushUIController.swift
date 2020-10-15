
class IOBluetoothObjectPushUIController : NSWindowController {
  init!(objectPushWith inDevice: IOBluetoothDevice!, withFiles inFiles: [Any]!, delegate inDelegate: Any!)
  func runModal()
  func runPanel()
  func beginSheetModal(for sheetWindow: NSWindow!, modalDelegate: Any!, didEnd didEndSelector: Selector!, contextInfo: UnsafeMutableRawPointer!) -> IOReturn
  func stop()
  func setTitle(_ windowTitle: String!)
  func getTitle() -> String!
  func setIconImage(_ image: NSImage!)
  func getDevice() -> IOBluetoothDevice!
  func isTransferInProgress() -> Bool
}
