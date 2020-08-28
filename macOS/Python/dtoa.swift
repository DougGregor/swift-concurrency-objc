
func _Py_dg_strtod(_ str: UnsafePointer<CChar>!, _ ptr: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!) -> Double
func _Py_dg_dtoa(_ d: Double, _ mode: Int32, _ ndigits: Int32, _ decpt: UnsafeMutablePointer<Int32>!, _ sign: UnsafeMutablePointer<Int32>!, _ rve: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!) -> UnsafeMutablePointer<CChar>!
func _Py_dg_freedtoa(_ s: UnsafeMutablePointer<CChar>!)
