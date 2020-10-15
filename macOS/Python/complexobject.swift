
struct Py_complex {
  var real: Double
  var imag: Double
  init()
  init(real: Double, imag: Double)
}
func _Py_c_sum(_: Py_complex, _: Py_complex) -> Py_complex
func _Py_c_diff(_: Py_complex, _: Py_complex) -> Py_complex
func _Py_c_neg(_: Py_complex) -> Py_complex
func _Py_c_prod(_: Py_complex, _: Py_complex) -> Py_complex
func _Py_c_quot(_: Py_complex, _: Py_complex) -> Py_complex
func _Py_c_pow(_: Py_complex, _: Py_complex) -> Py_complex
func _Py_c_abs(_: Py_complex) -> Double
struct PyComplexObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var cval: Py_complex
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, cval: Py_complex)
}
var PyComplex_Type: PyTypeObject
func PyComplex_FromCComplex(_: Py_complex) -> UnsafeMutablePointer<PyObject>!
func PyComplex_FromDoubles(_ real: Double, _ imag: Double) -> UnsafeMutablePointer<PyObject>!
func PyComplex_RealAsDouble(_ op: UnsafeMutablePointer<PyObject>!) -> Double
func PyComplex_ImagAsDouble(_ op: UnsafeMutablePointer<PyObject>!) -> Double
func PyComplex_AsCComplex(_ op: UnsafeMutablePointer<PyObject>!) -> Py_complex
func _PyComplex_FormatAdvanced(_ obj: UnsafeMutablePointer<PyObject>!, _ format_spec: UnsafeMutablePointer<CChar>!, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>!
