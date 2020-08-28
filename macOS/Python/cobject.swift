
var PyCObject_Type: PyTypeObject
func PyCObject_FromVoidPtr(_ cobj: UnsafeMutableRawPointer!, _ destruct: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!) -> UnsafeMutablePointer<PyObject>!
func PyCObject_FromVoidPtrAndDesc(_ cobj: UnsafeMutableRawPointer!, _ desc: UnsafeMutableRawPointer!, _ destruct: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)!) -> UnsafeMutablePointer<PyObject>!
func PyCObject_AsVoidPtr(_: UnsafeMutablePointer<PyObject>!) -> UnsafeMutableRawPointer!
func PyCObject_GetDesc(_: UnsafeMutablePointer<PyObject>!) -> UnsafeMutableRawPointer!
func PyCObject_Import(_ module_name: UnsafeMutablePointer<CChar>!, _ cobject_name: UnsafeMutablePointer<CChar>!) -> UnsafeMutableRawPointer!
func PyCObject_SetVoidPtr(_ self: UnsafeMutablePointer<PyObject>!, _ cobj: UnsafeMutableRawPointer!) -> Int32
struct PyCObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var cobject: UnsafeMutableRawPointer!
  var desc: UnsafeMutableRawPointer!
  var destructor: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, cobject: UnsafeMutableRawPointer!, desc: UnsafeMutableRawPointer!, destructor: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!)
}
