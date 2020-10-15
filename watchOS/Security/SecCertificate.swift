
@available(watchOS 2.0, *)
func SecCertificateGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func SecCertificateCreateWithData(_ allocator: CFAllocator?, _ data: CFData) -> SecCertificate?
@available(watchOS 2.0, *)
func SecCertificateCopyData(_ certificate: SecCertificate) -> CFData
@available(watchOS 2.0, *)
func SecCertificateCopySubjectSummary(_ certificate: SecCertificate) -> CFString?
@available(watchOS 3.3, *)
func SecCertificateCopyCommonName(_ certificate: SecCertificate, _ commonName: UnsafeMutablePointer<CFString?>) -> OSStatus
@available(watchOS 3.3, *)
func SecCertificateCopyEmailAddresses(_ certificate: SecCertificate, _ emailAddresses: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(watchOS 3.3, *)
func SecCertificateCopyNormalizedIssuerSequence(_ certificate: SecCertificate) -> CFData?
@available(watchOS 3.3, *)
func SecCertificateCopyNormalizedSubjectSequence(_ certificate: SecCertificate) -> CFData?
@available(watchOS 5.0, *)
func SecCertificateCopyKey(_ certificate: SecCertificate) -> SecKey?
@available(watchOS, introduced: 3.3, deprecated: 5.0, renamed: "SecCertificateCopyKey(_:)")
func SecCertificateCopyPublicKey(_ certificate: SecCertificate) -> SecKey?
@available(watchOS 4.0, *)
func SecCertificateCopySerialNumberData(_ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(watchOS, introduced: 3.3, deprecated: 4.0, renamed: "SecCertificateCopySerialNumberData(_:_:)")
func SecCertificateCopySerialNumber(_ certificate: SecCertificate) -> CFData?
