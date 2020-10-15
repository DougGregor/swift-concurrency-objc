
typealias CGPDFContentStreamRef = OpaquePointer
@available(macOS 10.4, *)
func CGPDFContentStreamCreateWithPage(_ page: CGPDFPage) -> CGPDFContentStreamRef
@available(macOS 10.4, *)
func CGPDFContentStreamCreateWithStream(_ stream: CGPDFStreamRef, _ streamResources: CGPDFDictionaryRef, _ parent: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(macOS 10.4, *)
func CGPDFContentStreamRetain(_ cs: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(macOS 10.4, *)
func CGPDFContentStreamRelease(_ cs: CGPDFContentStreamRef)
@available(macOS 10.4, *)
func CGPDFContentStreamGetStreams(_ cs: CGPDFContentStreamRef) -> CFArray?
@available(macOS 10.4, *)
func CGPDFContentStreamGetResource(_ cs: CGPDFContentStreamRef, _ category: UnsafePointer<CChar>, _ name: UnsafePointer<CChar>) -> CGPDFObjectRef?
