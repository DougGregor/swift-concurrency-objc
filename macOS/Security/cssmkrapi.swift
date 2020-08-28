
typealias CSSM_KRSP_HANDLE = uint32
struct cssm_kr_name {
  var `Type`: uint8
  var Length: uint8
  var Name: UnsafeMutablePointer<CChar>!
  init()
  init(Type: uint8, Length: uint8, Name: UnsafeMutablePointer<CChar>!)
}
typealias CSSM_KR_POLICY_TYPE = uint32
var CSSM_KR_INDIV_POLICY: Int32 { get }
var CSSM_KR_ENT_POLICY: Int32 { get }
var CSSM_KR_LE_MAN_POLICY: Int32 { get }
var CSSM_KR_LE_USE_POLICY: Int32 { get }
typealias CSSM_KR_POLICY_FLAGS = uint32
var CSSM_KR_INDIV: Int32 { get }
var CSSM_KR_ENT: Int32 { get }
var CSSM_KR_LE_MAN: Int32 { get }
var CSSM_KR_LE_USE: Int32 { get }
var CSSM_KR_LE: Int32 { get }
var CSSM_KR_OPTIMIZE: Int32 { get }
var CSSM_KR_DROP_WORKFACTOR: Int32 { get }
