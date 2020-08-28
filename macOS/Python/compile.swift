
func PyNode_Compile(_: UnsafeMutablePointer<_node>!, _: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyCodeObject>!
struct PyFutureFeatures {
  var ff_features: Int32
  var ff_lineno: Int32
  init()
  init(ff_features: Int32, ff_lineno: Int32)
}
var FUTURE_NESTED_SCOPES: String { get }
var FUTURE_GENERATORS: String { get }
var FUTURE_DIVISION: String { get }
var FUTURE_ABSOLUTE_IMPORT: String { get }
var FUTURE_WITH_STATEMENT: String { get }
var FUTURE_PRINT_FUNCTION: String { get }
var FUTURE_UNICODE_LITERALS: String { get }
func PyAST_Compile(_: OpaquePointer!, _: UnsafePointer<CChar>!, _: UnsafeMutablePointer<PyCompilerFlags>!, _: OpaquePointer!) -> UnsafeMutablePointer<PyCodeObject>!
func PyFuture_FromAST(_: OpaquePointer!, _: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyFutureFeatures>!
