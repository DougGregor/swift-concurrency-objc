
var PycStringIO_CAPSULE_NAME: String { get }
struct PycStringIO_CAPI {
  var cread: (@convention(c) (UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?, Py_ssize_t) -> Int32)!
  var creadline: (@convention(c) (UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?) -> Int32)!
  var cwrite: (@convention(c) (UnsafeMutablePointer<PyObject>?, UnsafePointer<CChar>?, Py_ssize_t) -> Int32)!
  var cgetvalue: (@convention(c) (UnsafeMutablePointer<PyObject>?) -> UnsafeMutablePointer<PyObject>?)!
  var NewOutput: (@convention(c) (Int32) -> UnsafeMutablePointer<PyObject>?)!
  var NewInput: (@convention(c) (UnsafeMutablePointer<PyObject>?) -> UnsafeMutablePointer<PyObject>?)!
  var InputType: UnsafeMutablePointer<PyTypeObject>!
  var OutputType: UnsafeMutablePointer<PyTypeObject>!
  init()
  init(cread: (@convention(c) (UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?, Py_ssize_t) -> Int32)!, creadline: (@convention(c) (UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?) -> Int32)!, cwrite: (@convention(c) (UnsafeMutablePointer<PyObject>?, UnsafePointer<CChar>?, Py_ssize_t) -> Int32)!, cgetvalue: (@convention(c) (UnsafeMutablePointer<PyObject>?) -> UnsafeMutablePointer<PyObject>?)!, NewOutput: (@convention(c) (Int32) -> UnsafeMutablePointer<PyObject>?)!, NewInput: (@convention(c) (UnsafeMutablePointer<PyObject>?) -> UnsafeMutablePointer<PyObject>?)!, InputType: UnsafeMutablePointer<PyTypeObject>!, OutputType: UnsafeMutablePointer<PyTypeObject>!)
}
var PycStringIO: UnsafeMutablePointer<PycStringIO_CAPI>!
