
var COREVIDEO_TRUE: Bool { get }
var COREVIDEO_FALSE: Bool { get }
var COREVIDEO_SUPPORTS_DIRECT3D: Bool { get }
var COREVIDEO_SUPPORTS_OPENGL: Bool { get }
var COREVIDEO_SUPPORTS_OPENGLES: Bool { get }
var COREVIDEO_SUPPORTS_COLORSPACE: Bool { get }
var COREVIDEO_SUPPORTS_DISPLAYLINK: Bool { get }
var COREVIDEO_SUPPORTS_IOSURFACE: Bool { get }
var COREVIDEO_SUPPORTS_PREFETCH: Bool { get }
var COREVIDEO_SUPPORTS_IOSURFACE_PREFETCH: Bool { get }
var COREVIDEO_SUPPORTS_GLES_TEX_IMAGE_IOSURFACE: Bool { get }
var COREVIDEO_USE_IOSURFACEREF: Bool { get }
var COREVIDEO_SUPPORTS_METAL: Bool { get }
var COREVIDEO_SUPPORTS_PERMANENT_ALLOCATOR: Bool { get }
var COREVIDEO_USE_DERIVED_ENUMS_FOR_CONSTANTS: Bool { get }
var COREVIDEO_DECLARE_NULLABILITY: Bool { get }
typealias CVOptionFlags = UInt64
struct CVSMPTETime {
  var subframes: Int16
  var subframeDivisor: Int16
  var counter: UInt32
  var type: UInt32
  var flags: UInt32
  var hours: Int16
  var minutes: Int16
  var seconds: Int16
  var frames: Int16
  init()
  init(subframes: Int16, subframeDivisor: Int16, counter: UInt32, type: UInt32, flags: UInt32, hours: Int16, minutes: Int16, seconds: Int16, frames: Int16)
}
enum CVSMPTETimeType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case type24
  case type25
  case type30Drop
  case type30
  case type2997
  case type2997Drop
  case type60
  case type5994
}
struct CVSMPTETimeFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var valid: CVSMPTETimeFlags { get }
  static var running: CVSMPTETimeFlags { get }
}
struct CVTimeFlags : OptionSet {
  init(rawValue: Int32)
  let rawValue: Int32
  static var isIndefinite: CVTimeFlags { get }
}
struct CVTime {
  var timeValue: Int64
  var timeScale: Int32
  var flags: Int32
  init()
  init(timeValue: Int64, timeScale: Int32, flags: Int32)
}
struct CVTimeStamp {
  var version: UInt32
  var videoTimeScale: Int32
  var videoTime: Int64
  var hostTime: UInt64
  var rateScalar: Double
  var videoRefreshPeriod: Int64
  var smpteTime: CVSMPTETime
  var flags: UInt64
  var reserved: UInt64
  init()
  init(version: UInt32, videoTimeScale: Int32, videoTime: Int64, hostTime: UInt64, rateScalar: Double, videoRefreshPeriod: Int64, smpteTime: CVSMPTETime, flags: UInt64, reserved: UInt64)
}
struct CVTimeStampFlags : OptionSet {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var videoTimeValid: CVTimeStampFlags { get }
  static var hostTimeValid: CVTimeStampFlags { get }
  static var smpteTimeValid: CVTimeStampFlags { get }
  static var videoRefreshPeriodValid: CVTimeStampFlags { get }
  static var rateScalarValid: CVTimeStampFlags { get }
  static var topField: CVTimeStampFlags { get }
  static var bottomField: CVTimeStampFlags { get }
  static var videoHostTimeValid: CVTimeStampFlags { get }
  static var isInterlaced: CVTimeStampFlags { get }
}
let kCVZeroTime: CVTime
let kCVIndefiniteTime: CVTime
