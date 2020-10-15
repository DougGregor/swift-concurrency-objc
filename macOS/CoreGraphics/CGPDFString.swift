
typealias CGPDFStringRef = OpaquePointer
@available(macOS 10.3, *)
func CGPDFStringGetLength(_ string: CGPDFStringRef) -> Int
@available(macOS 10.3, *)
func CGPDFStringGetBytePtr(_ string: CGPDFStringRef) -> UnsafePointer<UInt8>?
@available(macOS 10.3, *)
func CGPDFStringCopyTextString(_ string: CGPDFStringRef) -> CFString?
@available(macOS 10.4, *)
func CGPDFStringCopyDate(_ string: CGPDFStringRef) -> CFDate?
