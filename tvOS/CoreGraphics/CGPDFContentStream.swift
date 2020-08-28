
typealias CGPDFContentStreamRef = OpaquePointer
@available(tvOS 2.0, *)
func CGPDFContentStreamCreateWithPage(_ page: CGPDFPage) -> CGPDFContentStreamRef
@available(tvOS 2.0, *)
func CGPDFContentStreamCreateWithStream(_ stream: CGPDFStreamRef, _ streamResources: CGPDFDictionaryRef, _ parent: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(tvOS 2.0, *)
func CGPDFContentStreamRetain(_ cs: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(tvOS 2.0, *)
func CGPDFContentStreamRelease(_ cs: CGPDFContentStreamRef)
@available(tvOS 2.0, *)
func CGPDFContentStreamGetStreams(_ cs: CGPDFContentStreamRef) -> CFArray?
@available(tvOS 2.0, *)
func CGPDFContentStreamGetResource(_ cs: CGPDFContentStreamRef, _ category: UnsafePointer<CChar>, _ name: UnsafePointer<CChar>) -> CGPDFObjectRef?
