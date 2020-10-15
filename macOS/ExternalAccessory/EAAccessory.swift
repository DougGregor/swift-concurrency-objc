
var EAConnectionIDNone: Int { get }
@available(macOS 10.13, *)
class EAAccessory : NSObject {
  @available(macOS 10.13, *)
  var isConnected: Bool { get }
  @available(macOS 10.13, *)
  var connectionID: Int { get }
  @available(macOS 10.13, *)
  var manufacturer: String { get }
  @available(macOS 10.13, *)
  var name: String { get }
  @available(macOS 10.13, *)
  var modelNumber: String { get }
  @available(macOS 10.13, *)
  var serialNumber: String { get }
  @available(macOS 10.13, *)
  var firmwareRevision: String { get }
  @available(macOS 10.13, *)
  var hardwareRevision: String { get }
  @available(macOS, introduced: 10.13, deprecated: 10.14, message: "Not supported")
  var dockType: String { get }
  @available(macOS 10.13, *)
  var protocolStrings: [String] { get }
  @available(macOS 10.13, *)
  unowned(unsafe) var delegate: @sil_unmanaged EAAccessoryDelegate?
}
protocol EAAccessoryDelegate : NSObjectProtocol {
  @available(macOS 10.13, *)
  optional func accessoryDidDisconnect(_ accessory: EAAccessory)
}
