
var Py_MARSHAL_VERSION: Int32 { get }
func PyMarshal_WriteLongToFile(_: Int, _: UnsafeMutablePointer<FILE>!, _: Int32)
func PyMarshal_WriteObjectToFile(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<FILE>!, _: Int32)
func PyMarshal_WriteObjectToString(_: UnsafeMutablePointer<PyObject>!, _: Int32) -> UnsafeMutablePointer<PyObject>!
func PyMarshal_ReadLongFromFile(_: UnsafeMutablePointer<FILE>!) -> Int
func PyMarshal_ReadShortFromFile(_: UnsafeMutablePointer<FILE>!) -> Int32
func PyMarshal_ReadObjectFromFile(_: UnsafeMutablePointer<FILE>!) -> UnsafeMutablePointer<PyObject>!
func PyMarshal_ReadLastObjectFromFile(_: UnsafeMutablePointer<FILE>!) -> UnsafeMutablePointer<PyObject>!
func PyMarshal_ReadObjectFromString(_: UnsafeMutablePointer<CChar>!, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>!
