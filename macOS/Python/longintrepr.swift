
typealias digit = UInt32
typealias sdigit = Int32
typealias twodigits = UInt64
typealias stwodigits = Int64
var PyLong_SHIFT: Int32 { get }
var _PyLong_DECIMAL_SHIFT: Int32 { get }
var _PyLong_DECIMAL_BASE: digit { get }
var PyLong_BASE: Int32 { get }
var SHIFT: Int32 { get }
var BASE: Int32 { get }
struct _longobject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var ob_size: Py_ssize_t
  var ob_digit: (digit)
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, ob_size: Py_ssize_t, ob_digit: (digit))
}
func _PyLong_New(_: Py_ssize_t) -> UnsafeMutablePointer<PyLongObject>!
func _PyLong_Copy(_ src: UnsafeMutablePointer<PyLongObject>!) -> UnsafeMutablePointer<PyObject>!
