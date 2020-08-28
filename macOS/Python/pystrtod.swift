
func PyOS_ascii_strtod(_ str: UnsafePointer<CChar>!, _ ptr: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!) -> Double
func PyOS_ascii_atof(_ str: UnsafePointer<CChar>!) -> Double
func PyOS_ascii_formatd(_ buffer: UnsafeMutablePointer<CChar>!, _ buf_len: Int, _ format: UnsafePointer<CChar>!, _ d: Double) -> UnsafeMutablePointer<CChar>!
func PyOS_string_to_double(_ str: UnsafePointer<CChar>!, _ endptr: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _ overflow_exception: UnsafeMutablePointer<PyObject>!) -> Double
func PyOS_double_to_string(_ val: Double, _ format_code: CChar, _ precision: Int32, _ flags: Int32, _ type: UnsafeMutablePointer<Int32>!) -> UnsafeMutablePointer<CChar>!
func _Py_parse_inf_or_nan(_ p: UnsafePointer<CChar>!, _ endptr: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!) -> Double
var Py_DTSF_SIGN: Int32 { get }
var Py_DTSF_ADD_DOT_0: Int32 { get }
var Py_DTSF_ALT: Int32 { get }
var Py_DTST_FINITE: Int32 { get }
var Py_DTST_INFINITE: Int32 { get }
var Py_DTST_NAN: Int32 { get }
