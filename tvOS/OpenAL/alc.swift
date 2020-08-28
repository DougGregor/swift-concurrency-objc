
var ALC_INVALID: Int32 { get }
var ALC_VERSION_0_1: Int32 { get }
typealias ALCboolean = CChar
typealias ALCchar = CChar
typealias ALCbyte = CChar
typealias ALCubyte = UInt8
typealias ALCshort = Int16
typealias ALCushort = UInt16
typealias ALCint = Int32
typealias ALCuint = UInt32
typealias ALCsizei = Int32
typealias ALCenum = Int32
typealias ALCfloat = Float
typealias ALCdouble = Double
var ALC_FALSE: Int32 { get }
var ALC_TRUE: Int32 { get }
var ALC_FREQUENCY: Int32 { get }
var ALC_REFRESH: Int32 { get }
var ALC_SYNC: Int32 { get }
var ALC_MONO_SOURCES: Int32 { get }
var ALC_STEREO_SOURCES: Int32 { get }
var ALC_NO_ERROR: Int32 { get }
var ALC_INVALID_DEVICE: Int32 { get }
var ALC_INVALID_CONTEXT: Int32 { get }
var ALC_INVALID_ENUM: Int32 { get }
var ALC_INVALID_VALUE: Int32 { get }
var ALC_OUT_OF_MEMORY: Int32 { get }
var ALC_DEFAULT_DEVICE_SPECIFIER: Int32 { get }
var ALC_DEVICE_SPECIFIER: Int32 { get }
var ALC_EXTENSIONS: Int32 { get }
var ALC_MAJOR_VERSION: Int32 { get }
var ALC_MINOR_VERSION: Int32 { get }
var ALC_ATTRIBUTES_SIZE: Int32 { get }
var ALC_ALL_ATTRIBUTES: Int32 { get }
var ALC_DEFAULT_ALL_DEVICES_SPECIFIER: Int32 { get }
var ALC_ALL_DEVICES_SPECIFIER: Int32 { get }
var ALC_CAPTURE_DEVICE_SPECIFIER: Int32 { get }
var ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER: Int32 { get }
var ALC_CAPTURE_SAMPLES: Int32 { get }
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcCreateContext(_ device: OpaquePointer!, _ attrlist: UnsafePointer<ALCint>!) -> OpaquePointer!
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcMakeContextCurrent(_ context: OpaquePointer!) -> ALCboolean
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcProcessContext(_ context: OpaquePointer!)
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcSuspendContext(_ context: OpaquePointer!)
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcDestroyContext(_ context: OpaquePointer!)
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcGetCurrentContext() -> OpaquePointer!
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcGetContextsDevice(_ context: OpaquePointer!) -> OpaquePointer!
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcOpenDevice(_ devicename: UnsafePointer<ALCchar>!) -> OpaquePointer!
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcCloseDevice(_ device: OpaquePointer!) -> ALCboolean
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcGetError(_ device: OpaquePointer!) -> ALCenum
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcIsExtensionPresent(_ device: OpaquePointer!, _ extname: UnsafePointer<ALCchar>!) -> ALCboolean
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcGetProcAddress(_ device: OpaquePointer!, _ funcname: UnsafePointer<ALCchar>!) -> UnsafeMutableRawPointer!
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcGetEnumValue(_ device: OpaquePointer!, _ enumname: UnsafePointer<ALCchar>!) -> ALCenum
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcGetString(_ device: OpaquePointer!, _ param: ALCenum) -> UnsafePointer<ALCchar>!
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcGetIntegerv(_ device: OpaquePointer!, _ param: ALCenum, _ size: ALCsizei, _ data: UnsafeMutablePointer<ALCint>!)
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcCaptureOpenDevice(_ devicename: UnsafePointer<ALCchar>!, _ frequency: ALCuint, _ format: ALCenum, _ buffersize: ALCsizei) -> OpaquePointer!
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcCaptureCloseDevice(_ device: OpaquePointer!) -> ALCboolean
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcCaptureStart(_ device: OpaquePointer!)
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcCaptureStop(_ device: OpaquePointer!)
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "OpenAL is deprecated in favor of AVAudioEngine")
func alcCaptureSamples(_ device: OpaquePointer!, _ buffer: UnsafeMutableRawPointer!, _ samples: ALCsizei)
typealias LPALCCREATECONTEXT = @convention(c) (OpaquePointer?, UnsafePointer<ALCint>?) -> OpaquePointer?
typealias LPALCMAKECONTEXTCURRENT = @convention(c) (OpaquePointer?) -> ALCboolean
typealias LPALCPROCESSCONTEXT = @convention(c) (OpaquePointer?) -> Void
typealias LPALCSUSPENDCONTEXT = @convention(c) (OpaquePointer?) -> Void
typealias LPALCDESTROYCONTEXT = @convention(c) (OpaquePointer?) -> Void
typealias LPALCGETCURRENTCONTEXT = @convention(c) () -> OpaquePointer?
typealias LPALCGETCONTEXTSDEVICE = @convention(c) (OpaquePointer?) -> OpaquePointer?
typealias LPALCOPENDEVICE = @convention(c) (UnsafePointer<ALCchar>?) -> OpaquePointer?
typealias LPALCCLOSEDEVICE = @convention(c) (OpaquePointer?) -> ALCboolean
typealias LPALCGETERROR = @convention(c) (OpaquePointer?) -> ALCenum
typealias LPALCISEXTENSIONPRESENT = @convention(c) (OpaquePointer?, UnsafePointer<ALCchar>?) -> ALCboolean
typealias LPALCGETPROCADDRESS = @convention(c) (OpaquePointer?, UnsafePointer<ALCchar>?) -> UnsafeMutableRawPointer?
typealias LPALCGETENUMVALUE = @convention(c) (OpaquePointer?, UnsafePointer<ALCchar>?) -> ALCenum
typealias LPALCGETSTRING = @convention(c) (OpaquePointer?, ALCenum) -> UnsafePointer<ALCchar>?
typealias LPALCGETINTEGERV = @convention(c) (OpaquePointer?, ALCenum, ALCsizei, UnsafeMutablePointer<ALCint>?) -> Void
typealias LPALCCAPTUREOPENDEVICE = @convention(c) (UnsafePointer<ALCchar>?, ALCuint, ALCenum, ALCsizei) -> OpaquePointer?
typealias LPALCCAPTURECLOSEDEVICE = @convention(c) (OpaquePointer?) -> ALCboolean
typealias LPALCCAPTURESTART = @convention(c) (OpaquePointer?) -> Void
typealias LPALCCAPTURESTOP = @convention(c) (OpaquePointer?) -> Void
typealias LPALCCAPTURESAMPLES = @convention(c) (OpaquePointer?, UnsafeMutableRawPointer?, ALCsizei) -> Void
