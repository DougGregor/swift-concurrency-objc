
typealias SecAsn1CoderRef = OpaquePointer
func SecAsn1CoderCreate(_ coder: UnsafeMutablePointer<SecAsn1CoderRef?>) -> OSStatus
func SecAsn1CoderRelease(_ coder: SecAsn1CoderRef) -> OSStatus
func SecAsn1Decode(_ coder: SecAsn1CoderRef, _ src: UnsafeRawPointer, _ len: Int, _ templates: UnsafePointer<SecAsn1Template>, _ dest: UnsafeMutableRawPointer) -> OSStatus
func SecAsn1DecodeData(_ coder: SecAsn1CoderRef, _ src: UnsafePointer<SecAsn1Item>, _ templ: UnsafePointer<SecAsn1Template>, _ dest: UnsafeMutableRawPointer) -> OSStatus
func SecAsn1EncodeItem(_ coder: SecAsn1CoderRef, _ src: UnsafeRawPointer, _ templates: UnsafePointer<SecAsn1Template>, _ dest: UnsafeMutablePointer<SecAsn1Item>) -> OSStatus
func SecAsn1Malloc(_ coder: SecAsn1CoderRef, _ len: Int) -> UnsafeMutableRawPointer
func SecAsn1AllocItem(_ coder: SecAsn1CoderRef, _ item: UnsafeMutablePointer<SecAsn1Item>, _ len: Int) -> OSStatus
func SecAsn1AllocCopy(_ coder: SecAsn1CoderRef, _ src: UnsafeRawPointer, _ len: Int, _ dest: UnsafeMutablePointer<SecAsn1Item>) -> OSStatus
func SecAsn1AllocCopyItem(_ coder: SecAsn1CoderRef, _ src: UnsafePointer<SecAsn1Item>, _ dest: UnsafeMutablePointer<SecAsn1Item>) -> OSStatus
func SecAsn1OidCompare(_ oid1: UnsafePointer<SecAsn1Oid>, _ oid2: UnsafePointer<SecAsn1Oid>) -> Bool
