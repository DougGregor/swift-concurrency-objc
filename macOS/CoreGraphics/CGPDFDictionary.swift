
typealias CGPDFDictionaryRef = OpaquePointer
@available(macOS 10.3, *)
func CGPDFDictionaryGetCount(_ dict: CGPDFDictionaryRef) -> Int
@available(macOS 10.3, *)
func CGPDFDictionaryGetObject(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFObjectRef?>?) -> Bool
@available(macOS 10.3, *)
func CGPDFDictionaryGetBoolean(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFBoolean>?) -> Bool
@available(macOS 10.3, *)
func CGPDFDictionaryGetInteger(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFInteger>?) -> Bool
@available(macOS 10.3, *)
func CGPDFDictionaryGetNumber(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFReal>?) -> Bool
@available(macOS 10.3, *)
func CGPDFDictionaryGetName(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<UnsafePointer<CChar>?>?) -> Bool
@available(macOS 10.3, *)
func CGPDFDictionaryGetString(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFStringRef?>?) -> Bool
@available(macOS 10.3, *)
func CGPDFDictionaryGetArray(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFArrayRef?>?) -> Bool
@available(macOS 10.3, *)
func CGPDFDictionaryGetDictionary(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFDictionaryRef?>?) -> Bool
@available(macOS 10.3, *)
func CGPDFDictionaryGetStream(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFStreamRef?>?) -> Bool
typealias CGPDFDictionaryApplierFunction = @convention(c) (UnsafePointer<CChar>, CGPDFObjectRef, UnsafeMutableRawPointer?) -> Void
@available(macOS 10.3, *)
func CGPDFDictionaryApplyFunction(_ dict: CGPDFDictionaryRef, _ function: CGPDFDictionaryApplierFunction, _ info: UnsafeMutableRawPointer?)
typealias CGPDFDictionaryApplierBlock = (UnsafePointer<CChar>, CGPDFObjectRef, UnsafeMutableRawPointer?) -> Bool
@available(macOS 10.14, *)
func CGPDFDictionaryApplyBlock(_ dict: CGPDFDictionaryRef, _ block: @escaping CGPDFDictionaryApplierBlock, _ info: UnsafeMutableRawPointer?)
