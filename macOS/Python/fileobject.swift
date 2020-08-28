
struct PyFileObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var f_fp: UnsafeMutablePointer<FILE>!
  var f_name: UnsafeMutablePointer<PyObject>!
  var f_mode: UnsafeMutablePointer<PyObject>!
  var f_close: (@convention(c) (UnsafeMutablePointer<FILE>?) -> Int32)!
  var f_softspace: Int32
  var f_binary: Int32
  var f_buf: UnsafeMutablePointer<CChar>!
  var f_bufend: UnsafeMutablePointer<CChar>!
  var f_bufptr: UnsafeMutablePointer<CChar>!
  var f_setbuf: UnsafeMutablePointer<CChar>!
  var f_univ_newline: Int32
  var f_newlinetypes: Int32
  var f_skipnextlf: Int32
  var f_encoding: UnsafeMutablePointer<PyObject>!
  var f_errors: UnsafeMutablePointer<PyObject>!
  var weakreflist: UnsafeMutablePointer<PyObject>!
  var unlocked_count: Int32
  var readable: Int32
  var writable: Int32
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, f_fp: UnsafeMutablePointer<FILE>!, f_name: UnsafeMutablePointer<PyObject>!, f_mode: UnsafeMutablePointer<PyObject>!, f_close: (@convention(c) (UnsafeMutablePointer<FILE>?) -> Int32)!, f_softspace: Int32, f_binary: Int32, f_buf: UnsafeMutablePointer<CChar>!, f_bufend: UnsafeMutablePointer<CChar>!, f_bufptr: UnsafeMutablePointer<CChar>!, f_setbuf: UnsafeMutablePointer<CChar>!, f_univ_newline: Int32, f_newlinetypes: Int32, f_skipnextlf: Int32, f_encoding: UnsafeMutablePointer<PyObject>!, f_errors: UnsafeMutablePointer<PyObject>!, weakreflist: UnsafeMutablePointer<PyObject>!, unlocked_count: Int32, readable: Int32, writable: Int32)
}
var PyFile_Type: PyTypeObject
func PyFile_FromString(_: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyFile_SetBufSize(_: UnsafeMutablePointer<PyObject>!, _: Int32)
func PyFile_SetEncoding(_: UnsafeMutablePointer<PyObject>!, _: UnsafePointer<CChar>!) -> Int32
func PyFile_SetEncodingAndErrors(_: UnsafeMutablePointer<PyObject>!, _: UnsafePointer<CChar>!, _ errors: UnsafeMutablePointer<CChar>!) -> Int32
func PyFile_FromFile(_: UnsafeMutablePointer<FILE>!, _: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<CChar>!, _: (@convention(c) (UnsafeMutablePointer<FILE>?) -> Int32)!) -> UnsafeMutablePointer<PyObject>!
func PyFile_AsFile(_: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<FILE>!
func PyFile_IncUseCount(_: UnsafeMutablePointer<PyFileObject>!)
func PyFile_DecUseCount(_: UnsafeMutablePointer<PyFileObject>!)
func PyFile_Name(_: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyFile_GetLine(_: UnsafeMutablePointer<PyObject>!, _: Int32) -> UnsafeMutablePointer<PyObject>!
func PyFile_WriteObject(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<PyObject>!, _: Int32) -> Int32
func PyFile_SoftSpace(_: UnsafeMutablePointer<PyObject>!, _: Int32) -> Int32
func PyFile_WriteString(_: UnsafePointer<CChar>!, _: UnsafeMutablePointer<PyObject>!) -> Int32
func PyObject_AsFileDescriptor(_: UnsafeMutablePointer<PyObject>!) -> Int32
var Py_FileSystemDefaultEncoding: UnsafePointer<CChar>!
var PY_STDIOTEXTMODE: String { get }
func Py_UniversalNewlineFgets(_: UnsafeMutablePointer<CChar>!, _: Int32, _: UnsafeMutablePointer<FILE>!, _: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<CChar>!
func Py_UniversalNewlineFread(_: UnsafeMutablePointer<CChar>!, _: Int, _: UnsafeMutablePointer<FILE>!, _: UnsafeMutablePointer<PyObject>!) -> Int
func _PyFile_SanitizeMode(_ mode: UnsafeMutablePointer<CChar>!) -> Int32
