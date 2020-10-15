
var PyModule_Type: PyTypeObject
func PyModule_New(_: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyModule_GetDict(_: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyModule_GetName(_: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<CChar>!
func PyModule_GetFilename(_: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<CChar>!
func _PyModule_Clear(_: UnsafeMutablePointer<PyObject>!)
