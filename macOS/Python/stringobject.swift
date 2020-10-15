
struct PyStringObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var ob_size: Py_ssize_t
  var ob_shash: Int
  var ob_sstate: Int32
  var ob_sval: (CChar)
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, ob_size: Py_ssize_t, ob_shash: Int, ob_sstate: Int32, ob_sval: (CChar))
}
var SSTATE_NOT_INTERNED: Int32 { get }
var SSTATE_INTERNED_MORTAL: Int32 { get }
var SSTATE_INTERNED_IMMORTAL: Int32 { get }
var PyBaseString_Type: PyTypeObject
var PyString_Type: PyTypeObject
func PyString_FromStringAndSize(_: UnsafePointer<CChar>!, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>!
func PyString_FromString(_: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyString_FromFormatV(_: UnsafePointer<CChar>!, _: CVaListPointer) -> UnsafeMutablePointer<PyObject>!
func PyString_Size(_: UnsafeMutablePointer<PyObject>!) -> Py_ssize_t
func PyString_AsString(_: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<CChar>!
func PyString_Repr(_: UnsafeMutablePointer<PyObject>!, _: Int32) -> UnsafeMutablePointer<PyObject>!
func PyString_Concat(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>?>!, _: UnsafeMutablePointer<PyObject>!)
func PyString_ConcatAndDel(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>?>!, _: UnsafeMutablePointer<PyObject>!)
func _PyString_Resize(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>?>!, _: Py_ssize_t) -> Int32
func _PyString_Eq(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyObject>!) -> Int32
func PyString_Format(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func _PyString_FormatLong(_: UnsafeMutablePointer<PyObject>!, _: Int32, _: Int32, _: Int32, _: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _: UnsafeMutablePointer<Int32>!) -> UnsafeMutablePointer<PyObject>!
func PyString_DecodeEscape(_: UnsafePointer<CChar>!, _: Py_ssize_t, _: UnsafePointer<CChar>!, _: Py_ssize_t, _: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyString_InternInPlace(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>?>!)
func PyString_InternImmortal(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>?>!)
func PyString_InternFromString(_: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func _Py_ReleaseInternedStrings()
func _PyString_Join(_ sep: UnsafeMutablePointer<PyObject>!, _ x: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyString_Decode(_ s: UnsafePointer<CChar>!, _ size: Py_ssize_t, _ encoding: UnsafePointer<CChar>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyString_Encode(_ s: UnsafePointer<CChar>!, _ size: Py_ssize_t, _ encoding: UnsafePointer<CChar>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyString_AsEncodedObject(_ str: UnsafeMutablePointer<PyObject>!, _ encoding: UnsafePointer<CChar>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyString_AsEncodedString(_ str: UnsafeMutablePointer<PyObject>!, _ encoding: UnsafePointer<CChar>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyString_AsDecodedObject(_ str: UnsafeMutablePointer<PyObject>!, _ encoding: UnsafePointer<CChar>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyString_AsDecodedString(_ str: UnsafeMutablePointer<PyObject>!, _ encoding: UnsafePointer<CChar>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyString_AsStringAndSize(_ obj: UnsafeMutablePointer<PyObject>!, _ s: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _ len: UnsafeMutablePointer<Py_ssize_t>!) -> Int32
func _PyString_InsertThousandsGroupingLocale(_ buffer: UnsafeMutablePointer<CChar>!, _ n_buffer: Py_ssize_t, _ digits: UnsafeMutablePointer<CChar>!, _ n_digits: Py_ssize_t, _ min_width: Py_ssize_t) -> Py_ssize_t
func _PyString_InsertThousandsGrouping(_ buffer: UnsafeMutablePointer<CChar>!, _ n_buffer: Py_ssize_t, _ digits: UnsafeMutablePointer<CChar>!, _ n_digits: Py_ssize_t, _ min_width: Py_ssize_t, _ grouping: UnsafePointer<CChar>!, _ thousands_sep: UnsafePointer<CChar>!) -> Py_ssize_t
func _PyBytes_FormatAdvanced(_ obj: UnsafeMutablePointer<PyObject>!, _ format_spec: UnsafeMutablePointer<CChar>!, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>!
