
typealias CGPDFOperatorTableRef = OpaquePointer
typealias CGPDFOperatorCallback = @convention(c) (CGPDFScannerRef, UnsafeMutableRawPointer?) -> Void
@available(macOS 10.4, *)
func CGPDFOperatorTableCreate() -> CGPDFOperatorTableRef?
@available(macOS 10.4, *)
func CGPDFOperatorTableRetain(_ table: CGPDFOperatorTableRef) -> CGPDFOperatorTableRef
@available(macOS 10.4, *)
func CGPDFOperatorTableRelease(_ table: CGPDFOperatorTableRef)
@available(macOS 10.4, *)
func CGPDFOperatorTableSetCallback(_ table: CGPDFOperatorTableRef, _ name: UnsafePointer<CChar>, _ callback: CGPDFOperatorCallback)
