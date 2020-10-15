
typealias CSSM_BER_TAG = uint8
var BER_TAG_UNKNOWN: Int32 { get }
var BER_TAG_BOOLEAN: Int32 { get }
var BER_TAG_INTEGER: Int32 { get }
var BER_TAG_BIT_STRING: Int32 { get }
var BER_TAG_OCTET_STRING: Int32 { get }
var BER_TAG_NULL: Int32 { get }
var BER_TAG_OID: Int32 { get }
var BER_TAG_OBJECT_DESCRIPTOR: Int32 { get }
var BER_TAG_EXTERNAL: Int32 { get }
var BER_TAG_REAL: Int32 { get }
var BER_TAG_ENUMERATED: Int32 { get }
var BER_TAG_PKIX_UTF8_STRING: Int32 { get }
var BER_TAG_SEQUENCE: Int32 { get }
var BER_TAG_SET: Int32 { get }
var BER_TAG_NUMERIC_STRING: Int32 { get }
var BER_TAG_PRINTABLE_STRING: Int32 { get }
var BER_TAG_T61_STRING: Int32 { get }
var BER_TAG_TELETEX_STRING: Int32 { get }
var BER_TAG_VIDEOTEX_STRING: Int32 { get }
var BER_TAG_IA5_STRING: Int32 { get }
var BER_TAG_UTC_TIME: Int32 { get }
var BER_TAG_GENERALIZED_TIME: Int32 { get }
var BER_TAG_GRAPHIC_STRING: Int32 { get }
var BER_TAG_ISO646_STRING: Int32 { get }
var BER_TAG_GENERAL_STRING: Int32 { get }
var BER_TAG_VISIBLE_STRING: Int32 { get }
var BER_TAG_PKIX_UNIVERSAL_STRING: Int32 { get }
var BER_TAG_PKIX_BMP_STRING: Int32 { get }
typealias CSSM_X509_OPTION = CSSM_BOOL
struct extension_data_format : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var CSSM_X509_DATAFORMAT_ENCODED: extension_data_format { get }
var CSSM_X509_DATAFORMAT_PARSED: extension_data_format { get }
var CSSM_X509_DATAFORMAT_PAIR: extension_data_format { get }
typealias CSSM_X509EXT_DATA_FORMAT = extension_data_format
