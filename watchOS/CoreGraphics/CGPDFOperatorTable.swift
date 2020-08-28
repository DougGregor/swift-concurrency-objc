
typealias CGPDFOperatorTableRef = OpaquePointer
typealias CGPDFOperatorCallback = @convention(c) (CGPDFScannerRef, UnsafeMutableRawPointer?) -> Void
@available(watchOS 2.0, *)
func CGPDFOperatorTableCreate() -> CGPDFOperatorTableRef?
@available(watchOS 2.0, *)
func CGPDFOperatorTableRetain(_ table: CGPDFOperatorTableRef) -> CGPDFOperatorTableRef
@available(watchOS 2.0, *)
func CGPDFOperatorTableRelease(_ table: CGPDFOperatorTableRef)
@available(watchOS 2.0, *)
func CGPDFOperatorTableSetCallback(_ table: CGPDFOperatorTableRef, _ name: UnsafePointer<CChar>, _ callback: CGPDFOperatorCallback)
