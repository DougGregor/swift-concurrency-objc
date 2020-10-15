
struct perrdetail {
  var error: Int32
  var filename: UnsafePointer<CChar>!
  var lineno: Int32
  var offset: Int32
  var text: UnsafeMutablePointer<CChar>!
  var token: Int32
  var expected: Int32
  init()
  init(error: Int32, filename: UnsafePointer<CChar>!, lineno: Int32, offset: Int32, text: UnsafeMutablePointer<CChar>!, token: Int32, expected: Int32)
}
var PyPARSE_DONT_IMPLY_DEDENT: Int32 { get }
var PyPARSE_PRINT_IS_FUNCTION: Int32 { get }
var PyPARSE_UNICODE_LITERALS: Int32 { get }
func PyParser_ParseString(_: UnsafePointer<CChar>!, _: UnsafeMutablePointer<grammar>!, _: Int32, _: UnsafeMutablePointer<perrdetail>!) -> UnsafeMutablePointer<node>!
func PyParser_ParseFile(_: UnsafeMutablePointer<FILE>!, _: UnsafePointer<CChar>!, _: UnsafeMutablePointer<grammar>!, _: Int32, _: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<perrdetail>!) -> UnsafeMutablePointer<node>!
func PyParser_ParseStringFlags(_: UnsafePointer<CChar>!, _: UnsafeMutablePointer<grammar>!, _: Int32, _: UnsafeMutablePointer<perrdetail>!, _: Int32) -> UnsafeMutablePointer<node>!
func PyParser_ParseFileFlags(_: UnsafeMutablePointer<FILE>!, _: UnsafePointer<CChar>!, _: UnsafeMutablePointer<grammar>!, _: Int32, _: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<perrdetail>!, _: Int32) -> UnsafeMutablePointer<node>!
func PyParser_ParseFileFlagsEx(_: UnsafeMutablePointer<FILE>!, _: UnsafePointer<CChar>!, _: UnsafeMutablePointer<grammar>!, _: Int32, _: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<perrdetail>!, _: UnsafeMutablePointer<Int32>!) -> UnsafeMutablePointer<node>!
func PyParser_ParseStringFlagsFilename(_: UnsafePointer<CChar>!, _: UnsafePointer<CChar>!, _: UnsafeMutablePointer<grammar>!, _: Int32, _: UnsafeMutablePointer<perrdetail>!, _: Int32) -> UnsafeMutablePointer<node>!
func PyParser_ParseStringFlagsFilenameEx(_: UnsafePointer<CChar>!, _: UnsafePointer<CChar>!, _: UnsafeMutablePointer<grammar>!, _: Int32, _: UnsafeMutablePointer<perrdetail>!, _: UnsafeMutablePointer<Int32>!) -> UnsafeMutablePointer<node>!
func PyParser_SetError(_: UnsafeMutablePointer<perrdetail>!)
