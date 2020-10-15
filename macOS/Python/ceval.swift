
func PyEval_CallObjectWithKeywords(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyEval_SetProfile(_: Py_tracefunc!, _: UnsafeMutablePointer<PyObject>!)
func PyEval_SetTrace(_: Py_tracefunc!, _: UnsafeMutablePointer<PyObject>!)
func PyEval_GetBuiltins() -> UnsafeMutablePointer<PyObject>!
func PyEval_GetGlobals() -> UnsafeMutablePointer<PyObject>!
func PyEval_GetLocals() -> UnsafeMutablePointer<PyObject>!
func PyEval_GetFrame() -> UnsafeMutablePointer<_frame>!
func PyEval_GetRestricted() -> Int32
func PyEval_MergeCompilerFlags(_ cf: UnsafeMutablePointer<PyCompilerFlags>!) -> Int32
func Py_FlushLine() -> Int32
func Py_AddPendingCall(_ func: (@convention(c) (UnsafeMutableRawPointer?) -> Int32)!, _ arg: UnsafeMutableRawPointer!) -> Int32
func Py_MakePendingCalls() -> Int32
func Py_SetRecursionLimit(_: Int32)
func Py_GetRecursionLimit() -> Int32
func _Py_CheckRecursiveCall(_ where: UnsafePointer<CChar>!) -> Int32
var _Py_CheckRecursionLimit: Int32
func PyEval_GetFuncName(_: UnsafeMutablePointer<PyObject>!) -> UnsafePointer<CChar>!
func PyEval_GetFuncDesc(_: UnsafeMutablePointer<PyObject>!) -> UnsafePointer<CChar>!
func PyEval_GetCallStats(_: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyEval_EvalFrame(_: UnsafeMutablePointer<_frame>!) -> UnsafeMutablePointer<PyObject>!
func PyEval_EvalFrameEx(_ f: UnsafeMutablePointer<_frame>!, _ exc: Int32) -> UnsafeMutablePointer<PyObject>!
var _Py_Ticker: Int32
var _Py_CheckInterval: Int32
func PyEval_SaveThread() -> UnsafeMutablePointer<PyThreadState>!
func PyEval_RestoreThread(_: UnsafeMutablePointer<PyThreadState>!)
func PyEval_ThreadsInitialized() -> Int32
func PyEval_InitThreads()
func PyEval_AcquireLock()
func PyEval_ReleaseLock()
func PyEval_AcquireThread(_ tstate: UnsafeMutablePointer<PyThreadState>!)
func PyEval_ReleaseThread(_ tstate: UnsafeMutablePointer<PyThreadState>!)
func PyEval_ReInitThreads()
func _PyEval_SliceIndex(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Py_ssize_t>!) -> Int32
func _PyEval_SliceIndexNotNone(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Py_ssize_t>!) -> Int32
