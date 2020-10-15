
var PyCF_MASK_OBSOLETE: Int32 { get }
var PyCF_SOURCE_IS_UTF8: Int32 { get }
var PyCF_DONT_IMPLY_DEDENT: Int32 { get }
var PyCF_ONLY_AST: Int32 { get }
struct PyCompilerFlags {
  var cf_flags: Int32
  init()
  init(cf_flags: Int32)
}
func Py_SetProgramName(_: UnsafeMutablePointer<CChar>!)
func Py_GetProgramName() -> UnsafeMutablePointer<CChar>!
func Py_SetPythonHome(_: UnsafeMutablePointer<CChar>!)
func Py_GetPythonHome() -> UnsafeMutablePointer<CChar>!
func Py_Initialize()
func Py_InitializeEx(_: Int32)
func Py_Finalize()
func Py_IsInitialized() -> Int32
func Py_NewInterpreter() -> UnsafeMutablePointer<PyThreadState>!
func Py_EndInterpreter(_: UnsafeMutablePointer<PyThreadState>!)
func PyRun_AnyFileFlags(_: UnsafeMutablePointer<FILE>!, _: UnsafePointer<CChar>!, _: UnsafeMutablePointer<PyCompilerFlags>!) -> Int32
func PyRun_AnyFileExFlags(_: UnsafeMutablePointer<FILE>!, _: UnsafePointer<CChar>!, _: Int32, _: UnsafeMutablePointer<PyCompilerFlags>!) -> Int32
func PyRun_SimpleStringFlags(_: UnsafePointer<CChar>!, _: UnsafeMutablePointer<PyCompilerFlags>!) -> Int32
func PyRun_SimpleFileExFlags(_: UnsafeMutablePointer<FILE>!, _: UnsafePointer<CChar>!, _: Int32, _: UnsafeMutablePointer<PyCompilerFlags>!) -> Int32
func PyRun_InteractiveOneFlags(_: UnsafeMutablePointer<FILE>!, _: UnsafePointer<CChar>!, _: UnsafeMutablePointer<PyCompilerFlags>!) -> Int32
func PyRun_InteractiveLoopFlags(_: UnsafeMutablePointer<FILE>!, _: UnsafePointer<CChar>!, _: UnsafeMutablePointer<PyCompilerFlags>!) -> Int32
func PyParser_ASTFromString(_: UnsafePointer<CChar>!, _: UnsafePointer<CChar>!, _: Int32, _ flags: UnsafeMutablePointer<PyCompilerFlags>!, _: OpaquePointer!) -> OpaquePointer!
func PyParser_ASTFromFile(_: UnsafeMutablePointer<FILE>!, _: UnsafePointer<CChar>!, _: Int32, _: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<PyCompilerFlags>!, _: UnsafeMutablePointer<Int32>!, _: OpaquePointer!) -> OpaquePointer!
func PyParser_SimpleParseStringFlags(_: UnsafePointer<CChar>!, _: Int32, _: Int32) -> UnsafeMutablePointer<_node>!
func PyParser_SimpleParseFileFlags(_: UnsafeMutablePointer<FILE>!, _: UnsafePointer<CChar>!, _: Int32, _: Int32) -> UnsafeMutablePointer<_node>!
func PyRun_StringFlags(_: UnsafePointer<CChar>!, _: Int32, _: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyCompilerFlags>!) -> UnsafeMutablePointer<PyObject>!
func PyRun_FileExFlags(_: UnsafeMutablePointer<FILE>!, _: UnsafePointer<CChar>!, _: Int32, _: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyObject>!, _: Int32, _: UnsafeMutablePointer<PyCompilerFlags>!) -> UnsafeMutablePointer<PyObject>!
func Py_CompileStringFlags(_: UnsafePointer<CChar>!, _: UnsafePointer<CChar>!, _: Int32, _: UnsafeMutablePointer<PyCompilerFlags>!) -> UnsafeMutablePointer<PyObject>!
func Py_SymtableString(_: UnsafePointer<CChar>!, _: UnsafePointer<CChar>!, _: Int32) -> OpaquePointer!
func PyErr_Print()
func PyErr_PrintEx(_: Int32)
func PyErr_Display(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyObject>!)
func Py_AtExit(_ func: (@convention(c) () -> Void)!) -> Int32
func Py_Exit(_: Int32)
func Py_FdIsInteractive(_: UnsafeMutablePointer<FILE>!, _: UnsafePointer<CChar>!) -> Int32
func Py_Main(_ argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!) -> Int32
func Py_GetProgramFullPath() -> UnsafeMutablePointer<CChar>!
func Py_GetPrefix() -> UnsafeMutablePointer<CChar>!
func Py_GetExecPrefix() -> UnsafeMutablePointer<CChar>!
func Py_GetPath() -> UnsafeMutablePointer<CChar>!
func Py_GetVersion() -> UnsafePointer<CChar>!
func Py_GetPlatform() -> UnsafePointer<CChar>!
func Py_GetCopyright() -> UnsafePointer<CChar>!
func Py_GetCompiler() -> UnsafePointer<CChar>!
func Py_GetBuildInfo() -> UnsafePointer<CChar>!
func Py_SubversionRevision() -> UnsafePointer<CChar>!
func Py_SubversionShortBranch() -> UnsafePointer<CChar>!
func _Py_gitidentifier() -> UnsafePointer<CChar>!
func _Py_gitversion() -> UnsafePointer<CChar>!
func _PyBuiltin_Init() -> UnsafeMutablePointer<PyObject>!
func _PySys_Init() -> UnsafeMutablePointer<PyObject>!
func _PyImport_Init()
func _PyExc_Init()
func _PyImportHooks_Init()
func _PyFrame_Init() -> Int32
func _PyInt_Init() -> Int32
func _PyLong_Init() -> Int32
func _PyFloat_Init()
func PyByteArray_Init() -> Int32
func _PyRandom_Init()
func _PyExc_Fini()
func _PyImport_Fini()
func PyMethod_Fini()
func PyFrame_Fini()
func PyCFunction_Fini()
func PyDict_Fini()
func PyTuple_Fini()
func PyList_Fini()
func PySet_Fini()
func PyString_Fini()
func PyInt_Fini()
func PyFloat_Fini()
func PyOS_FiniInterrupts()
func PyByteArray_Fini()
func _PyRandom_Fini()
func PyOS_Readline(_: UnsafeMutablePointer<FILE>!, _: UnsafeMutablePointer<FILE>!, _: UnsafeMutablePointer<CChar>!) -> UnsafeMutablePointer<CChar>!
var PyOS_InputHook: (@convention(c) () -> Int32)!
var PyOS_ReadlineFunctionPointer: (@convention(c) (UnsafeMutablePointer<FILE>?, UnsafeMutablePointer<FILE>?, UnsafeMutablePointer<CChar>?) -> UnsafeMutablePointer<CChar>?)!
var _PyOS_ReadlineTState: UnsafeMutablePointer<PyThreadState>!
var PYOS_STACK_MARGIN: Int32 { get }
typealias PyOS_sighandler_t = @convention(c) (Int32) -> Void
func PyOS_getsig(_: Int32) -> PyOS_sighandler_t!
func PyOS_setsig(_: Int32, _: PyOS_sighandler_t!) -> PyOS_sighandler_t!
func _PyOS_URandom(_ buffer: UnsafeMutableRawPointer!, _ size: Py_ssize_t) -> Int32
