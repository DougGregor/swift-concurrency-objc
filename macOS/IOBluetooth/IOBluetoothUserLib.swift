
class IOBluetoothObjectRef : _CFObject {
}
class IOBluetoothDeviceRef : _CFObject {
}
class IOBluetoothL2CAPChannelRef : _CFObject {
}
class IOBluetoothRFCOMMChannelRef : _CFObject {
}
class IOBluetoothSDPServiceRecordRef : _CFObject {
}
class IOBluetoothSDPUUIDRef : _CFObject {
}
class IOBluetoothSDPDataElementRef : _CFObject {
}
class IOBluetoothUserNotificationRef : _CFObject {
}
typealias IOBluetoothObjectID = UInt
var kIOBluetoothObjectIDNULL: IOBluetoothObjectID { get }
typealias IOBluetoothDeviceSearchOptions = UInt32
struct IOBluetoothDeviceSearchOptionsBits : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSearchOptionsNone: IOBluetoothDeviceSearchOptionsBits { get }
var kSearchOptionsAlwaysStartInquiry: IOBluetoothDeviceSearchOptionsBits { get }
var kSearchOptionsDiscardCachedResults: IOBluetoothDeviceSearchOptionsBits { get }
struct IOBluetoothDeviceSearchDeviceAttributes {
  var address: BluetoothDeviceAddress
  var name: BluetoothDeviceName
  var serviceClassMajor: BluetoothServiceClassMajor
  var deviceClassMajor: BluetoothDeviceClassMajor
  var deviceClassMinor: BluetoothDeviceClassMinor
  init()
  init(address: BluetoothDeviceAddress, name: BluetoothDeviceName, serviceClassMajor: BluetoothServiceClassMajor, deviceClassMajor: BluetoothDeviceClassMajor, deviceClassMinor: BluetoothDeviceClassMinor)
}
struct IOBluetoothDeviceSearchAttributes {
  var options: IOBluetoothDeviceSearchOptions
  var maxResults: IOItemCount
  var deviceAttributeCount: IOItemCount
  var attributeList: UnsafeMutablePointer<IOBluetoothDeviceSearchDeviceAttributes>!
  init()
  init(options: IOBluetoothDeviceSearchOptions, maxResults: IOItemCount, deviceAttributeCount: IOItemCount, attributeList: UnsafeMutablePointer<IOBluetoothDeviceSearchDeviceAttributes>!)
}
typealias IOBluetoothDeviceSearchTypes = UInt32
struct IOBluetoothDeviceSearchTypesBits : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOBluetoothDeviceSearchClassic: IOBluetoothDeviceSearchTypesBits { get }
var kIOBluetoothDeviceSearchLE: IOBluetoothDeviceSearchTypesBits { get }
func IOBluetoothIgnoreHIDDevice(_ device: IOBluetoothDeviceRef!)
func IOBluetoothRemoveIgnoredHIDDevice(_ device: IOBluetoothDeviceRef!)
struct IOBluetoothUserNotificationChannelDirection : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOBluetoothUserNotificationChannelDirectionAny: IOBluetoothUserNotificationChannelDirection { get }
var kIOBluetoothUserNotificationChannelDirectionIncoming: IOBluetoothUserNotificationChannelDirection { get }
var kIOBluetoothUserNotificationChannelDirectionOutgoing: IOBluetoothUserNotificationChannelDirection { get }
typealias IOBluetoothUserNotificationCallback = @convention(c) (UnsafeMutableRawPointer?, IOBluetoothUserNotificationRef?, IOBluetoothObjectRef?) -> Void
func IOBluetoothUserNotificationUnregister(_ notificationRef: IOBluetoothUserNotificationRef!)
func IOBluetoothRegisterForDeviceConnectNotifications(_ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutableRawPointer!) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothDeviceRegisterForDisconnectNotification(_ inDevice: IOBluetoothDeviceRef!, _ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutableRawPointer!) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothRegisterForL2CAPChannelOpenNotifications(_ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutableRawPointer!) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothRegisterForFilteredL2CAPChannelOpenNotifications(_ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutableRawPointer!, _ inPSM: BluetoothL2CAPPSM, _ inDirection: IOBluetoothUserNotificationChannelDirection) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothL2CAPChannelRegisterForChannelCloseNotification(_ channel: IOBluetoothL2CAPChannelRef!, _ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutableRawPointer!) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothRegisterForRFCOMMChannelOpenNotifications(_ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutableRawPointer!) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothRegisterForFilteredRFCOMMChannelOpenNotifications(_ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutableRawPointer!, _ channelID: BluetoothRFCOMMChannelID, _ inDirection: IOBluetoothUserNotificationChannelDirection) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothRFCOMMChannelRegisterForChannelCloseNotification(_ inChannel: IOBluetoothRFCOMMChannelRef!, _ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutableRawPointer!) -> Unmanaged<IOBluetoothUserNotificationRef>!
