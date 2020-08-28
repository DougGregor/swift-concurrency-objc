
typealias CGPDFOperatorTableRef = OpaquePointer
typealias CGPDFOperatorCallback = @convention(c) (CGPDFScannerRef, UnsafeMutableRawPointer?) -> Void
@available(tvOS 2.0, *)
func CGPDFOperatorTableCreate() -> CGPDFOperatorTableRef?
@available(tvOS 2.0, *)
func CGPDFOperatorTableRetain(_ table: CGPDFOperatorTableRef) -> CGPDFOperatorTableRef
@available(tvOS 2.0, *)
func CGPDFOperatorTableRelease(_ table: CGPDFOperatorTableRef)
@available(tvOS 2.0, *)
func CGPDFOperatorTableSetCallback(_ table: CGPDFOperatorTableRef, _ name: UnsafePointer<CChar>, _ callback: CGPDFOperatorCallback)
