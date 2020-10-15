
var PyMemoryView_Type: PyTypeObject
func PyMemoryView_GetContiguous(_ base: UnsafeMutablePointer<PyObject>!, _ buffertype: Int32, _ fort: CChar) -> UnsafeMutablePointer<PyObject>!
func PyMemoryView_FromObject(_ base: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyMemoryView_FromBuffer(_ info: UnsafeMutablePointer<Py_buffer>!) -> UnsafeMutablePointer<PyObject>!
struct PyMemoryViewObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var base: UnsafeMutablePointer<PyObject>!
  var view: Py_buffer
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, base: UnsafeMutablePointer<PyObject>!, view: Py_buffer)
}
