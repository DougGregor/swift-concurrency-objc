
var PyUnicodeData_CAPSULE_NAME: String { get }
struct _PyUnicode_Name_CAPI {
  var size: Int32
  var getname: (@convention(c) (UnsafeMutablePointer<PyObject>?, Py_UCS4, UnsafeMutablePointer<CChar>?, Int32) -> Int32)!
  var getcode: (@convention(c) (UnsafeMutablePointer<PyObject>?, UnsafePointer<CChar>?, Int32, UnsafeMutablePointer<Py_UCS4>?) -> Int32)!
  init()
  init(size: Int32, getname: (@convention(c) (UnsafeMutablePointer<PyObject>?, Py_UCS4, UnsafeMutablePointer<CChar>?, Int32) -> Int32)!, getcode: (@convention(c) (UnsafeMutablePointer<PyObject>?, UnsafePointer<CChar>?, Int32, UnsafeMutablePointer<Py_UCS4>?) -> Int32)!)
}
