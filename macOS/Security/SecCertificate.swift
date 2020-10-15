
@available(macOS 10.3, *)
func SecCertificateGetTypeID() -> CFTypeID
@available(macOS 10.6, *)
func SecCertificateCreateWithData(_ allocator: CFAllocator?, _ data: CFData) -> SecCertificate?
@available(macOS 10.6, *)
func SecCertificateCopyData(_ certificate: SecCertificate) -> CFData
@available(macOS 10.6, *)
func SecCertificateCopySubjectSummary(_ certificate: SecCertificate) -> CFString?
@available(macOS 10.5, *)
func SecCertificateCopyCommonName(_ certificate: SecCertificate, _ commonName: UnsafeMutablePointer<CFString?>) -> OSStatus
@available(macOS 10.5, *)
func SecCertificateCopyEmailAddresses(_ certificate: SecCertificate, _ emailAddresses: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(macOS 10.12.4, *)
func SecCertificateCopyNormalizedIssuerSequence(_ certificate: SecCertificate) -> CFData?
@available(macOS 10.12.4, *)
func SecCertificateCopyNormalizedSubjectSequence(_ certificate: SecCertificate) -> CFData?
@available(macOS 10.14, *)
func SecCertificateCopyKey(_ certificate: SecCertificate) -> SecKey?
@available(macOS, introduced: 10.3, deprecated: 10.14, renamed: "SecCertificateCopyKey(_:)")
func SecCertificateCopyPublicKey(_ certificate: SecCertificate, _ key: UnsafeMutablePointer<SecKey?>) -> OSStatus
@available(macOS 10.13, *)
func SecCertificateCopySerialNumberData(_ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(macOS, introduced: 10.7, deprecated: 10.13, renamed: "SecCertificateCopySerialNumberData(_:_:)")
func SecCertificateCopySerialNumber(_ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
var kSecSubjectItemAttr: Int { get }
var kSecIssuerItemAttr: Int { get }
var kSecSerialNumberItemAttr: Int { get }
var kSecPublicKeyHashItemAttr: Int { get }
var kSecSubjectKeyIdentifierItemAttr: Int { get }
var kSecCertTypeItemAttr: Int { get }
var kSecCertEncodingItemAttr: Int { get }
@available(macOS 10.3, *)
func SecCertificateAddToKeychain(_ certificate: SecCertificate, _ keychain: SecKeychain?) -> OSStatus
@available(macOS 10.7, *)
func SecCertificateCopyPreferred(_ name: CFString, _ keyUsage: CFArray?) -> SecCertificate?
@available(macOS 10.7, *)
func SecCertificateSetPreferred(_ certificate: SecCertificate?, _ name: CFString, _ keyUsage: CFArray?) -> OSStatus
struct SecKeyUsage : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var digitalSignature: SecKeyUsage { get }
  static var nonRepudiation: SecKeyUsage { get }
  static var contentCommitment: SecKeyUsage { get }
  static var keyEncipherment: SecKeyUsage { get }
  static var dataEncipherment: SecKeyUsage { get }
  static var keyAgreement: SecKeyUsage { get }
  static var keyCertSign: SecKeyUsage { get }
  static var crlSign: SecKeyUsage { get }
  static var encipherOnly: SecKeyUsage { get }
  static var decipherOnly: SecKeyUsage { get }
  static var critical: SecKeyUsage { get }
  static var all: SecKeyUsage { get }
}
@available(macOS 10.7, *)
let kSecPropertyKeyType: CFString
@available(macOS 10.7, *)
let kSecPropertyKeyLabel: CFString
@available(macOS 10.7, *)
let kSecPropertyKeyLocalizedLabel: CFString
@available(macOS 10.7, *)
let kSecPropertyKeyValue: CFString
@available(macOS 10.7, *)
let kSecPropertyTypeWarning: CFString
@available(macOS 10.7, *)
let kSecPropertyTypeSuccess: CFString
@available(macOS 10.7, *)
let kSecPropertyTypeSection: CFString
@available(macOS 10.7, *)
let kSecPropertyTypeData: CFString
@available(macOS 10.7, *)
let kSecPropertyTypeString: CFString
@available(macOS 10.7, *)
let kSecPropertyTypeURL: CFString
@available(macOS 10.7, *)
let kSecPropertyTypeDate: CFString
@available(macOS 10.15, *)
let kSecPropertyTypeArray: CFString
@available(macOS 10.15, *)
let kSecPropertyTypeNumber: CFString
@available(macOS 10.7, *)
func SecCertificateCopyValues(_ certificate: SecCertificate, _ keys: CFArray?, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFDictionary?
@available(macOS 10.7, *)
func SecCertificateCopyLongDescription(_ alloc: CFAllocator?, _ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFString?
@available(macOS 10.7, *)
func SecCertificateCopyShortDescription(_ alloc: CFAllocator?, _ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFString?
@available(macOS, introduced: 10.7, deprecated: 10.12.4, message: "SecCertificateCopyNormalizedIssuerContent is deprecated. Use SecCertificateCopyNormalizedIssuerSequence instead.")
func SecCertificateCopyNormalizedIssuerContent(_ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(macOS, introduced: 10.7, deprecated: 10.12.4, message: "SecCertificateCopyNormalizedSubjectContent is deprecated. Use SecCertificateCopyNormalizedSubjectSequence instead.")
func SecCertificateCopyNormalizedSubjectContent(_ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
