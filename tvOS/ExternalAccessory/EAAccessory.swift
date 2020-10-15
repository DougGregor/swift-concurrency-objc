
var EAConnectionIDNone: Int { get }
@available(tvOS 3.0, *)
class EAAccessory : NSObject {
  @available(tvOS 10.0, *)
  var isConnected: Bool { get }
  @available(tvOS 10.0, *)
  var connectionID: Int { get }
  @available(tvOS 10.0, *)
  var manufacturer: String { get }
  @available(tvOS 10.0, *)
  var name: String { get }
  @available(tvOS 10.0, *)
  var modelNumber: String { get }
  @available(tvOS 10.0, *)
  var serialNumber: String { get }
  @available(tvOS 10.0, *)
  var firmwareRevision: String { get }
  @available(tvOS 10.0, *)
  var hardwareRevision: String { get }
  @available(tvOS, introduced: 9.2, deprecated: 13.0, message: "Not supported")
  var dockType: String { get }
  @available(tvOS 10.0, *)
  var protocolStrings: [String] { get }
  @available(tvOS 10.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged EAAccessoryDelegate?
}
protocol EAAccessoryDelegate : NSObjectProtocol {
  @available(tvOS 10.0, *)
  optional func accessoryDidDisconnect(_ accessory: EAAccessory)
}
