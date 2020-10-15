
struct PyTryBlock {
  var b_type: Int32
  var b_handler: Int32
  var b_level: Int32
  init()
  init(b_type: Int32, b_handler: Int32, b_level: Int32)
}
struct _frame {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var ob_size: Py_ssize_t
  var f_back: UnsafeMutablePointer<_frame>!
  var f_code: UnsafeMutablePointer<PyCodeObject>!
  var f_builtins: UnsafeMutablePointer<PyObject>!
  var f_globals: UnsafeMutablePointer<PyObject>!
  var f_locals: UnsafeMutablePointer<PyObject>!
  var f_valuestack: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>?>!
  var f_stacktop: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>?>!
  var f_trace: UnsafeMutablePointer<PyObject>!
  var f_exc_type: UnsafeMutablePointer<PyObject>!
  var f_exc_value: UnsafeMutablePointer<PyObject>!
  var f_exc_traceback: UnsafeMutablePointer<PyObject>!
  var f_tstate: UnsafeMutablePointer<PyThreadState>!
  var f_lasti: Int32
  var f_lineno: Int32
  var f_iblock: Int32
  var f_blockstack: (PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock)
  var f_localsplus: (UnsafeMutablePointer<PyObject>?)
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, ob_size: Py_ssize_t, f_back: UnsafeMutablePointer<_frame>!, f_code: UnsafeMutablePointer<PyCodeObject>!, f_builtins: UnsafeMutablePointer<PyObject>!, f_globals: UnsafeMutablePointer<PyObject>!, f_locals: UnsafeMutablePointer<PyObject>!, f_valuestack: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>?>!, f_stacktop: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>?>!, f_trace: UnsafeMutablePointer<PyObject>!, f_exc_type: UnsafeMutablePointer<PyObject>!, f_exc_value: UnsafeMutablePointer<PyObject>!, f_exc_traceback: UnsafeMutablePointer<PyObject>!, f_tstate: UnsafeMutablePointer<PyThreadState>!, f_lasti: Int32, f_lineno: Int32, f_iblock: Int32, f_blockstack: (PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock, PyTryBlock), f_localsplus: (UnsafeMutablePointer<PyObject>?))
}
typealias PyFrameObject = _frame
var PyFrame_Type: PyTypeObject
func PyFrame_New(_: UnsafeMutablePointer<PyThreadState>!, _: UnsafeMutablePointer<PyCodeObject>!, _: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyFrameObject>!
func PyFrame_BlockSetup(_: UnsafeMutablePointer<PyFrameObject>!, _: Int32, _: Int32, _: Int32)
func PyFrame_BlockPop(_: UnsafeMutablePointer<PyFrameObject>!) -> UnsafeMutablePointer<PyTryBlock>!
func PyFrame_ExtendStack(_: UnsafeMutablePointer<PyFrameObject>!, _: Int32, _: Int32) -> UnsafeMutablePointer<UnsafeMutablePointer<PyObject>?>!
func PyFrame_LocalsToFast(_: UnsafeMutablePointer<PyFrameObject>!, _: Int32)
func PyFrame_FastToLocals(_: UnsafeMutablePointer<PyFrameObject>!)
func PyFrame_ClearFreeList() -> Int32
func PyFrame_GetLineNumber(_: UnsafeMutablePointer<PyFrameObject>!) -> Int32
