
typealias CGPDFDictionaryRef = OpaquePointer
@available(iOS 2.0, *)
func CGPDFDictionaryGetCount(_ dict: CGPDFDictionaryRef) -> Int
@available(iOS 2.0, *)
func CGPDFDictionaryGetObject(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFObjectRef?>?) -> Bool
@available(iOS 2.0, *)
func CGPDFDictionaryGetBoolean(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFBoolean>?) -> Bool
@available(iOS 2.0, *)
func CGPDFDictionaryGetInteger(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFInteger>?) -> Bool
@available(iOS 2.0, *)
func CGPDFDictionaryGetNumber(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFReal>?) -> Bool
@available(iOS 2.0, *)
func CGPDFDictionaryGetName(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<UnsafePointer<CChar>?>?) -> Bool
@available(iOS 2.0, *)
func CGPDFDictionaryGetString(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFStringRef?>?) -> Bool
@available(iOS 2.0, *)
func CGPDFDictionaryGetArray(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFArrayRef?>?) -> Bool
@available(iOS 2.0, *)
func CGPDFDictionaryGetDictionary(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFDictionaryRef?>?) -> Bool
@available(iOS 2.0, *)
func CGPDFDictionaryGetStream(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<CChar>, _ value: UnsafeMutablePointer<CGPDFStreamRef?>?) -> Bool
typealias CGPDFDictionaryApplierFunction = @convention(c) (UnsafePointer<CChar>, CGPDFObjectRef, UnsafeMutableRawPointer?) -> Void
@available(iOS 2.0, *)
func CGPDFDictionaryApplyFunction(_ dict: CGPDFDictionaryRef, _ function: CGPDFDictionaryApplierFunction, _ info: UnsafeMutableRawPointer?)
typealias CGPDFDictionaryApplierBlock = (UnsafePointer<CChar>, CGPDFObjectRef, UnsafeMutableRawPointer?) -> Bool
@available(iOS 12.0, *)
func CGPDFDictionaryApplyBlock(_ dict: CGPDFDictionaryRef, _ block: @escaping CGPDFDictionaryApplierBlock, _ info: UnsafeMutableRawPointer?)
