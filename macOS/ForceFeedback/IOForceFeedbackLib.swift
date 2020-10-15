
var kFFPlugInAPIMajorRev: Int { get }
var kFFPlugInAPIMinorAndBugRev: Int { get }
var kFFPlugInAPIStage: Int { get }
var kFFPlugInAPINonRelRev: Int { get }
struct ForceFeedbackDeviceState {
  var dwSize: UInt32
  var dwState: UInt32
  var dwLoad: UInt32
  init()
  init(dwSize: UInt32, dwState: UInt32, dwLoad: UInt32)
}
typealias ForceFeedbackDeviceStatePtr = UnsafeMutablePointer<ForceFeedbackDeviceState>
struct ForceFeedbackVersion {
  var apiVersion: NumVersion
  var plugInVersion: NumVersion
  init()
  init(apiVersion: NumVersion, plugInVersion: NumVersion)
}
typealias ForceFeedbackVersionPtr = UnsafeMutablePointer<ForceFeedbackVersion>
typealias FFEffectDownloadID = UInt32
struct IOForceFeedbackDeviceInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var ForceFeedbackGetVersion: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<ForceFeedbackVersion>?) -> HRESULT)!
  var InitializeTerminate: (@convention(c) (UnsafeMutableRawPointer?, NumVersion, io_object_t, boolean_t) -> HRESULT)!
  var DestroyEffect: (@convention(c) (UnsafeMutableRawPointer?, FFEffectDownloadID) -> HRESULT)!
  var DownloadEffect: (@convention(c) (UnsafeMutableRawPointer?, CFUUID?, UnsafeMutablePointer<FFEffectDownloadID>?, UnsafeMutablePointer<FFEFFECT>?, FFEffectParameterFlag) -> HRESULT)!
  var Escape: (@convention(c) (UnsafeMutableRawPointer?, FFEffectDownloadID, UnsafeMutablePointer<FFEFFESCAPE>?) -> HRESULT)!
  var GetEffectStatus: (@convention(c) (UnsafeMutableRawPointer?, FFEffectDownloadID, UnsafeMutablePointer<FFEffectStatusFlag>?) -> HRESULT)!
  var GetForceFeedbackCapabilities: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<FFCAPABILITIES>?) -> HRESULT)!
  var GetForceFeedbackState: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<ForceFeedbackDeviceState>?) -> HRESULT)!
  var SendForceFeedbackCommand: (@convention(c) (UnsafeMutableRawPointer?, FFCommandFlag) -> HRESULT)!
  var SetProperty: (@convention(c) (UnsafeMutableRawPointer?, FFProperty, UnsafeMutableRawPointer?) -> HRESULT)!
  var StartEffect: (@convention(c) (UnsafeMutableRawPointer?, FFEffectDownloadID, FFEffectStartFlag, UInt32) -> HRESULT)!
  var StopEffect: (@convention(c) (UnsafeMutableRawPointer?, FFEffectDownloadID) -> HRESULT)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, ForceFeedbackGetVersion: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<ForceFeedbackVersion>?) -> HRESULT)!, InitializeTerminate: (@convention(c) (UnsafeMutableRawPointer?, NumVersion, io_object_t, boolean_t) -> HRESULT)!, DestroyEffect: (@convention(c) (UnsafeMutableRawPointer?, FFEffectDownloadID) -> HRESULT)!, DownloadEffect: (@convention(c) (UnsafeMutableRawPointer?, CFUUID?, UnsafeMutablePointer<FFEffectDownloadID>?, UnsafeMutablePointer<FFEFFECT>?, FFEffectParameterFlag) -> HRESULT)!, Escape: (@convention(c) (UnsafeMutableRawPointer?, FFEffectDownloadID, UnsafeMutablePointer<FFEFFESCAPE>?) -> HRESULT)!, GetEffectStatus: (@convention(c) (UnsafeMutableRawPointer?, FFEffectDownloadID, UnsafeMutablePointer<FFEffectStatusFlag>?) -> HRESULT)!, GetForceFeedbackCapabilities: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<FFCAPABILITIES>?) -> HRESULT)!, GetForceFeedbackState: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<ForceFeedbackDeviceState>?) -> HRESULT)!, SendForceFeedbackCommand: (@convention(c) (UnsafeMutableRawPointer?, FFCommandFlag) -> HRESULT)!, SetProperty: (@convention(c) (UnsafeMutableRawPointer?, FFProperty, UnsafeMutableRawPointer?) -> HRESULT)!, StartEffect: (@convention(c) (UnsafeMutableRawPointer?, FFEffectDownloadID, FFEffectStartFlag, UInt32) -> HRESULT)!, StopEffect: (@convention(c) (UnsafeMutableRawPointer?, FFEffectDownloadID) -> HRESULT)!)
}
typealias IOForceFeedbackDeviceInterfacePtr = UnsafeMutablePointer<IOForceFeedbackDeviceInterface>
