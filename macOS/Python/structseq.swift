
struct PyStructSequence_Field {
  var name: UnsafeMutablePointer<CChar>!
  var doc: UnsafeMutablePointer<CChar>!
  init()
  init(name: UnsafeMutablePointer<CChar>!, doc: UnsafeMutablePointer<CChar>!)
}
struct PyStructSequence_Desc {
  var name: UnsafeMutablePointer<CChar>!
  var doc: UnsafeMutablePointer<CChar>!
  var fields: UnsafeMutablePointer<PyStructSequence_Field>!
  var n_in_sequence: Int32
  init()
  init(name: UnsafeMutablePointer<CChar>!, doc: UnsafeMutablePointer<CChar>!, fields: UnsafeMutablePointer<PyStructSequence_Field>!, n_in_sequence: Int32)
}
var PyStructSequence_UnnamedField: UnsafeMutablePointer<CChar>!
func PyStructSequence_InitType(_ type: UnsafeMutablePointer<PyTypeObject>!, _ desc: UnsafeMutablePointer<PyStructSequence_Desc>!)
func PyStructSequence_New(_ type: UnsafeMutablePointer<PyTypeObject>!) -> UnsafeMutablePointer<PyObject>!
struct PyStructSequence {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var ob_size: Py_ssize_t
  var ob_item: (UnsafeMutablePointer<PyObject>?)
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, ob_size: Py_ssize_t, ob_item: (UnsafeMutablePointer<PyObject>?))
}
