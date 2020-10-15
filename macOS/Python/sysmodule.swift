
func PySys_GetObject(_: UnsafeMutablePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PySys_SetObject(_: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<PyObject>!) -> Int32
func PySys_GetFile(_: UnsafeMutablePointer<CChar>!, _: UnsafeMutablePointer<FILE>!) -> UnsafeMutablePointer<FILE>!
func PySys_SetArgv(_: Int32, _: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!)
func PySys_SetArgvEx(_: Int32, _: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _: Int32)
func PySys_SetPath(_: UnsafeMutablePointer<CChar>!)
func PySys_ResetWarnOptions()
func PySys_AddWarnOption(_: UnsafeMutablePointer<CChar>!)
func PySys_HasWarnOptions() -> Int32
func _PySys_GetSizeOf(_: UnsafeMutablePointer<PyObject>!) -> Int
