
typealias HRESULT = Int32
typealias ULONG = UInt32
typealias LPVOID = UnsafeMutableRawPointer
typealias REFIID = CFUUIDBytes
var SEVERITY_SUCCESS: Int32 { get }
var SEVERITY_ERROR: Int32 { get }
var S_OK: HRESULT { get }
var S_FALSE: HRESULT { get }
var E_UNEXPECTED: HRESULT { get }
var E_NOTIMPL: HRESULT { get }
var E_OUTOFMEMORY: HRESULT { get }
var E_INVALIDARG: HRESULT { get }
var E_NOINTERFACE: HRESULT { get }
var E_POINTER: HRESULT { get }
var E_HANDLE: HRESULT { get }
var E_ABORT: HRESULT { get }
var E_FAIL: HRESULT { get }
var E_ACCESSDENIED: HRESULT { get }
struct IUnknownVTbl {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!)
}
