
@available(tvOS 2.0, *)
func SecCertificateGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func SecCertificateCreateWithData(_ allocator: CFAllocator?, _ data: CFData) -> SecCertificate?
@available(tvOS 2.0, *)
func SecCertificateCopyData(_ certificate: SecCertificate) -> CFData
@available(tvOS 2.0, *)
func SecCertificateCopySubjectSummary(_ certificate: SecCertificate) -> CFString?
@available(tvOS 10.3, *)
func SecCertificateCopyCommonName(_ certificate: SecCertificate, _ commonName: UnsafeMutablePointer<CFString?>) -> OSStatus
@available(tvOS 10.3, *)
func SecCertificateCopyEmailAddresses(_ certificate: SecCertificate, _ emailAddresses: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(tvOS 10.3, *)
func SecCertificateCopyNormalizedIssuerSequence(_ certificate: SecCertificate) -> CFData?
@available(tvOS 10.3, *)
func SecCertificateCopyNormalizedSubjectSequence(_ certificate: SecCertificate) -> CFData?
@available(tvOS 12.0, *)
func SecCertificateCopyKey(_ certificate: SecCertificate) -> SecKey?
@available(tvOS, introduced: 10.3, deprecated: 12.0, renamed: "SecCertificateCopyKey(_:)")
func SecCertificateCopyPublicKey(_ certificate: SecCertificate) -> SecKey?
@available(tvOS 11.0, *)
func SecCertificateCopySerialNumberData(_ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(tvOS, introduced: 10.3, deprecated: 11.0, renamed: "SecCertificateCopySerialNumberData(_:_:)")
func SecCertificateCopySerialNumber(_ certificate: SecCertificate) -> CFData?
