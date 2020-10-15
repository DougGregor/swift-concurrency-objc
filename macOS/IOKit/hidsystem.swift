
var EVENT_SYSTEM_VERSION: Int32 { get }
var NX_MAXMOUSESCALINGS: Int32 { get }
struct evsioKeymapping {
  var size: Int32
  var mapping: UnsafeMutablePointer<CChar>!
  init()
  init(size: Int32, mapping: UnsafeMutablePointer<CChar>!)
}
typealias NXKeyMapping = evsioKeymapping
struct evsioMouseScaling {
  var numScaleLevels: Int32
  var scaleThresholds: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
  var scaleFactors: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
  init()
  init(numScaleLevels: Int32, scaleThresholds: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16), scaleFactors: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16))
}
typealias NXMouseScaling = evsioMouseScaling
struct NXMouseButton : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NX_OneButton: NXMouseButton { get }
var NX_LeftButton: NXMouseButton { get }
var NX_RightButton: NXMouseButton { get }
struct __IOFixedPoint32 {
  var x: Int32
  var y: Int32
  init()
  init(x: Int32, y: Int32)
}
typealias IOFixedPoint32 = __IOFixedPoint32
typealias NXEventSystemInfoType = UnsafeMutablePointer<Int32>
var NX_EVS_INFO_MAX: Int32 { get }
typealias NXEventSystemInfoData = (Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32)
var NX_EVS_DEVICE_MAX: Int32 { get }
var NX_EVS_DEVICE_INTERFACE_OTHER: Int32 { get }
var NX_EVS_DEVICE_INTERFACE_NeXT: Int32 { get }
var NX_EVS_DEVICE_INTERFACE_ADB: Int32 { get }
var NX_EVS_DEVICE_INTERFACE_ACE: Int32 { get }
var NX_EVS_DEVICE_INTERFACE_SERIAL_ACE: Int32 { get }
var NX_EVS_DEVICE_INTERFACE_BUS_ACE: Int32 { get }
var NX_EVS_DEVICE_INTERFACE_HIL: Int32 { get }
var NX_EVS_DEVICE_INTERFACE_TYPE5: Int32 { get }
var NUM_SUPPORTED_INTERFACES: Int32 { get }
var NX_EVS_DEVICE_TYPE_OTHER: Int32 { get }
var NX_EVS_DEVICE_TYPE_KEYBOARD: Int32 { get }
var NX_EVS_DEVICE_TYPE_MOUSE: Int32 { get }
var NX_EVS_DEVICE_TYPE_TABLET: Int32 { get }
struct NXEventSystemDevice {
  var interface: Int32
  var interface_addr: Int32
  var dev_type: Int32
  var id: Int32
  init()
  init(interface: Int32, interface_addr: Int32, dev_type: Int32, id: Int32)
}
struct NXEventSystemDeviceList {
  var dev: (NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice)
  init()
  init(dev: (NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice, NXEventSystemDevice))
}
var __OLD_NX_EVS_DEVICE_INFO: Int32 { get }
var NX_EVS_DEVICE_INFO: String { get }
struct EvCmd : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var EVNOP: EvCmd { get }
var EVHIDE: EvCmd { get }
var EVSHOW: EvCmd { get }
var EVMOVE: EvCmd { get }
var EVLEVEL: EvCmd { get }
var EV_SCREEN_MIN_BRIGHTNESS: Int32 { get }
var EV_SCREEN_MAX_BRIGHTNESS: Int32 { get }
var EV_TICK_TIME: Int32 { get }
var EV_TICKS_PER_SEC: Int32 { get }
var EV_RB: Int32 { get }
var EV_LB: Int32 { get }
var EV_MOUSEBUTTONMASK: Int32 { get }
var EV_MINPRESSURE: Int32 { get }
var EV_MAXPRESSURE: Int32 { get }
var EV_CURSOR_WIDTH: Int32 { get }
var EV_CURSOR_HEIGHT: Int32 { get }
var kAppleOnboardGUID: UInt64 { get }
var _NXSIZE_: Int32 { get }
typealias NXCoord = Float
struct _NXPoint {
  var x: NXCoord
  var y: NXCoord
  init()
  init(x: NXCoord, y: NXCoord)
}
typealias NXPoint = _NXPoint
struct _NXSize {
  var width: NXCoord
  var height: NXCoord
  init()
  init(width: NXCoord, height: NXCoord)
}
typealias NXSize = _NXSize
var NX_NULLEVENT: Int32 { get }
var NX_LMOUSEDOWN: Int32 { get }
var NX_LMOUSEUP: Int32 { get }
var NX_RMOUSEDOWN: Int32 { get }
var NX_RMOUSEUP: Int32 { get }
var NX_MOUSEMOVED: Int32 { get }
var NX_LMOUSEDRAGGED: Int32 { get }
var NX_RMOUSEDRAGGED: Int32 { get }
var NX_MOUSEENTERED: Int32 { get }
var NX_MOUSEEXITED: Int32 { get }
var NX_OMOUSEDOWN: Int32 { get }
var NX_OMOUSEUP: Int32 { get }
var NX_OMOUSEDRAGGED: Int32 { get }
var NX_KEYDOWN: Int32 { get }
var NX_KEYUP: Int32 { get }
var NX_FLAGSCHANGED: Int32 { get }
var NX_KITDEFINED: Int32 { get }
var NX_SYSDEFINED: Int32 { get }
var NX_APPDEFINED: Int32 { get }
var NX_SCROLLWHEELMOVED: Int32 { get }
var NX_ZOOM: Int32 { get }
var NX_TABLETPOINTER: Int32 { get }
var NX_TABLETPROXIMITY: Int32 { get }
var NX_FIRSTEVENT: Int32 { get }
var NX_LASTEVENT: Int32 { get }
var NX_NULLEVENTMASK: Int32 { get }
var NX_LMOUSEDOWNMASK: Int32 { get }
var NX_LMOUSEUPMASK: Int32 { get }
var NX_RMOUSEDOWNMASK: Int32 { get }
var NX_RMOUSEUPMASK: Int32 { get }
var NX_OMOUSEDOWNMASK: Int32 { get }
var NX_OMOUSEUPMASK: Int32 { get }
var NX_MOUSEMOVEDMASK: Int32 { get }
var NX_LMOUSEDRAGGEDMASK: Int32 { get }
var NX_RMOUSEDRAGGEDMASK: Int32 { get }
var NX_OMOUSEDRAGGEDMASK: Int32 { get }
var NX_MOUSEENTEREDMASK: Int32 { get }
var NX_MOUSEEXITEDMASK: Int32 { get }
var NX_KEYDOWNMASK: Int32 { get }
var NX_KEYUPMASK: Int32 { get }
var NX_FLAGSCHANGEDMASK: Int32 { get }
var NX_KITDEFINEDMASK: Int32 { get }
var NX_SYSDEFINEDMASK: Int32 { get }
var NX_APPDEFINEDMASK: Int32 { get }
var NX_SCROLLWHEELMOVEDMASK: Int32 { get }
var NX_ZOOMMASK: Int32 { get }
var NX_TABLETPOINTERMASK: Int32 { get }
var NX_TABLETPROXIMITYMASK: Int32 { get }
var NX_ALLEVENTS: Int32 { get }
var NX_SUBTYPE_DEFAULT: Int32 { get }
var NX_SUBTYPE_TABLET_POINT: Int32 { get }
var NX_SUBTYPE_TABLET_PROXIMITY: Int32 { get }
var NX_SUBTYPE_MOUSE_TOUCH: Int32 { get }
var NX_SUBTYPE_POWER_KEY: Int32 { get }
var NX_SUBTYPE_AUX_MOUSE_BUTTONS: Int32 { get }
var NX_SUBTYPE_AUX_CONTROL_BUTTONS: Int32 { get }
var NX_SUBTYPE_EJECT_KEY: Int32 { get }
var NX_SUBTYPE_SLEEP_EVENT: Int32 { get }
var NX_SUBTYPE_RESTART_EVENT: Int32 { get }
var NX_SUBTYPE_SHUTDOWN_EVENT: Int32 { get }
var NX_SUBTYPE_MENU: Int32 { get }
var NX_SUBTYPE_ACCESSIBILITY: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_ON: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_OFF: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_SHIFT: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_CONTROL: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_ALTERNATE: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_COMMAND: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_RELEASE: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_TOGGLEMOUSEDRIVING: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_SHIFT_DOWN: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_CONTROL_DOWN: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_ALTERNATE_DOWN: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_COMMAND_DOWN: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_FN_DOWN: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_SHIFT_LOCK: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_CONTROL_LOCK: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_ALTERNATE_LOCK: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_COMMAND_LOCK: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_FN_LOCK: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_SHIFT_UP: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_CONTROL_UP: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_ALTERNATE_UP: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_COMMAND_UP: Int32 { get }
var NX_SUBTYPE_STICKYKEYS_FN_UP: Int32 { get }
var NX_SUBTYPE_SLOWKEYS_START: Int32 { get }
var NX_SUBTYPE_SLOWKEYS_ABORT: Int32 { get }
var NX_SUBTYPE_SLOWKEYS_END: Int32 { get }
var NX_SUBTYPE_HIDPARAMETER_MODIFIED: Int32 { get }
var NX_ALPHASHIFTMASK: Int32 { get }
var NX_SHIFTMASK: Int32 { get }
var NX_CONTROLMASK: Int32 { get }
var NX_ALTERNATEMASK: Int32 { get }
var NX_COMMANDMASK: Int32 { get }
var NX_NUMERICPADMASK: Int32 { get }
var NX_HELPMASK: Int32 { get }
var NX_SECONDARYFNMASK: Int32 { get }
var NX_ALPHASHIFT_STATELESS_MASK: Int32 { get }
var NX_DEVICELCTLKEYMASK: Int32 { get }
var NX_DEVICELSHIFTKEYMASK: Int32 { get }
var NX_DEVICERSHIFTKEYMASK: Int32 { get }
var NX_DEVICELCMDKEYMASK: Int32 { get }
var NX_DEVICERCMDKEYMASK: Int32 { get }
var NX_DEVICELALTKEYMASK: Int32 { get }
var NX_DEVICERALTKEYMASK: Int32 { get }
var NX_DEVICE_ALPHASHIFT_STATELESS_MASK: Int32 { get }
var NX_DEVICERCTLKEYMASK: Int32 { get }
var NX_STYLUSPROXIMITYMASK: Int32 { get }
var NX_NONCOALSESCEDMASK: Int32 { get }
var NX_ASCIISET: Int32 { get }
var NX_SYMBOLSET: Int32 { get }
var NX_DINGBATSSET: Int32 { get }
var NX_TABLET_BUTTON_PENTIPMASK: Int32 { get }
var NX_TABLET_BUTTON_PENLOWERSIDEMASK: Int32 { get }
var NX_TABLET_BUTTON_PENUPPERSIDEMASK: Int32 { get }
var NX_TABLET_CAPABILITY_DEVICEIDMASK: Int32 { get }
var NX_TABLET_CAPABILITY_ABSXMASK: Int32 { get }
var NX_TABLET_CAPABILITY_ABSYMASK: Int32 { get }
var NX_TABLET_CAPABILITY_VENDOR1MASK: Int32 { get }
var NX_TABLET_CAPABILITY_VENDOR2MASK: Int32 { get }
var NX_TABLET_CAPABILITY_VENDOR3MASK: Int32 { get }
var NX_TABLET_CAPABILITY_BUTTONSMASK: Int32 { get }
var NX_TABLET_CAPABILITY_TILTXMASK: Int32 { get }
var NX_TABLET_CAPABILITY_TILTYMASK: Int32 { get }
var NX_TABLET_CAPABILITY_ABSZMASK: Int32 { get }
var NX_TABLET_CAPABILITY_PRESSUREMASK: Int32 { get }
var NX_TABLET_CAPABILITY_TANGENTIALPRESSUREMASK: Int32 { get }
var NX_TABLET_CAPABILITY_ORIENTINFOMASK: Int32 { get }
var NX_TABLET_CAPABILITY_ROTATIONMASK: Int32 { get }
var NX_TABLET_POINTER_UNKNOWN: Int32 { get }
var NX_TABLET_POINTER_PEN: Int32 { get }
var NX_TABLET_POINTER_CURSOR: Int32 { get }
var NX_TABLET_POINTER_ERASER: Int32 { get }
struct _NXTabletPointData {
  struct __Unnamed_struct_tilt {
    var x: Int16
    var y: Int16
    init()
    init(x: Int16, y: Int16)
  }
  var x: Int32
  var y: Int32
  var z: Int32
  var buttons: UInt16
  var pressure: UInt16
  var tilt: _NXTabletPointData.__Unnamed_struct_tilt
  var rotation: UInt16
  var tangentialPressure: Int16
  var deviceID: UInt16
  var vendor1: Int16
  var vendor2: Int16
  var vendor3: Int16
  init()
  init(x: Int32, y: Int32, z: Int32, buttons: UInt16, pressure: UInt16, tilt: _NXTabletPointData.__Unnamed_struct_tilt, rotation: UInt16, tangentialPressure: Int16, deviceID: UInt16, vendor1: Int16, vendor2: Int16, vendor3: Int16)
}
typealias NXTabletPointData = _NXTabletPointData
typealias NXTabletPointDataPtr = UnsafeMutablePointer<_NXTabletPointData>
struct _NXTabletProximityData {
  var vendorID: UInt16
  var tabletID: UInt16
  var pointerID: UInt16
  var deviceID: UInt16
  var systemTabletID: UInt16
  var vendorPointerType: UInt16
  var pointerSerialNumber: UInt32
  var uniqueID: UInt64
  var capabilityMask: UInt32
  var pointerType: UInt8
  var enterProximity: UInt8
  var reserved1: Int16
  init()
  init(vendorID: UInt16, tabletID: UInt16, pointerID: UInt16, deviceID: UInt16, systemTabletID: UInt16, vendorPointerType: UInt16, pointerSerialNumber: UInt32, uniqueID: UInt64, capabilityMask: UInt32, pointerType: UInt8, enterProximity: UInt8, reserved1: Int16)
}
typealias NXTabletProximityData = _NXTabletProximityData
typealias NXTabletProximityDataPtr = UnsafeMutablePointer<_NXTabletProximityData>
struct NXEventData {
  struct __Unnamed_struct_mouse {
    struct __Unnamed_union_tablet {
      var point: NXTabletPointData
      var proximity: NXTabletProximityData
      init(point: NXTabletPointData)
      init(proximity: NXTabletProximityData)
      init()
    }
    var subx: UInt8
    var suby: UInt8
    var eventNum: Int16
    var click: Int32
    var pressure: UInt8
    var buttonNumber: UInt8
    var subType: UInt8
    var reserved2: UInt8
    var reserved3: Int32
    var tablet: NXEventData.__Unnamed_struct_mouse.__Unnamed_union_tablet
    init()
    init(subx: UInt8, suby: UInt8, eventNum: Int16, click: Int32, pressure: UInt8, buttonNumber: UInt8, subType: UInt8, reserved2: UInt8, reserved3: Int32, tablet: NXEventData.__Unnamed_struct_mouse.__Unnamed_union_tablet)
  }
  struct __Unnamed_struct_mouseMove {
    struct __Unnamed_union_tablet {
      var point: NXTabletPointData
      var proximity: NXTabletProximityData
      init(point: NXTabletPointData)
      init(proximity: NXTabletProximityData)
      init()
    }
    var dx: Int32
    var dy: Int32
    var subx: UInt8
    var suby: UInt8
    var subType: UInt8
    var reserved1: UInt8
    var reserved2: Int32
    var tablet: NXEventData.__Unnamed_struct_mouseMove.__Unnamed_union_tablet
    init()
    init(dx: Int32, dy: Int32, subx: UInt8, suby: UInt8, subType: UInt8, reserved1: UInt8, reserved2: Int32, tablet: NXEventData.__Unnamed_struct_mouseMove.__Unnamed_union_tablet)
  }
  struct __Unnamed_struct_key {
    var origCharSet: UInt16
    var `repeat`: Int16
    var charSet: UInt16
    var charCode: UInt16
    var keyCode: UInt16
    var origCharCode: UInt16
    var reserved1: Int32
    var keyboardType: UInt32
    var reserved2: Int32
    var reserved3: Int32
    var reserved4: Int32
    var reserved5: (Int32, Int32, Int32, Int32)
    init()
    init(origCharSet: UInt16, repeat: Int16, charSet: UInt16, charCode: UInt16, keyCode: UInt16, origCharCode: UInt16, reserved1: Int32, keyboardType: UInt32, reserved2: Int32, reserved3: Int32, reserved4: Int32, reserved5: (Int32, Int32, Int32, Int32))
  }
  struct __Unnamed_struct_tracking {
    var reserved: Int16
    var eventNum: Int16
    var trackingNum: Int32
    var userData: Int32
    var reserved1: Int32
    var reserved2: Int32
    var reserved3: Int32
    var reserved4: Int32
    var reserved5: Int32
    var reserved6: (Int32, Int32, Int32, Int32)
    init()
    init(reserved: Int16, eventNum: Int16, trackingNum: Int32, userData: Int32, reserved1: Int32, reserved2: Int32, reserved3: Int32, reserved4: Int32, reserved5: Int32, reserved6: (Int32, Int32, Int32, Int32))
  }
  struct __Unnamed_struct_scrollWheel {
    var deltaAxis1: Int16
    var deltaAxis2: Int16
    var deltaAxis3: Int16
    var reserved1: Int16
    var fixedDeltaAxis1: Int32
    var fixedDeltaAxis2: Int32
    var fixedDeltaAxis3: Int32
    var pointDeltaAxis1: Int32
    var pointDeltaAxis2: Int32
    var pointDeltaAxis3: Int32
    var reserved8: (Int32, Int32, Int32, Int32)
    init()
    init(deltaAxis1: Int16, deltaAxis2: Int16, deltaAxis3: Int16, reserved1: Int16, fixedDeltaAxis1: Int32, fixedDeltaAxis2: Int32, fixedDeltaAxis3: Int32, pointDeltaAxis1: Int32, pointDeltaAxis2: Int32, pointDeltaAxis3: Int32, reserved8: (Int32, Int32, Int32, Int32))
  }
  struct __Unnamed_struct_compound {
    struct __Unnamed_union_misc {
      var F: (Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float)
      var L: (Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32)
      var S: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
      var C: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
      init(F: (Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float))
      init(L: (Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32))
      init(S: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16))
      init(C: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar))
      init()
    }
    var reserved: Int16
    var subType: Int16
    var misc: NXEventData.__Unnamed_struct_compound.__Unnamed_union_misc
    init()
    init(reserved: Int16, subType: Int16, misc: NXEventData.__Unnamed_struct_compound.__Unnamed_union_misc)
  }
  struct __Unnamed_struct_tablet {
    struct __Unnamed_struct_tilt {
      var x: Int16
      var y: Int16
      init()
      init(x: Int16, y: Int16)
    }
    var x: Int32
    var y: Int32
    var z: Int32
    var buttons: UInt16
    var pressure: UInt16
    var tilt: NXEventData.__Unnamed_struct_tablet.__Unnamed_struct_tilt
    var rotation: UInt16
    var tangentialPressure: Int16
    var deviceID: UInt16
    var vendor1: Int16
    var vendor2: Int16
    var vendor3: Int16
    var reserved: (Int32, Int32, Int32, Int32)
    init()
    init(x: Int32, y: Int32, z: Int32, buttons: UInt16, pressure: UInt16, tilt: NXEventData.__Unnamed_struct_tablet.__Unnamed_struct_tilt, rotation: UInt16, tangentialPressure: Int16, deviceID: UInt16, vendor1: Int16, vendor2: Int16, vendor3: Int16, reserved: (Int32, Int32, Int32, Int32))
  }
  struct __Unnamed_struct_proximity {
    var vendorID: UInt16
    var tabletID: UInt16
    var pointerID: UInt16
    var deviceID: UInt16
    var systemTabletID: UInt16
    var vendorPointerType: UInt16
    var pointerSerialNumber: UInt32
    var uniqueID: UInt64
    var capabilityMask: UInt32
    var pointerType: UInt8
    var enterProximity: UInt8
    var reserved1: Int16
    var reserved2: (Int32, Int32, Int32, Int32)
    init()
    init(vendorID: UInt16, tabletID: UInt16, pointerID: UInt16, deviceID: UInt16, systemTabletID: UInt16, vendorPointerType: UInt16, pointerSerialNumber: UInt32, uniqueID: UInt64, capabilityMask: UInt32, pointerType: UInt8, enterProximity: UInt8, reserved1: Int16, reserved2: (Int32, Int32, Int32, Int32))
  }
  var mouse: NXEventData.__Unnamed_struct_mouse
  var mouseMove: NXEventData.__Unnamed_struct_mouseMove
  var key: NXEventData.__Unnamed_struct_key
  var tracking: NXEventData.__Unnamed_struct_tracking
  var scrollWheel: NXEventData.__Unnamed_struct_scrollWheel
  var zoom: NXEventData.__Unnamed_struct_scrollWheel
  var compound: NXEventData.__Unnamed_struct_compound
  var tablet: NXEventData.__Unnamed_struct_tablet
  var proximity: NXEventData.__Unnamed_struct_proximity
  init(mouse: NXEventData.__Unnamed_struct_mouse)
  init(mouseMove: NXEventData.__Unnamed_struct_mouseMove)
  init(key: NXEventData.__Unnamed_struct_key)
  init(tracking: NXEventData.__Unnamed_struct_tracking)
  init(scrollWheel: NXEventData.__Unnamed_struct_scrollWheel)
  init(zoom: NXEventData.__Unnamed_struct_scrollWheel)
  init(compound: NXEventData.__Unnamed_struct_compound)
  init(tablet: NXEventData.__Unnamed_struct_tablet)
  init(proximity: NXEventData.__Unnamed_struct_proximity)
  init()
}
var kNXEventDataVersion: Int32 { get }
struct _NXEvent {
  struct __Unnamed_struct_location {
    var x: Int32
    var y: Int32
    init()
    init(x: Int32, y: Int32)
  }
  var type: Int32
  var location: _NXEvent.__Unnamed_struct_location
  var time: UInt64
  var flags: Int32
  var window: UInt32
  var service_id: UInt64
  var ext_pid: Int32
  var data: NXEventData
  init()
  init(type: Int32, location: _NXEvent.__Unnamed_struct_location, time: UInt64, flags: Int32, window: UInt32, service_id: UInt64, ext_pid: Int32, data: NXEventData)
}
typealias NXEvent = _NXEvent
typealias NXEventPtr = UnsafeMutablePointer<_NXEvent>
var kNXEventVersion: Int32 { get }
var NX_NOWINDOW: Int32 { get }
var NX_BYTYPE: Int32 { get }
var NX_BROADCAST: Int32 { get }
var NX_TOPWINDOW: Int32 { get }
var NX_FIRSTWINDOW: Int32 { get }
var NX_MOUSEWINDOW: Int32 { get }
var NX_NEXTWINDOW: Int32 { get }
var NX_LASTLEFT: Int32 { get }
var NX_LASTRIGHT: Int32 { get }
var NX_LASTKEY: Int32 { get }
var NX_EXPLICIT: Int32 { get }
var NX_TRANSMIT: Int32 { get }
var NX_BYPSCONTEXT: Int32 { get }
var NX_EVENT_EXTENSION_LOCATION_INVALID: Int32 { get }
var NX_EVENT_EXTENSION_LOCATION_TYPE_FLOAT: Int32 { get }
var NX_EVENT_EXTENSION_LOCATION_DEVICE_SCALED: Int32 { get }
var NX_EVENT_EXTENSION_MOUSE_DELTA_TYPE_FLOAT: Int32 { get }
var NX_EVENT_EXTENSION_AUDIT_TOKEN: Int32 { get }
struct _NXEventExtension {
  var flags: UInt32
  var audit: audit_token_t
  init()
  init(flags: UInt32, audit: audit_token_t)
}
typealias NXEventExtension = _NXEventExtension
struct _NXEventExt {
  var payload: NXEvent
  var `extension`: NXEventExtension
  init()
  init(payload: NXEvent, extension: NXEventExtension)
}
typealias NXEventExt = _NXEventExt
var kIOHIDPointerAccelerationKey: String { get }
var kIOHIDPointerAccelerationTypeKey: String { get }
var kIOHIDMouseScrollAccelerationKey: String { get }
var kIOHIDMouseAccelerationTypeKey: String { get }
var kIOHIDScrollAccelerationKey: String { get }
var kIOHIDScrollAccelerationTypeKey: String { get }
var kIOHIDDigitizerTipThresholdKey: String { get }
var kIOHIDSurfaceDimensionsKey: String { get }
var kIOHIDWidthKey: String { get }
var kIOHIDHeightKey: String { get }
var kIOHIDMouseAccelerationType: String { get }
var kIOHIDPointerButtonMode: String { get }
var kIOHIDPointerButtonModeKey: String { get }
var kIOHIDUserKeyUsageMapKey: String { get }
var kIOHIDKeyboardCapsLockDelayOverride: String { get }
var kIOHIDKeyboardCapsLockDelayOverrideKey: String { get }
var kIOHIDServiceEjectDelayKey: String { get }
var kIOHIDServiceInitialKeyRepeatDelayKey: String { get }
var kIOHIDServiceKeyRepeatDelayKey: String { get }
var kIOHIDIdleTimeMicrosecondsKey: String { get }
var kIOHIDServiceCapsLockStateKey: String { get }
var _NeXT_MACH_EVENT_DRIVER_: Int32 { get }
var kIOHIDKindKey: String { get }
var kIOHIDInterfaceIDKey: String { get }
var kIOHIDSubinterfaceIDKey: String { get }
var kIOHIDOriginalSubinterfaceIDKey: String { get }
var kIOHIDParametersKey: String { get }
var kIOHIDVirtualHIDevice: String { get }
var kIOHIDKeyRepeatKey: String { get }
var kIOHIDInitialKeyRepeatKey: String { get }
var kIOHIDKeyMappingKey: String { get }
var kIOHIDResetKeyboardKey: String { get }
var kIOHIDKeyboardModifierMappingPairsKey: String { get }
var kIOHIDKeyboardModifierMappingSrcKey: String { get }
var kIOHIDKeyboardModifierMappingDstKey: String { get }
var kIOHIDKeyboardCapsLockDoesLockKey: String { get }
var kIOHIDKeyboardSupportsF12EjectKey: String { get }
var kIOHIDKeyboardSupportedModifiersKey: String { get }
var kIOHIDKeyboardGlobalModifiersKey: String { get }
var kIOHIDServiceGlobalModifiersUsageKey: String { get }
var kIOHIDPointerResolutionKey: String { get }
var kIOHIDResetPointerKey: String { get }
var kIOHIDPointerConvertAbsoluteKey: String { get }
var kIOHIDPointerContactToMoveKey: String { get }
var kIOHIDPointerPressureToClickKey: String { get }
var kIOHIDPointerButtonCountKey: String { get }
var kIOHIDPointerAccelerationSettingsKey: String { get }
var kIOHIDPointerAccelerationTableKey: String { get }
var kIOHIDPointerAccelerationMultiplierKey: String { get }
var kIOHIDScrollResetKey: String { get }
var kIOHIDScrollResolutionKey: String { get }
var kIOHIDScrollReportRateKey: String { get }
var kIOHIDScrollAccelerationTableKey: String { get }
var kIOHIDScrollResolutionXKey: String { get }
var kIOHIDScrollResolutionYKey: String { get }
var kIOHIDScrollResolutionZKey: String { get }
var kIOHIDScrollAccelerationTableXKey: String { get }
var kIOHIDScrollAccelerationTableYKey: String { get }
var kIOHIDScrollAccelerationTableZKey: String { get }
var kIOHIDScrollMouseButtonKey: String { get }
var kIOHIDScrollZoomModifierMaskKey: String { get }
var kIOHIDTrackpadScrollAccelerationKey: String { get }
var kIOHIDTrackpadAccelerationType: String { get }
var kIOHIDClickTimeKey: String { get }
var kIOHIDClickSpaceKey: String { get }
var kIOHIDWaitCursorFrameIntervalKey: String { get }
var kIOHIDAutoDimThresholdKey: String { get }
var kIOHIDAutoDimStateKey: String { get }
var kIOHIDAutoDimTimeKey: String { get }
var kIOHIDIdleTimeKey: String { get }
var kIOHIDBrightnessKey: String { get }
var kIOHIDAutoDimBrightnessKey: String { get }
var kIOHIDFKeyModeKey: String { get }
var kIOHIDStickyKeysDisabledKey: String { get }
var kIOHIDStickyKeysOnKey: String { get }
var kIOHIDStickyKeysShiftTogglesKey: String { get }
var kIOHIDResetStickyKeyNotification: String { get }
var kIOHIDMouseKeysOptionTogglesKey: String { get }
var kIOHIDSlowKeysDelayKey: String { get }
var kIOHIDF12EjectDelayKey: String { get }
var kIOHIDMouseKeysOnKey: String { get }
var kIOHIDUseKeyswitchKey: String { get }
var kIOHIDDisallowRemappingOfPrimaryClickKey: String { get }
var kIOHIDMouseKeysEnablesVirtualNumPadKey: String { get }
var kIOHIDResetLEDsKey: String { get }
var kHIDAccelParametricCurvesKey: String { get }
var kHIDPointerReportRateKey: String { get }
var kHIDTrackingAccelParametricCurvesKey: String { get }
var kHIDScrollAccelParametricCurvesKey: String { get }
var kHIDAccelParametricCurvesDebugKey: String { get }
var kHIDScrollAccelParametricCurvesDebugKey: String { get }
var kHIDAccelGainLinearKey: String { get }
var kHIDAccelGainParabolicKey: String { get }
var kHIDAccelGainCubicKey: String { get }
var kHIDAccelGainQuarticKey: String { get }
var kHIDAccelTangentSpeedLinearKey: String { get }
var kHIDAccelTangentSpeedParabolicRootKey: String { get }
var kHIDAccelTangentSpeedCubicRootKey: String { get }
var kHIDAccelTangentSpeedQuarticRootKey: String { get }
var kHIDAccelIndexKey: String { get }
var kIOHIDScrollCountMaxTimeDeltaBetweenKey: String { get }
var kIOHIDScrollCountMaxTimeDeltaToSustainKey: String { get }
var kIOHIDScrollCountMinDeltaToStartKey: String { get }
var kIOHIDScrollCountMinDeltaToSustainKey: String { get }
var kIOHIDScrollCountIgnoreMomentumScrollsKey: String { get }
var kIOHIDScrollCountMouseCanResetKey: String { get }
var kIOHIDScrollCountMaxKey: String { get }
var kIOHIDScrollCountAccelerationFactorKey: String { get }
var kIOHIDScrollCountZeroKey: String { get }
var kIOHIDScrollCountBootDefaultKey: String { get }
var kIOHIDScrollCountResetKey: String { get }
var kIOHIDActivityUserIdleKey: String { get }
struct IOHIDButtonModes : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOHIDButtonMode_BothLeftClicks: IOHIDButtonModes { get }
var kIOHIDButtonMode_ReverseLeftRightClicks: IOHIDButtonModes { get }
var kIOHIDButtonMode_EnableRightClick: IOHIDButtonModes { get }
var EVSIOSB: String { get }
var EVSIOSB_SIZE: Int32 { get }
var EVSIOSADB: String { get }
var EVSIOSADB_SIZE: Int32 { get }
var EVSIOINFO: String { get }
var EVSIOSKR: String { get }
var EVSIOSIKR: String { get }
var EVSIORKBD: String { get }
var EVSIORKBD_SIZE: Int32 { get }
var EVSIOCKML: String { get }
var EVSIOCKML_SIZE: Int32 { get }
var EVSIOSKM: String { get }
var EVSIOSKM_SIZE: Int32 { get }
var EVSIOCKM: String { get }
var EVSIOCKM_SIZE: Int32 { get }
var EVSIOSMS: String { get }
var EVSIOSMS_SIZE: Int32 { get }
var EVSIOCMS: String { get }
var EVSIOCMS_SIZE: Int32 { get }
var EVSIOSCT: String { get }
var EVSIOSCS: String { get }
struct evsioEVSIOSCSIndices : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var EVSIOSCS_X: evsioEVSIOSCSIndices { get }
var EVSIOSCS_Y: evsioEVSIOSCSIndices { get }
var EVSIOSADT: String { get }
var EVSIOSADS: String { get }
var EVSIOSADS_SIZE: Int32 { get }
var EVSIORMS: String { get }
var EVSIORMS_SIZE: Int32 { get }
var EVSIOCCT: String { get }
var EVSIOCADT: String { get }
var EVSIOGDADT: String { get }
var EVSIOIDLE: String { get }
var EVSIOCCS: String { get }
struct evsioEVSIOCCSIndices : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var EVSIOCCS_X: evsioEVSIOCCSIndices { get }
var EVSIOCCS_Y: evsioEVSIOCCSIndices { get }
var EVSIOCADS: String { get }
var EVSIOCADS_SIZE: Int32 { get }
var kIOHIDCapsLockState: Int { get }
var kIOHIDNumLockState: Int { get }
var kIOHIDActivityUserIdle: Int { get }
var kIOHIDActivityDisplayOn: Int { get }
var MINPRESSURE: Int32 { get }
var MAXPRESSURE: Int32 { get }
var LLEQSIZE: Int32 { get }
struct _NXEQElStruct {
  var next: Int32
  var sema: OSSpinLock
  var event: NXEvent
  init()
  init(next: Int32, sema: OSSpinLock, event: NXEvent)
}
typealias NXEQElement = _NXEQElStruct
struct _evOffsets {
  var evGlobalsOffset: Int32
  var evShmemOffset: Int32
  init()
  init(evGlobalsOffset: Int32, evShmemOffset: Int32)
}
typealias EvOffsets = _evOffsets
struct _evGlobals {
  var cursorSema: OSSpinLock
  var eNum: Int32
  var buttons: Int32
  var eventFlags: Int32
  var VertRetraceClock: Int32
  var cursorLoc: IOGPoint
  var frame: Int32
  var workBounds: IOGBounds
  var mouseRect: IOGBounds
  var version: Int32
  var structSize: Int32
  var lastFrame: Int32
  var screenCursorFixed: IOFixedPoint32
  var desktopCursorFixed: IOFixedPoint32
  var reservedA: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  var reserved: UInt32
  var updateCursorPositionFromFixed: UInt32
  var logCursorUpdates: UInt32
  var wantPressure: UInt32
  var wantPrecision: UInt32
  var dontWantCoalesce: UInt32
  var dontCoalesce: UInt32
  var mouseRectValid: UInt32
  var movedMask: Int32
  var waitCursorSema: OSSpinLock
  var AALastEventSent: Int32
  var AALastEventConsumed: Int32
  var waitCursorUp: Int32
  var ctxtTimedOut: CChar
  var waitCursorEnabled: CChar
  var globalWaitCursorEnabled: CChar
  var waitThreshold: Int32
  var LLEHead: Int32
  var LLETail: Int32
  var LLELast: Int32
  var lleq: (NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement)
  init()
  init(cursorSema: OSSpinLock, eNum: Int32, buttons: Int32, eventFlags: Int32, VertRetraceClock: Int32, cursorLoc: IOGPoint, frame: Int32, workBounds: IOGBounds, mouseRect: IOGBounds, version: Int32, structSize: Int32, lastFrame: Int32, screenCursorFixed: IOFixedPoint32, desktopCursorFixed: IOFixedPoint32, reservedA: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), reserved: UInt32, updateCursorPositionFromFixed: UInt32, logCursorUpdates: UInt32, wantPressure: UInt32, wantPrecision: UInt32, dontWantCoalesce: UInt32, dontCoalesce: UInt32, mouseRectValid: UInt32, movedMask: Int32, waitCursorSema: OSSpinLock, AALastEventSent: Int32, AALastEventConsumed: Int32, waitCursorUp: Int32, ctxtTimedOut: CChar, waitCursorEnabled: CChar, globalWaitCursorEnabled: CChar, waitThreshold: Int32, LLEHead: Int32, LLETail: Int32, LLELast: Int32, lleq: (NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement, NXEQElement))
}
typealias EvGlobals = _evGlobals
struct evioLLEvent {
  var setCursor: Int32
  var type: Int32
  var location: IOGPoint
  var data: NXEventData
  var setFlags: Int32
  var flags: Int32
  init()
  init(setCursor: Int32, type: Int32, location: IOGPoint, data: NXEventData, setFlags: Int32, flags: Int32)
}
typealias _NXLLEvent = evioLLEvent
struct evioSpecialKeyMsg {
  var Head: mach_msg_header_t
  var key: Int32
  var direction: Int32
  var flags: Int32
  var level: Int32
  init()
  init(Head: mach_msg_header_t, key: Int32, direction: Int32, flags: Int32, level: Int32)
}
typealias evioSpecialKeyMsg_t = UnsafeMutablePointer<evioSpecialKeyMsg>
var EV_AUDIO_MIN_VOLUME: Int32 { get }
var EV_AUDIO_MAX_VOLUME: Int32 { get }
var kIOHIDSystemClass: String { get }
var kIOHIKeyboardClass: String { get }
var kIOHIPointingClass: String { get }
var IOHIDSYSTEM_CONFORMSTO: String { get }
var kIOHIDEventNotification: Int { get }
var kIOHIDCurrentShmemVersion: Int32 { get }
var kIOHIDLastCompatibleShmemVersion: Int32 { get }
var kIOHIDServerConnectType: Int { get }
var kIOHIDParamConnectType: Int { get }
var kIOHIDEventSystemConnectType: Int { get }
var kIOHIDGlobalMemory: Int { get }
var kIOHIDEventQueueTypeKernel: Int { get }
var kIOHIDEventQueueTypeUser: Int { get }
var kIOHIDOpenedByEventSystem: Int { get }
var kIOHIDOpenedByFastPathClient: Int { get }
func IOHIDCreateSharedMemory(_ connect: io_connect_t, _ version: UInt32) -> kern_return_t
func IOHIDSetEventsEnable(_ connect: io_connect_t, _ enable: boolean_t) -> kern_return_t
@available(macOS, deprecated: 11.0)
func IOHIDSetCursorEnable(_ connect: io_connect_t, _ enable: boolean_t) -> kern_return_t
var kIOHIDSetGlobalEventFlags: Int { get }
var kIOHIDSetCursorPosition: Int { get }
var kIOHIDSetRelativeCursorPosition: Int { get }
var kIOHIDPostHIDManagerEvent: Int { get }
var HIDPostEventDeprecatedMsg: String { get }
@available(macOS, deprecated: 11.0, message: "Use CGSEventTap for posting HID events, IOHIDUserDevice for simulating HID device, IOPMAssertionDeclareUserActivity for reporting user activity")
func IOHIDPostEvent(_ connect: io_connect_t, _ eventType: UInt32, _ location: IOGPoint, _ eventData: UnsafePointer<NXEventData>!, _ eventDataVersion: UInt32, _ eventFlags: IOOptionBits, _ options: IOOptionBits) -> kern_return_t
@available(macOS, deprecated: 11.0)
func IOHIDSetMouseLocation(_ connect: io_connect_t, _ x: Int32, _ y: Int32) -> kern_return_t
@available(*, deprecated)
func IOHIDGetButtonEventNum(_ connect: io_connect_t, _ button: NXMouseButton, _ eventNum: UnsafeMutablePointer<Int32>!) -> kern_return_t
@available(macOS, introduced: 10.0, deprecated: 10.12)
func IOHIDGetScrollAcceleration(_ handle: io_connect_t, _ acceleration: UnsafeMutablePointer<Double>!) -> kern_return_t
@available(macOS, introduced: 10.0, deprecated: 10.12)
func IOHIDSetScrollAcceleration(_ handle: io_connect_t, _ acceleration: Double) -> kern_return_t
@available(macOS, introduced: 10.0, deprecated: 10.12)
func IOHIDGetMouseAcceleration(_ handle: io_connect_t, _ acceleration: UnsafeMutablePointer<Double>!) -> kern_return_t
@available(macOS, introduced: 10.0, deprecated: 10.12)
func IOHIDSetMouseAcceleration(_ handle: io_connect_t, _ acceleration: Double) -> kern_return_t
@available(macOS, deprecated: 11.0)
func IOHIDGetMouseButtonMode(_ handle: io_connect_t, _ mode: UnsafeMutablePointer<Int32>!) -> kern_return_t
@available(macOS, introduced: 10.0, deprecated: 10.12)
func IOHIDSetMouseButtonMode(_ handle: io_connect_t, _ mode: Int32) -> kern_return_t
@available(macOS, introduced: 10.0, deprecated: 10.12)
func IOHIDGetAccelerationWithKey(_ handle: io_connect_t, _ key: CFString!, _ acceleration: UnsafeMutablePointer<Double>!) -> kern_return_t
@available(macOS, introduced: 10.0, deprecated: 10.12)
func IOHIDSetAccelerationWithKey(_ handle: io_connect_t, _ key: CFString!, _ acceleration: Double) -> kern_return_t
@available(macOS, introduced: 10.0, deprecated: 10.12)
func IOHIDGetParameter(_ handle: io_connect_t, _ key: CFString!, _ maxSize: IOByteCount, _ bytes: UnsafeMutableRawPointer!, _ actualSize: UnsafeMutablePointer<IOByteCount>!) -> kern_return_t
@available(macOS, introduced: 10.0, deprecated: 10.12)
func IOHIDSetParameter(_ handle: io_connect_t, _ key: CFString!, _ bytes: UnsafeRawPointer!, _ size: IOByteCount) -> kern_return_t
func IOHIDCopyCFTypeParameter(_ handle: io_connect_t, _ key: CFString!, _ parameter: UnsafeMutablePointer<Unmanaged<CFTypeRef>?>!) -> kern_return_t
func IOHIDSetCFTypeParameter(_ handle: io_connect_t, _ key: CFString!, _ parameter: CFTypeRef!) -> kern_return_t
func IOHIDGetStateForSelector(_ handle: io_connect_t, _ selector: Int32, _ state: UnsafeMutablePointer<UInt32>!) -> kern_return_t
func IOHIDSetStateForSelector(_ handle: io_connect_t, _ selector: Int32, _ state: UInt32) -> kern_return_t
func IOHIDGetModifierLockState(_ handle: io_connect_t, _ selector: Int32, _ state: UnsafeMutablePointer<Bool>!) -> kern_return_t
func IOHIDSetModifierLockState(_ handle: io_connect_t, _ selector: Int32, _ state: Bool) -> kern_return_t
@available(macOS, introduced: 10.0, deprecated: 11.0)
func IOHIDRegisterVirtualDisplay(_ handle: io_connect_t, _ display_token: UnsafeMutablePointer<UInt32>!) -> kern_return_t
@available(macOS, introduced: 10.0, deprecated: 11.0)
func IOHIDUnregisterVirtualDisplay(_ handle: io_connect_t, _ display_token: UInt32) -> kern_return_t
@available(macOS, introduced: 10.0, deprecated: 11.0)
func IOHIDSetVirtualDisplayBounds(_ handle: io_connect_t, _ display_token: UInt32, _ bounds: UnsafePointer<IOGBounds>!) -> kern_return_t
@available(macOS, deprecated: 11.0)
func IOHIDGetActivityState(_ handle: io_connect_t, _ hidActivityIdle: UnsafeMutablePointer<Bool>!) -> kern_return_t
struct IOHIDRequestType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOHIDRequestTypePostEvent: IOHIDRequestType { get }
var kIOHIDRequestTypeListenEvent: IOHIDRequestType { get }
struct IOHIDAccessType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOHIDAccessTypeGranted: IOHIDAccessType { get }
var kIOHIDAccessTypeDenied: IOHIDAccessType { get }
var kIOHIDAccessTypeUnknown: IOHIDAccessType { get }
@available(macOS 10.15, *)
func IOHIDCheckAccess(_ requestType: IOHIDRequestType) -> IOHIDAccessType
@available(macOS 10.15, *)
func IOHIDRequestAccess(_ requestType: IOHIDRequestType) -> Bool
typealias NXEventHandle = mach_port_t
@available(macOS, introduced: 10.0, deprecated: 10.12)
func NXOpenEventStatus() -> NXEventHandle
@available(macOS, introduced: 10.0, deprecated: 10.12)
func NXCloseEventStatus(_ handle: NXEventHandle)
@available(*, deprecated)
func NXEventSystemInfo(_ handle: NXEventHandle, _ flavor: UnsafeMutablePointer<CChar>!, _ evs_info: UnsafeMutablePointer<Int32>!, _ evs_info_cnt: UnsafeMutablePointer<UInt32>!) -> NXEventSystemInfoType!
@available(macOS, introduced: 10.0, deprecated: 10.12)
func NXSetKeyRepeatInterval(_ handle: NXEventHandle, _ seconds: Double)
@available(macOS, introduced: 10.0, deprecated: 10.12)
func NXKeyRepeatInterval(_ handle: NXEventHandle) -> Double
@available(macOS, introduced: 10.0, deprecated: 10.12)
func NXSetKeyRepeatThreshold(_ handle: NXEventHandle, _ threshold: Double)
@available(macOS, introduced: 10.0, deprecated: 10.12)
func NXKeyRepeatThreshold(_ handle: NXEventHandle) -> Double
@available(*, deprecated)
func NXResetKeyboard(_ handle: NXEventHandle)
@available(macOS, introduced: 10.0, deprecated: 10.12)
func NXSetClickTime(_ handle: NXEventHandle, _ seconds: Double)
@available(macOS, introduced: 10.0, deprecated: 10.12)
func NXClickTime(_ handle: NXEventHandle) -> Double
@available(macOS, introduced: 10.0, deprecated: 10.12)
func NXSetClickSpace(_ handle: NXEventHandle, _ area: UnsafeMutablePointer<NXSize>!)
@available(macOS, introduced: 10.0, deprecated: 10.12)
func NXGetClickSpace(_ handle: NXEventHandle, _ area: UnsafeMutablePointer<NXSize>!)
@available(*, deprecated)
func NXResetMouse(_ handle: NXEventHandle)
var NX_NUMKEYCODES: Int32 { get }
var NX_NUMSEQUENCES: Int32 { get }
var NX_NUMMODIFIERS: Int32 { get }
var NX_BYTE_CODES: Int32 { get }
var NX_WHICHMODMASK: Int32 { get }
var NX_MODMASK: Int32 { get }
var NX_CHARGENMASK: Int32 { get }
var NX_SPECIALKEYMASK: Int32 { get }
var NX_KEYSTATEMASK: Int32 { get }
var NX_NOSPECIALKEY: Int32 { get }
var NX_KEYTYPE_SOUND_UP: Int32 { get }
var NX_KEYTYPE_SOUND_DOWN: Int32 { get }
var NX_KEYTYPE_BRIGHTNESS_UP: Int32 { get }
var NX_KEYTYPE_BRIGHTNESS_DOWN: Int32 { get }
var NX_KEYTYPE_CAPS_LOCK: Int32 { get }
var NX_KEYTYPE_HELP: Int32 { get }
var NX_POWER_KEY: Int32 { get }
var NX_KEYTYPE_MUTE: Int32 { get }
var NX_UP_ARROW_KEY: Int32 { get }
var NX_DOWN_ARROW_KEY: Int32 { get }
var NX_KEYTYPE_NUM_LOCK: Int32 { get }
var NX_KEYTYPE_CONTRAST_UP: Int32 { get }
var NX_KEYTYPE_CONTRAST_DOWN: Int32 { get }
var NX_KEYTYPE_LAUNCH_PANEL: Int32 { get }
var NX_KEYTYPE_EJECT: Int32 { get }
var NX_KEYTYPE_VIDMIRROR: Int32 { get }
var NX_KEYTYPE_PLAY: Int32 { get }
var NX_KEYTYPE_NEXT: Int32 { get }
var NX_KEYTYPE_PREVIOUS: Int32 { get }
var NX_KEYTYPE_FAST: Int32 { get }
var NX_KEYTYPE_REWIND: Int32 { get }
var NX_KEYTYPE_ILLUMINATION_UP: Int32 { get }
var NX_KEYTYPE_ILLUMINATION_DOWN: Int32 { get }
var NX_KEYTYPE_ILLUMINATION_TOGGLE: Int32 { get }
var NX_NUMSPECIALKEYS: Int32 { get }
var NX_NUM_SCANNED_SPECIALKEYS: Int32 { get }
var NX_KEYTYPE_MENU: Int32 { get }
var NX_MODIFIERKEY_ALPHALOCK: Int32 { get }
var NX_MODIFIERKEY_SHIFT: Int32 { get }
var NX_MODIFIERKEY_CONTROL: Int32 { get }
var NX_MODIFIERKEY_ALTERNATE: Int32 { get }
var NX_MODIFIERKEY_COMMAND: Int32 { get }
var NX_MODIFIERKEY_NUMERICPAD: Int32 { get }
var NX_MODIFIERKEY_HELP: Int32 { get }
var NX_MODIFIERKEY_SECONDARYFN: Int32 { get }
var NX_MODIFIERKEY_NUMLOCK: Int32 { get }
var NX_MODIFIERKEY_RSHIFT: Int32 { get }
var NX_MODIFIERKEY_RCONTROL: Int32 { get }
var NX_MODIFIERKEY_RALTERNATE: Int32 { get }
var NX_MODIFIERKEY_RCOMMAND: Int32 { get }
var NX_MODIFIERKEY_ALPHALOCK_STATELESS: Int32 { get }
var NX_MODIFIERKEY_LAST_KEY: Int32 { get }
struct _NXParsedKeyMapping_ {
  var shorts: Int16
  var keyBits: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
  var maxMod: Int32
  var modDefs: (UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?)
  var numDefs: Int32
  var keyDefs: (UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?)
  var numSeqs: Int32
  var seqDefs: (UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?)
  var numSpecialKeys: Int32
  var specialKeys: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)
  var mapping: UnsafePointer<UInt8>!
  var mappingLen: Int32
  init()
  init(shorts: Int16, keyBits: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar), maxMod: Int32, modDefs: (UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?), numDefs: Int32, keyDefs: (UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?), numSeqs: Int32, seqDefs: (UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?), numSpecialKeys: Int32, specialKeys: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), mapping: UnsafePointer<UInt8>!, mappingLen: Int32)
}
typealias NXParsedKeyMapping = _NXParsedKeyMapping_
