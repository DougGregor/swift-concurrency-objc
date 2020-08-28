
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
@available(iOS 2.0, *)
let kSecPrivateKeyAttrs: CFString
@available(iOS 2.0, *)
let kSecPublicKeyAttrs: CFString
@available(iOS 2.0, *)
func SecKeyGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func SecKeyGeneratePair(_ parameters: CFDictionary, _ publicKey: UnsafeMutablePointer<SecKey?>?, _ privateKey: UnsafeMutablePointer<SecKey?>?) -> OSStatus
@available(iOS 2.0, *)
func SecKeyRawSign(_ key: SecKey, _ padding: SecPadding, _ dataToSign: UnsafePointer<UInt8>, _ dataToSignLen: Int, _ sig: UnsafeMutablePointer<UInt8>, _ sigLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(iOS 2.0, *)
func SecKeyRawVerify(_ key: SecKey, _ padding: SecPadding, _ signedData: UnsafePointer<UInt8>, _ signedDataLen: Int, _ sig: UnsafePointer<UInt8>, _ sigLen: Int) -> OSStatus
@available(iOS 2.0, *)
func SecKeyEncrypt(_ key: SecKey, _ padding: SecPadding, _ plainText: UnsafePointer<UInt8>, _ plainTextLen: Int, _ cipherText: UnsafeMutablePointer<UInt8>, _ cipherTextLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(iOS 2.0, *)
func SecKeyDecrypt(_ key: SecKey, _ padding: SecPadding, _ cipherText: UnsafePointer<UInt8>, _ cipherTextLen: Int, _ plainText: UnsafeMutablePointer<UInt8>, _ plainTextLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(iOS 10.0, *)
func SecKeyCreateRandomKey(_ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecKey?
@available(iOS 10.0, *)
func SecKeyCreateWithData(_ keyData: CFData, _ attributes: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecKey?
@available(iOS 2.0, *)
func SecKeyGetBlockSize(_ key: SecKey) -> Int
@available(iOS 10.0, *)
func SecKeyCopyExternalRepresentation(_ key: SecKey, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(iOS 10.0, *)
func SecKeyCopyAttributes(_ key: SecKey) -> CFDictionary?
@available(iOS 10.0, *)
func SecKeyCopyPublicKey(_ key: SecKey) -> SecKey?
@available(iOS 10.0, *)
struct SecKeyAlgorithm : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: CFString)
  let rawValue: CFString
}
extension SecKeyAlgorithm {
  @available(iOS 10.0, *)
  static let rsaSignatureRaw: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaSignatureDigestPKCS1v15Raw: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaSignatureDigestPKCS1v15SHA1: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaSignatureDigestPKCS1v15SHA224: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaSignatureDigestPKCS1v15SHA256: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaSignatureDigestPKCS1v15SHA384: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaSignatureDigestPKCS1v15SHA512: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaSignatureMessagePKCS1v15SHA1: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaSignatureMessagePKCS1v15SHA224: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaSignatureMessagePKCS1v15SHA256: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaSignatureMessagePKCS1v15SHA384: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaSignatureMessagePKCS1v15SHA512: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let rsaSignatureDigestPSSSHA1: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let rsaSignatureDigestPSSSHA224: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let rsaSignatureDigestPSSSHA256: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let rsaSignatureDigestPSSSHA384: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let rsaSignatureDigestPSSSHA512: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let rsaSignatureMessagePSSSHA1: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let rsaSignatureMessagePSSSHA224: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let rsaSignatureMessagePSSSHA256: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let rsaSignatureMessagePSSSHA384: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let rsaSignatureMessagePSSSHA512: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdsaSignatureRFC4754: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdsaSignatureDigestX962: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdsaSignatureDigestX962SHA1: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdsaSignatureDigestX962SHA224: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdsaSignatureDigestX962SHA256: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdsaSignatureDigestX962SHA384: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdsaSignatureDigestX962SHA512: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdsaSignatureMessageX962SHA1: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdsaSignatureMessageX962SHA224: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdsaSignatureMessageX962SHA256: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdsaSignatureMessageX962SHA384: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdsaSignatureMessageX962SHA512: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaEncryptionRaw: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaEncryptionPKCS1: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaEncryptionOAEPSHA1: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaEncryptionOAEPSHA224: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaEncryptionOAEPSHA256: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaEncryptionOAEPSHA384: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaEncryptionOAEPSHA512: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaEncryptionOAEPSHA1AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaEncryptionOAEPSHA224AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaEncryptionOAEPSHA256AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaEncryptionOAEPSHA384AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let rsaEncryptionOAEPSHA512AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let eciesEncryptionStandardX963SHA1AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let eciesEncryptionStandardX963SHA224AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let eciesEncryptionStandardX963SHA256AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let eciesEncryptionStandardX963SHA384AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let eciesEncryptionStandardX963SHA512AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let eciesEncryptionCofactorX963SHA1AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let eciesEncryptionCofactorX963SHA224AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let eciesEncryptionCofactorX963SHA256AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let eciesEncryptionCofactorX963SHA384AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let eciesEncryptionCofactorX963SHA512AESGCM: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let eciesEncryptionStandardVariableIVX963SHA224AESGCM: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let eciesEncryptionStandardVariableIVX963SHA256AESGCM: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let eciesEncryptionStandardVariableIVX963SHA384AESGCM: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let eciesEncryptionStandardVariableIVX963SHA512AESGCM: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let eciesEncryptionCofactorVariableIVX963SHA224AESGCM: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let eciesEncryptionCofactorVariableIVX963SHA256AESGCM: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let eciesEncryptionCofactorVariableIVX963SHA384AESGCM: SecKeyAlgorithm
  @available(iOS 11.0, *)
  static let eciesEncryptionCofactorVariableIVX963SHA512AESGCM: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdhKeyExchangeStandard: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdhKeyExchangeStandardX963SHA1: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdhKeyExchangeStandardX963SHA224: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdhKeyExchangeStandardX963SHA256: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdhKeyExchangeStandardX963SHA384: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdhKeyExchangeStandardX963SHA512: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdhKeyExchangeCofactor: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdhKeyExchangeCofactorX963SHA1: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdhKeyExchangeCofactorX963SHA224: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdhKeyExchangeCofactorX963SHA256: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdhKeyExchangeCofactorX963SHA384: SecKeyAlgorithm
  @available(iOS 10.0, *)
  static let ecdhKeyExchangeCofactorX963SHA512: SecKeyAlgorithm
}
@available(iOS 10.0, *)
func SecKeyCreateSignature(_ key: SecKey, _ algorithm: SecKeyAlgorithm, _ dataToSign: CFData, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(iOS 10.0, *)
func SecKeyVerifySignature(_ key: SecKey, _ algorithm: SecKeyAlgorithm, _ signedData: CFData, _ signature: CFData, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(iOS 10.0, *)
func SecKeyCreateEncryptedData(_ key: SecKey, _ algorithm: SecKeyAlgorithm, _ plaintext: CFData, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(iOS 10.0, *)
func SecKeyCreateDecryptedData(_ key: SecKey, _ algorithm: SecKeyAlgorithm, _ ciphertext: CFData, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(iOS 10.0, *)
struct SecKeyKeyExchangeParameter : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: CFString)
  let rawValue: CFString
}
extension SecKeyKeyExchangeParameter {
  @available(iOS 10.0, *)
  static let requestedSize: SecKeyKeyExchangeParameter
  @available(iOS 10.0, *)
  static let sharedInfo: SecKeyKeyExchangeParameter
}
@available(iOS 10.0, *)
func SecKeyCopyKeyExchangeResult(_ privateKey: SecKey, _ algorithm: SecKeyAlgorithm, _ publicKey: SecKey, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> CFData?
@available(iOS 10.0, *)
enum SecKeyOperationType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case sign
  case verify
  case encrypt
  case decrypt
  case keyExchange
}
@available(iOS 10.0, *)
func SecKeyIsAlgorithmSupported(_ key: SecKey, _ operation: SecKeyOperationType, _ algorithm: SecKeyAlgorithm) -> Bool
