
func PyMac_StrError(_: Int32) -> UnsafeMutablePointer<CChar>!
var PyMac_OSErrException: UnsafeMutablePointer<PyObject>!
func PyMac_GetOSErrException() -> UnsafeMutablePointer<PyObject>!
func PyErr_Mac(_: UnsafeMutablePointer<PyObject>!, _: Int32) -> UnsafeMutablePointer<PyObject>!
func PyMac_Error(_: OSErr) -> UnsafeMutablePointer<PyObject>!
func PyMac_GetOSType(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<OSType>!) -> Int32
func PyMac_BuildOSType(_: OSType) -> UnsafeMutablePointer<PyObject>!
func PyMac_BuildNumVersion(_: NumVersion) -> UnsafeMutablePointer<PyObject>!
func PyMac_GetStr255(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<UInt8>!) -> Int32
func PyMac_BuildStr255(_: UnsafeMutablePointer<UInt8>!) -> UnsafeMutablePointer<PyObject>!
func PyMac_BuildOptStr255(_: UnsafeMutablePointer<UInt8>!) -> UnsafeMutablePointer<PyObject>!
func PyMac_GetRect(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Rect>!) -> Int32
func PyMac_BuildRect(_: UnsafeMutablePointer<Rect>!) -> UnsafeMutablePointer<PyObject>!
func PyMac_GetPoint(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Point>!) -> Int32
func PyMac_BuildPoint(_: Point) -> UnsafeMutablePointer<PyObject>!
func PyMac_GetEventRecord(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<EventRecord>!) -> Int32
func PyMac_BuildEventRecord(_: UnsafeMutablePointer<EventRecord>!) -> UnsafeMutablePointer<PyObject>!
func PyMac_GetFixed(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Fixed>!) -> Int32
func PyMac_BuildFixed(_: Fixed) -> UnsafeMutablePointer<PyObject>!
func PyMac_Getwide(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<wide>!) -> Int32
func PyMac_Buildwide(_: UnsafeMutablePointer<wide>!) -> UnsafeMutablePointer<PyObject>!
func PyMac_GetFSRef(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<FSRef>!) -> Int32
func PyMac_BuildFSRef(_: UnsafeMutablePointer<FSRef>!) -> UnsafeMutablePointer<PyObject>!
func AEDesc_New(_: UnsafeMutablePointer<AppleEvent>!) -> UnsafeMutablePointer<PyObject>!
func AEDesc_NewBorrowed(_: UnsafeMutablePointer<AppleEvent>!) -> UnsafeMutablePointer<PyObject>!
func AEDesc_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<AppleEvent>!) -> Int32
func CmpObj_New(_: Component!) -> UnsafeMutablePointer<PyObject>!
func CmpObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Component?>!) -> Int32
func CmpInstObj_New(_: ComponentInstance!) -> UnsafeMutablePointer<PyObject>!
func CmpInstObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<ComponentInstance?>!) -> Int32
func ResObj_New(_: Handle!) -> UnsafeMutablePointer<PyObject>!
func ResObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Handle?>!) -> Int32
func OptResObj_New(_: Handle!) -> UnsafeMutablePointer<PyObject>!
func OptResObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Handle?>!) -> Int32
func CFObj_New(_: CFTypeRef!) -> UnsafeMutablePointer<PyObject>!
func CFObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Unmanaged<CFTypeRef>?>!) -> Int32
func CFTypeRefObj_New(_: CFTypeRef!) -> UnsafeMutablePointer<PyObject>!
func CFTypeRefObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Unmanaged<CFTypeRef>?>!) -> Int32
func CFStringRefObj_New(_: CFString!) -> UnsafeMutablePointer<PyObject>!
func CFStringRefObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Unmanaged<CFString>?>!) -> Int32
func CFMutableStringRefObj_New(_: CFMutableString!) -> UnsafeMutablePointer<PyObject>!
func CFMutableStringRefObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Unmanaged<CFMutableString>?>!) -> Int32
func CFArrayRefObj_New(_: CFArray!) -> UnsafeMutablePointer<PyObject>!
func CFArrayRefObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Unmanaged<CFArray>?>!) -> Int32
func CFMutableArrayRefObj_New(_: CFMutableArray!) -> UnsafeMutablePointer<PyObject>!
func CFMutableArrayRefObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Unmanaged<CFMutableArray>?>!) -> Int32
func CFDictionaryRefObj_New(_: CFDictionary!) -> UnsafeMutablePointer<PyObject>!
func CFDictionaryRefObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Unmanaged<CFDictionary>?>!) -> Int32
func CFMutableDictionaryRefObj_New(_: CFMutableDictionary!) -> UnsafeMutablePointer<PyObject>!
func CFMutableDictionaryRefObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Unmanaged<CFMutableDictionary>?>!) -> Int32
func CFURLRefObj_New(_: CFURL!) -> UnsafeMutablePointer<PyObject>!
func CFURLRefObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Unmanaged<CFURL>?>!) -> Int32
func OptionalCFURLRefObj_Convert(_: UnsafeMutablePointer<PyObject>!, _: UnsafeMutablePointer<Unmanaged<CFURL>?>!) -> Int32
