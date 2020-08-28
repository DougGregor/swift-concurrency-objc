
typealias CGPDFArrayRef = OpaquePointer
@available(macOS 10.3, *)
func CGPDFArrayGetCount(_ array: CGPDFArrayRef) -> Int
@available(macOS 10.3, *)
func CGPDFArrayGetObject(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFObjectRef?>?) -> Bool
@available(macOS 10.3, *)
func CGPDFArrayGetNull(_ array: CGPDFArrayRef, _ index: Int) -> Bool
@available(macOS 10.3, *)
func CGPDFArrayGetBoolean(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFBoolean>?) -> Bool
@available(macOS 10.3, *)
func CGPDFArrayGetInteger(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFInteger>?) -> Bool
@available(macOS 10.3, *)
func CGPDFArrayGetNumber(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFReal>?) -> Bool
@available(macOS 10.3, *)
func CGPDFArrayGetName(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<UnsafePointer<CChar>?>?) -> Bool
@available(macOS 10.3, *)
func CGPDFArrayGetString(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStringRef?>?) -> Bool
@available(macOS 10.3, *)
func CGPDFArrayGetArray(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFArrayRef?>?) -> Bool
@available(macOS 10.3, *)
func CGPDFArrayGetDictionary(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFDictionaryRef?>?) -> Bool
@available(macOS 10.3, *)
func CGPDFArrayGetStream(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStreamRef?>?) -> Bool
typealias CGPDFArrayApplierBlock = (Int, CGPDFObjectRef, UnsafeMutableRawPointer?) -> Bool
@available(macOS 10.14, *)
func CGPDFArrayApplyBlock(_ array: CGPDFArrayRef, _ block: @escaping CGPDFArrayApplierBlock, _ info: UnsafeMutableRawPointer?)
