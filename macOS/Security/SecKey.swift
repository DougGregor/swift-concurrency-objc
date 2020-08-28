
var kSecKeyKeyClass: Int32 { get }
var kSecKeyPrintName: Int32 { get }
var kSecKeyAlias: Int32 { get }
var kSecKeyPermanent: Int32 { get }
var kSecKeyPrivate: Int32 { get }
var kSecKeyModifiable: Int32 { get }
var kSecKeyLabel: Int32 { get }
var kSecKeyApplicationTag: Int32 { get }
var kSecKeyKeyCreator: Int32 { get }
var kSecKeyKeyType: Int32 { get }
var kSecKeyKeySizeInBits: Int32 { get }
var kSecKeyEffectiveKeySize: Int32 { get }
var kSecKeyStartDate: Int32 { get }
var kSecKeyEndDate: Int32 { get }
var kSecKeySensitive: Int32 { get }
var kSecKeyAlwaysSensitive: Int32 { get }
var kSecKeyExtractable: Int32 { get }
var kSecKeyNeverExtractable: Int32 { get }
var kSecKeyEncrypt: Int32 { get }
var kSecKeyDecrypt: Int32 { get }
var kSecKeyDerive: Int32 { get }
var kSecKeySign: Int32 { get }
var kSecKeyVerify: Int32 { get }
var kSecKeySignRecover: Int32 { get }
var kSecKeyVerifyRecover: Int32 { get }
var kSecKeyWrap: Int32 { get }
var kSecKeyUnwrap: Int32 { get }
enum SecCredentialType : uint32 {
  init?(rawValue: uint32)
  var rawValue: uint32 { get }
  case `default`
  case withUI
  case noUI
}
struct SecPadding : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var PKCS1: SecPadding { get }
  static var OAEP: SecPadding { get }
  static var sigRaw: SecPadding { get }
  static var PKCS1MD2: SecPadding { get }
  static var PKCS1MD5: SecPadding { get }
  static var PKCS1SHA1: SecPadding { get }
  static var PKCS1SHA224: SecPadding { get }
  static var PKCS1SHA256: SecPadding { get }
  static var PKCS1SHA384: SecPadding { get }
  static var PKCS1SHA512: SecPadding { get }
}
enum SecKeySizes : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case secDefaultKeySize
  case sec3DES192
  case secAES128
  static var secAES192: SecKeySizes { get }
  case secAES256
  static var secp192r1: SecKeySizes { get }
  static var secp256r1: SecKeySizes { get }
  case secp384r1
  case secp521r1
  case secRSAMin
  case secRSAMax
}
@available(macOS 10.8, *)
let kSecPrivateKeyAttrs: CFString
@available(macOS 10.8, *)
let kSecPublicKeyAttrs: CFString
@available(macOS 10.3, *)
func SecKeyGetTypeID() -> CFTypeID
@available(macOS 10.7, *)
func SecKeyGenerateSymmetric(_ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecKey?
@available(macOS 10.7, *)
func SecKeyCreateFromData(_ parameters: CFDictionary, _ keyData: CFData, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecKey?
typealias SecKeyGeneratePairBlock = (SecKey, SecKey, CFError) -> Void
@available(macOS 10.7, *)
func SecKeyGeneratePairAsync(_ parameters: CFDictionary, _ deliveryQueue: DispatchQueue, _ result: @escaping SecKeyGeneratePairBlock)
@available(macOS 10.7, *)
func SecKeyDeriveFromPassword(_ password: CFString, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecKey?
@available(macOS 10.7, *)
func SecKeyWrapSymmetric(_ keyToWrap: SecKey, _ wrappingKey: SecKey, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(macOS 10.7, *)
func SecKeyUnwrapSymmetric(_ keyToUnwrap: UnsafeMutablePointer<Unmanaged<CFData>?>, _ unwrappingKey: SecKey, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecKey?
@available(macOS 10.7, *)
func SecKeyGeneratePair(_ parameters: CFDictionary, _ publicKey: UnsafeMutablePointer<SecKey?>?, _ privateKey: UnsafeMutablePointer<SecKey?>?) -> OSStatus
@available(macOS 10.12, *)
func SecKeyCreateRandomKey(_ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecKey?
@available(macOS 10.12, *)
func SecKeyCreateWithData(_ keyData: CFData, _ attributes: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecKey?
@available(macOS 10.6, *)
func SecKeyGetBlockSize(_ key: SecKey) -> Int
@available(macOS 10.12, *)
func SecKeyCopyExternalRepresentation(_ key: SecKey, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(macOS 10.12, *)
func SecKeyCopyAttributes(_ key: SecKey) -> CFDictionary?
@available(macOS 10.12, *)
func SecKeyCopyPublicKey(_ key: SecKey) -> SecKey?
@available(macOS 10.12, *)
struct SecKeyAlgorithm : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: CFString)
  let rawValue: CFString
}
extension SecKeyAlgorithm {
  @available(macOS 10.12, *)
  static let rsaSignatureRaw: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaSignatureDigestPKCS1v15Raw: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaSignatureDigestPKCS1v15SHA1: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaSignatureDigestPKCS1v15SHA224: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaSignatureDigestPKCS1v15SHA256: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaSignatureDigestPKCS1v15SHA384: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaSignatureDigestPKCS1v15SHA512: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaSignatureMessagePKCS1v15SHA1: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaSignatureMessagePKCS1v15SHA224: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaSignatureMessagePKCS1v15SHA256: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaSignatureMessagePKCS1v15SHA384: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaSignatureMessagePKCS1v15SHA512: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let rsaSignatureDigestPSSSHA1: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let rsaSignatureDigestPSSSHA224: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let rsaSignatureDigestPSSSHA256: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let rsaSignatureDigestPSSSHA384: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let rsaSignatureDigestPSSSHA512: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let rsaSignatureMessagePSSSHA1: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let rsaSignatureMessagePSSSHA224: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let rsaSignatureMessagePSSSHA256: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let rsaSignatureMessagePSSSHA384: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let rsaSignatureMessagePSSSHA512: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdsaSignatureRFC4754: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdsaSignatureDigestX962: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdsaSignatureDigestX962SHA1: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdsaSignatureDigestX962SHA224: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdsaSignatureDigestX962SHA256: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdsaSignatureDigestX962SHA384: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdsaSignatureDigestX962SHA512: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdsaSignatureMessageX962SHA1: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdsaSignatureMessageX962SHA224: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdsaSignatureMessageX962SHA256: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdsaSignatureMessageX962SHA384: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdsaSignatureMessageX962SHA512: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaEncryptionRaw: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaEncryptionPKCS1: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaEncryptionOAEPSHA1: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaEncryptionOAEPSHA224: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaEncryptionOAEPSHA256: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaEncryptionOAEPSHA384: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaEncryptionOAEPSHA512: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaEncryptionOAEPSHA1AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaEncryptionOAEPSHA224AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaEncryptionOAEPSHA256AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaEncryptionOAEPSHA384AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let rsaEncryptionOAEPSHA512AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let eciesEncryptionStandardX963SHA1AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let eciesEncryptionStandardX963SHA224AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let eciesEncryptionStandardX963SHA256AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let eciesEncryptionStandardX963SHA384AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let eciesEncryptionStandardX963SHA512AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let eciesEncryptionCofactorX963SHA1AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let eciesEncryptionCofactorX963SHA224AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let eciesEncryptionCofactorX963SHA256AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let eciesEncryptionCofactorX963SHA384AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let eciesEncryptionCofactorX963SHA512AESGCM: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let eciesEncryptionStandardVariableIVX963SHA224AESGCM: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let eciesEncryptionStandardVariableIVX963SHA256AESGCM: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let eciesEncryptionStandardVariableIVX963SHA384AESGCM: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let eciesEncryptionStandardVariableIVX963SHA512AESGCM: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let eciesEncryptionCofactorVariableIVX963SHA224AESGCM: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let eciesEncryptionCofactorVariableIVX963SHA256AESGCM: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let eciesEncryptionCofactorVariableIVX963SHA384AESGCM: SecKeyAlgorithm
  @available(macOS 10.13, *)
  static let eciesEncryptionCofactorVariableIVX963SHA512AESGCM: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdhKeyExchangeStandard: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdhKeyExchangeStandardX963SHA1: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdhKeyExchangeStandardX963SHA224: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdhKeyExchangeStandardX963SHA256: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdhKeyExchangeStandardX963SHA384: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdhKeyExchangeStandardX963SHA512: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdhKeyExchangeCofactor: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdhKeyExchangeCofactorX963SHA1: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdhKeyExchangeCofactorX963SHA224: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdhKeyExchangeCofactorX963SHA256: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdhKeyExchangeCofactorX963SHA384: SecKeyAlgorithm
  @available(macOS 10.12, *)
  static let ecdhKeyExchangeCofactorX963SHA512: SecKeyAlgorithm
}
@available(macOS 10.12, *)
func SecKeyCreateSignature(_ key: SecKey, _ algorithm: SecKeyAlgorithm, _ dataToSign: CFData, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(macOS 10.12, *)
func SecKeyVerifySignature(_ key: SecKey, _ algorithm: SecKeyAlgorithm, _ signedData: CFData, _ signature: CFData, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(macOS 10.12, *)
func SecKeyCreateEncryptedData(_ key: SecKey, _ algorithm: SecKeyAlgorithm, _ plaintext: CFData, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(macOS 10.12, *)
func SecKeyCreateDecryptedData(_ key: SecKey, _ algorithm: SecKeyAlgorithm, _ ciphertext: CFData, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(macOS 10.12, *)
struct SecKeyKeyExchangeParameter : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: CFString)
  let rawValue: CFString
}
extension SecKeyKeyExchangeParameter {
  @available(macOS 10.12, *)
  static let requestedSize: SecKeyKeyExchangeParameter
  @available(macOS 10.12, *)
  static let sharedInfo: SecKeyKeyExchangeParameter
}
@available(macOS 10.12, *)
func SecKeyCopyKeyExchangeResult(_ privateKey: SecKey, _ algorithm: SecKeyAlgorithm, _ publicKey: SecKey, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(macOS 10.12, *)
enum SecKeyOperationType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case sign
  case verify
  case encrypt
  case decrypt
  case keyExchange
}
@available(macOS 10.12, *)
func SecKeyIsAlgorithmSupported(_ key: SecKey, _ operation: SecKeyOperationType, _ algorithm: SecKeyAlgorithm) -> Bool
