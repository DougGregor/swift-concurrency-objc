
func _Py_bytes_isspace(_ cptr: UnsafePointer<CChar>!, _ len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>!
func _Py_bytes_isalpha(_ cptr: UnsafePointer<CChar>!, _ len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>!
func _Py_bytes_isalnum(_ cptr: UnsafePointer<CChar>!, _ len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>!
func _Py_bytes_isdigit(_ cptr: UnsafePointer<CChar>!, _ len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>!
func _Py_bytes_islower(_ cptr: UnsafePointer<CChar>!, _ len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>!
func _Py_bytes_isupper(_ cptr: UnsafePointer<CChar>!, _ len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>!
func _Py_bytes_istitle(_ cptr: UnsafePointer<CChar>!, _ len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>!
func _Py_bytes_lower(_ result: UnsafeMutablePointer<CChar>!, _ cptr: UnsafePointer<CChar>!, _ len: Py_ssize_t)
func _Py_bytes_upper(_ result: UnsafeMutablePointer<CChar>!, _ cptr: UnsafePointer<CChar>!, _ len: Py_ssize_t)
func _Py_bytes_title(_ result: UnsafeMutablePointer<CChar>!, _ s: UnsafeMutablePointer<CChar>!, _ len: Py_ssize_t)
func _Py_bytes_capitalize(_ result: UnsafeMutablePointer<CChar>!, _ s: UnsafeMutablePointer<CChar>!, _ len: Py_ssize_t)
func _Py_bytes_swapcase(_ result: UnsafeMutablePointer<CChar>!, _ s: UnsafeMutablePointer<CChar>!, _ len: Py_ssize_t)
