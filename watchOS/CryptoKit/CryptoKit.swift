
@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
enum AES {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension AES {
  enum GCM {
    static func seal<Plaintext, AuthenticatedData>(_ message: Plaintext, using key: SymmetricKey, nonce: AES.GCM.Nonce? = nil, authenticating authenticatedData: AuthenticatedData) throws -> AES.GCM.SealedBox where Plaintext : DataProtocol, AuthenticatedData : DataProtocol
    static func seal<Plaintext>(_ message: Plaintext, using key: SymmetricKey, nonce: AES.GCM.Nonce? = nil) throws -> AES.GCM.SealedBox where Plaintext : DataProtocol
    static func open<AuthenticatedData>(_ sealedBox: AES.GCM.SealedBox, using key: SymmetricKey, authenticating authenticatedData: AuthenticatedData) throws -> Data where AuthenticatedData : DataProtocol
    static func open(_ sealedBox: AES.GCM.SealedBox, using key: SymmetricKey) throws -> Data
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension AES.GCM {
  @available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
  struct Nonce : ContiguousBytes, Sequence {
    init()
    init<D>(data: D) throws where D : DataProtocol
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension AES.GCM {
  @available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
  struct SealedBox {
    var tag: Data { get }
    var ciphertext: Data { get }
    var nonce: AES.GCM.Nonce { get }
    var combined: Data? { get }
    @usableFromInline
    init(combined: Data)
    @inlinable init<D>(combined: D) throws where D : DataProtocol
    init<C, T>(nonce: AES.GCM.Nonce, ciphertext: C, tag: T) throws where C : DataProtocol, T : DataProtocol
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
enum ChaChaPoly {
  static func seal<Plaintext, AuthenticatedData>(_ message: Plaintext, using key: SymmetricKey, nonce: ChaChaPoly.Nonce? = nil, authenticating authenticatedData: AuthenticatedData) throws -> ChaChaPoly.SealedBox where Plaintext : DataProtocol, AuthenticatedData : DataProtocol
  static func seal<Plaintext>(_ message: Plaintext, using key: SymmetricKey, nonce: ChaChaPoly.Nonce? = nil) throws -> ChaChaPoly.SealedBox where Plaintext : DataProtocol
  static func open<AuthenticatedData>(_ sealedBox: ChaChaPoly.SealedBox, using key: SymmetricKey, authenticating authenticatedData: AuthenticatedData) throws -> Data where AuthenticatedData : DataProtocol
  static func open(_ sealedBox: ChaChaPoly.SealedBox, using key: SymmetricKey) throws -> Data
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension ChaChaPoly {
  @available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
  @frozen struct SealedBox {
    let combined: Data
    var tag: Data { get }
    var ciphertext: Data { get }
    var nonce: ChaChaPoly.Nonce { get }
    @inlinable init<D>(combined: D) throws where D : DataProtocol
    init<C, T>(nonce: ChaChaPoly.Nonce, ciphertext: C, tag: T) throws where C : DataProtocol, T : DataProtocol
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension ChaChaPoly {
  @available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
  struct Nonce : ContiguousBytes, Sequence {
    init()
    init<D>(data: D) throws where D : DataProtocol
  }
}

@available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
enum CryptoKitASN1Error : Error {
  case invalidFieldIdentifier
  case unexpectedFieldType
  case invalidObjectIdentifier
  case invalidASN1Object
  case invalidASN1IntegerEncoding
  case truncatedASN1Field
  case unsupportedFieldLength
  case invalidPEMDocument
}

@available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
extension CryptoKitASN1Error : Equatable {
}

@available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
extension CryptoKitASN1Error : Hashable {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
enum CryptoKitError : Error {
  case incorrectKeySize
  case incorrectParameterSize
  case authenticationFailure
  case underlyingCoreCryptoError(error: Int32)
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
enum Curve25519 {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Curve25519 {
  enum Signing {
    struct PrivateKey {
      init()
      var publicKey: Curve25519.Signing.PublicKey { get }
      init<D>(rawRepresentation data: D) throws where D : ContiguousBytes
      var rawRepresentation: Data { get }
    }
    struct PublicKey {
      init<D>(rawRepresentation: D) throws where D : ContiguousBytes
      var rawRepresentation: Data { get }
    }
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Curve25519 {
  enum KeyAgreement {
    struct PublicKey {
      init<D>(rawRepresentation: D) throws where D : ContiguousBytes
      var rawRepresentation: Data { get }
    }
    struct PrivateKey {
      init()
      var publicKey: Curve25519.KeyAgreement.PublicKey { get }
      init<D>(rawRepresentation: D) throws where D : ContiguousBytes
      func sharedSecretFromKeyAgreement(with publicKeyShare: Curve25519.KeyAgreement.PublicKey) throws -> SharedSecret
      var rawRepresentation: Data { get }
    }
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Curve25519.Signing.PrivateKey {
  func signature<D>(for data: D) throws -> Data where D : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Curve25519.Signing.PublicKey {
  func isValidSignature<S, D>(_ signature: S, for data: D) -> Bool where S : DataProtocol, D : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
protocol Digest : ContiguousBytes, CustomStringConvertible, Hashable, Sequence where Self.Element == UInt8 {
  static var byteCount: Int { get }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Digest {
  func makeIterator() -> Array<UInt8>.Iterator
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Digest {
  static func == (lhs: Self, rhs: Self) -> Bool
  static func == <D>(lhs: Self, rhs: D) -> Bool where D : DataProtocol
  var description: String { get }
}

@available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
struct HKDF<H> where H : HashFunction {
  @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
  static func deriveKey<Salt, Info>(inputKeyMaterial: SymmetricKey, salt: Salt, info: Info, outputByteCount: Int) -> SymmetricKey where Salt : DataProtocol, Info : DataProtocol
  @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
  static func deriveKey<Info>(inputKeyMaterial: SymmetricKey, info: Info, outputByteCount: Int) -> SymmetricKey where Info : DataProtocol
  @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
  static func deriveKey<Salt>(inputKeyMaterial: SymmetricKey, salt: Salt, outputByteCount: Int) -> SymmetricKey where Salt : DataProtocol
  @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
  static func deriveKey(inputKeyMaterial: SymmetricKey, outputByteCount: Int) -> SymmetricKey
  @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
  static func extract<Salt>(inputKeyMaterial: SymmetricKey, salt: Salt?) -> HashedAuthenticationCode<H> where Salt : DataProtocol
  @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
  static func expand<PRK, Info>(pseudoRandomKey prk: PRK, info: Info?, outputByteCount: Int) -> SymmetricKey where PRK : ContiguousBytes, Info : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
struct HMAC<H> where H : HashFunction {
  typealias Key = SymmetricKey
  typealias MAC = HashedAuthenticationCode<H>
  static func isValidAuthenticationCode(_ mac: HMAC<H>.MAC, authenticating bufferPointer: UnsafeRawBufferPointer, using key: SymmetricKey) -> Bool
  init(key: SymmetricKey)
  static func authenticationCode<D>(for data: D, using key: SymmetricKey) -> HMAC<H>.MAC where D : DataProtocol
  static func isValidAuthenticationCode<D>(_ authenticationCode: HMAC<H>.MAC, authenticating authenticatedData: D, using key: SymmetricKey) -> Bool where D : DataProtocol
  @available(iOS 13.2, macOS 10.15, watchOS 6.1, tvOS 13.2, *)
  static func isValidAuthenticationCode<C, D>(_ authenticationCode: C, authenticating authenticatedData: D, using key: SymmetricKey) -> Bool where C : ContiguousBytes, D : DataProtocol
  mutating func update<D>(data: D) where D : DataProtocol
  func finalize() -> HMAC<H>.MAC
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension HMAC {
  @usableFromInline
  static func isValidAuthenticationCode<D>(_ authenticationCode: ContiguousBytes, authenticating authenticatedData: D, using key: SymmetricKey) -> Bool where D : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
protocol HashFunction {
  @available(iOS 13.2, macOS 10.15, watchOS 6.1, tvOS 13.2, *)
  static var blockByteCount: Int { get }
  associatedtype Digest : Digest
  init()
  mutating func update(bufferPointer: UnsafeRawBufferPointer)
  func finalize() -> Self.Digest
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension HashFunction {
  @inlinable static func hash(bufferPointer: UnsafeRawBufferPointer) -> Self.Digest
  @inlinable static func hash<D>(data: D) -> Self.Digest where D : DataProtocol
  @inlinable mutating func update<D>(data: D) where D : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
struct HashedAuthenticationCode<H> : MessageAuthenticationCode where H : HashFunction {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
enum Insecure {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Insecure {
  @available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
  struct SHA1Digest {
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Insecure {
  @available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
  struct MD5Digest {
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Insecure {
  struct SHA1 {
    static var byteCount: Int
  }
  struct MD5 {
    static var byteCount: Int
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Insecure.SHA1Digest : Digest {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Insecure.MD5Digest : Digest {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Insecure.SHA1 : HashFunction {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension Insecure.MD5 : HashFunction {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
protocol MessageAuthenticationCode : ContiguousBytes, CustomStringConvertible, Hashable, Sequence where Self.Element == UInt8 {
  var byteCount: Int { get }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension MessageAuthenticationCode {
  static func == (lhs: Self, rhs: Self) -> Bool
  static func == <D>(lhs: Self, rhs: D) -> Bool where D : DataProtocol
  func makeIterator() -> Array<UInt8>.Iterator
  var description: String { get }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
enum P256 {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P256 {
  enum Signing {
    struct PublicKey {
      init<D>(rawRepresentation: D) throws where D : ContiguousBytes
      init<Bytes>(compactRepresentation: Bytes) throws where Bytes : ContiguousBytes
      init<Bytes>(x963Representation: Bytes) throws where Bytes : ContiguousBytes
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init(pemRepresentation: String) throws
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init<Bytes>(derRepresentation: Bytes) throws where Bytes : RandomAccessCollection, Bytes.Element == UInt8
      var compactRepresentation: Data? { get }
      var rawRepresentation: Data { get }
      var x963Representation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var derRepresentation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var pemRepresentation: String { get }
    }
    struct PrivateKey {
      init(compactRepresentable: Bool = true)
      init<Bytes>(x963Representation: Bytes) throws where Bytes : ContiguousBytes
      init<Bytes>(rawRepresentation: Bytes) throws where Bytes : ContiguousBytes
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init(pemRepresentation: String) throws
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init<Bytes>(derRepresentation: Bytes) throws where Bytes : RandomAccessCollection, Bytes.Element == UInt8
      var publicKey: P256.Signing.PublicKey { get }
      var rawRepresentation: Data { get }
      var x963Representation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var derRepresentation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var pemRepresentation: String { get }
    }
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P256 {
  enum KeyAgreement {
    struct PublicKey {
      init<D>(rawRepresentation: D) throws where D : ContiguousBytes
      init<Bytes>(compactRepresentation: Bytes) throws where Bytes : ContiguousBytes
      init<Bytes>(x963Representation: Bytes) throws where Bytes : ContiguousBytes
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init(pemRepresentation: String) throws
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init<Bytes>(derRepresentation: Bytes) throws where Bytes : RandomAccessCollection, Bytes.Element == UInt8
      var compactRepresentation: Data? { get }
      var rawRepresentation: Data { get }
      var x963Representation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var derRepresentation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var pemRepresentation: String { get }
    }
    struct PrivateKey {
      init(compactRepresentable: Bool = true)
      init<Bytes>(x963Representation: Bytes) throws where Bytes : ContiguousBytes
      init<Bytes>(rawRepresentation: Bytes) throws where Bytes : ContiguousBytes
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init(pemRepresentation: String) throws
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init<Bytes>(derRepresentation: Bytes) throws where Bytes : RandomAccessCollection, Bytes.Element == UInt8
      var publicKey: P256.KeyAgreement.PublicKey { get }
      var rawRepresentation: Data { get }
      var x963Representation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var derRepresentation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var pemRepresentation: String { get }
    }
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P256.Signing {
  struct ECDSASignature : ContiguousBytes {
    var rawRepresentation: Data
    init<D>(rawRepresentation: D) throws where D : DataProtocol
    init<D>(derRepresentation: D) throws where D : DataProtocol
    var derRepresentation: Data { get }
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P256.Signing.PublicKey {
  func isValidSignature<D>(_ signature: P256.Signing.ECDSASignature, for digest: D) -> Bool where D : Digest
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P256.Signing.PublicKey {
  func isValidSignature<D>(_ signature: P256.Signing.ECDSASignature, for data: D) -> Bool where D : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P256.Signing.PrivateKey {
  func signature<D>(for digest: D) throws -> P256.Signing.ECDSASignature where D : Digest
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P256.Signing.PrivateKey {
  func signature<D>(for data: D) throws -> P256.Signing.ECDSASignature where D : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P256.KeyAgreement.PrivateKey {
  func sharedSecretFromKeyAgreement(with publicKeyShare: P256.KeyAgreement.PublicKey) throws -> SharedSecret
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
enum P384 {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P384 {
  enum Signing {
    struct PublicKey {
      init<D>(rawRepresentation: D) throws where D : ContiguousBytes
      init<Bytes>(compactRepresentation: Bytes) throws where Bytes : ContiguousBytes
      init<Bytes>(x963Representation: Bytes) throws where Bytes : ContiguousBytes
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init(pemRepresentation: String) throws
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init<Bytes>(derRepresentation: Bytes) throws where Bytes : RandomAccessCollection, Bytes.Element == UInt8
      var compactRepresentation: Data? { get }
      var rawRepresentation: Data { get }
      var x963Representation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var derRepresentation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var pemRepresentation: String { get }
    }
    struct PrivateKey {
      init(compactRepresentable: Bool = true)
      init<Bytes>(x963Representation: Bytes) throws where Bytes : ContiguousBytes
      init<Bytes>(rawRepresentation: Bytes) throws where Bytes : ContiguousBytes
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init(pemRepresentation: String) throws
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init<Bytes>(derRepresentation: Bytes) throws where Bytes : RandomAccessCollection, Bytes.Element == UInt8
      var publicKey: P384.Signing.PublicKey { get }
      var rawRepresentation: Data { get }
      var x963Representation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var derRepresentation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var pemRepresentation: String { get }
    }
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P384 {
  enum KeyAgreement {
    struct PublicKey {
      init<D>(rawRepresentation: D) throws where D : ContiguousBytes
      init<Bytes>(compactRepresentation: Bytes) throws where Bytes : ContiguousBytes
      init<Bytes>(x963Representation: Bytes) throws where Bytes : ContiguousBytes
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init(pemRepresentation: String) throws
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init<Bytes>(derRepresentation: Bytes) throws where Bytes : RandomAccessCollection, Bytes.Element == UInt8
      var compactRepresentation: Data? { get }
      var rawRepresentation: Data { get }
      var x963Representation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var derRepresentation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var pemRepresentation: String { get }
    }
    struct PrivateKey {
      init(compactRepresentable: Bool = true)
      init<Bytes>(x963Representation: Bytes) throws where Bytes : ContiguousBytes
      init<Bytes>(rawRepresentation: Bytes) throws where Bytes : ContiguousBytes
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init(pemRepresentation: String) throws
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init<Bytes>(derRepresentation: Bytes) throws where Bytes : RandomAccessCollection, Bytes.Element == UInt8
      var publicKey: P384.KeyAgreement.PublicKey { get }
      var rawRepresentation: Data { get }
      var x963Representation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var derRepresentation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var pemRepresentation: String { get }
    }
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P384.Signing {
  struct ECDSASignature : ContiguousBytes {
    var rawRepresentation: Data
    init<D>(rawRepresentation: D) throws where D : DataProtocol
    init<D>(derRepresentation: D) throws where D : DataProtocol
    var derRepresentation: Data { get }
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P384.Signing.PublicKey {
  func isValidSignature<D>(_ signature: P384.Signing.ECDSASignature, for digest: D) -> Bool where D : Digest
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P384.Signing.PublicKey {
  func isValidSignature<D>(_ signature: P384.Signing.ECDSASignature, for data: D) -> Bool where D : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P384.Signing.PrivateKey {
  func signature<D>(for digest: D) throws -> P384.Signing.ECDSASignature where D : Digest
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P384.Signing.PrivateKey {
  func signature<D>(for data: D) throws -> P384.Signing.ECDSASignature where D : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P384.KeyAgreement.PrivateKey {
  func sharedSecretFromKeyAgreement(with publicKeyShare: P384.KeyAgreement.PublicKey) throws -> SharedSecret
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
enum P521 {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P521 {
  enum Signing {
    struct PublicKey {
      init<D>(rawRepresentation: D) throws where D : ContiguousBytes
      init<Bytes>(compactRepresentation: Bytes) throws where Bytes : ContiguousBytes
      init<Bytes>(x963Representation: Bytes) throws where Bytes : ContiguousBytes
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init(pemRepresentation: String) throws
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init<Bytes>(derRepresentation: Bytes) throws where Bytes : RandomAccessCollection, Bytes.Element == UInt8
      var compactRepresentation: Data? { get }
      var rawRepresentation: Data { get }
      var x963Representation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var derRepresentation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var pemRepresentation: String { get }
    }
    struct PrivateKey {
      init(compactRepresentable: Bool = true)
      init<Bytes>(x963Representation: Bytes) throws where Bytes : ContiguousBytes
      init<Bytes>(rawRepresentation: Bytes) throws where Bytes : ContiguousBytes
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init(pemRepresentation: String) throws
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init<Bytes>(derRepresentation: Bytes) throws where Bytes : RandomAccessCollection, Bytes.Element == UInt8
      var publicKey: P521.Signing.PublicKey { get }
      var rawRepresentation: Data { get }
      var x963Representation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var derRepresentation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var pemRepresentation: String { get }
    }
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P521 {
  enum KeyAgreement {
    struct PublicKey {
      init<D>(rawRepresentation: D) throws where D : ContiguousBytes
      init<Bytes>(compactRepresentation: Bytes) throws where Bytes : ContiguousBytes
      init<Bytes>(x963Representation: Bytes) throws where Bytes : ContiguousBytes
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init(pemRepresentation: String) throws
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init<Bytes>(derRepresentation: Bytes) throws where Bytes : RandomAccessCollection, Bytes.Element == UInt8
      var compactRepresentation: Data? { get }
      var rawRepresentation: Data { get }
      var x963Representation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var derRepresentation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var pemRepresentation: String { get }
    }
    struct PrivateKey {
      init(compactRepresentable: Bool = true)
      init<Bytes>(x963Representation: Bytes) throws where Bytes : ContiguousBytes
      init<Bytes>(rawRepresentation: Bytes) throws where Bytes : ContiguousBytes
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init(pemRepresentation: String) throws
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      init<Bytes>(derRepresentation: Bytes) throws where Bytes : RandomAccessCollection, Bytes.Element == UInt8
      var publicKey: P521.KeyAgreement.PublicKey { get }
      var rawRepresentation: Data { get }
      var x963Representation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var derRepresentation: Data { get }
      @available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
      var pemRepresentation: String { get }
    }
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P521.Signing {
  struct ECDSASignature : ContiguousBytes {
    var rawRepresentation: Data
    init<D>(rawRepresentation: D) throws where D : DataProtocol
    init<D>(derRepresentation: D) throws where D : DataProtocol
    var derRepresentation: Data { get }
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P521.Signing.PublicKey {
  func isValidSignature<D>(_ signature: P521.Signing.ECDSASignature, for digest: D) -> Bool where D : Digest
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P521.Signing.PublicKey {
  func isValidSignature<D>(_ signature: P521.Signing.ECDSASignature, for data: D) -> Bool where D : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P521.Signing.PrivateKey {
  func signature<D>(for digest: D) throws -> P521.Signing.ECDSASignature where D : Digest
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P521.Signing.PrivateKey {
  func signature<D>(for data: D) throws -> P521.Signing.ECDSASignature where D : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension P521.KeyAgreement.PrivateKey {
  func sharedSecretFromKeyAgreement(with publicKeyShare: P521.KeyAgreement.PublicKey) throws -> SharedSecret
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
struct SHA256 {
  static var byteCount: Int
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SHA256 : HashFunction {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
struct SHA256Digest {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SHA256Digest : Digest {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
struct SHA384 {
  static var byteCount: Int
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SHA384 : HashFunction {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
struct SHA384Digest {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SHA384Digest : Digest {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
struct SHA512 {
  static var byteCount: Int
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SHA512 : HashFunction {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
struct SHA512Digest {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SHA512Digest : Digest {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
enum SecureEnclave {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SecureEnclave {
  static var isAvailable: Bool { get }
  enum P256 {
    enum Signing {
      struct PrivateKey {
        let publicKey: P256.Signing.PublicKey
        let dataRepresentation: Data
        @available(watchOS 6.0, tvOS 13.0, *)
        init(dataRepresentation: Data) throws
        @available(watchOS 6.0, tvOS 13.0, *)
        init(compactRepresentable: Bool = true, accessControl: SecAccessControl = SecAccessControlCreateWithFlags(nil, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, [], nil)!) throws
      }
    }
    enum KeyAgreement {
      struct PrivateKey {
        let publicKey: P256.KeyAgreement.PublicKey
        let dataRepresentation: Data
        @available(watchOS 6.0, tvOS 13.0, *)
        init(dataRepresentation: Data) throws
        @available(watchOS 6.0, tvOS 13.0, *)
        init(compactRepresentable: Bool = true, accessControl: SecAccessControl = SecAccessControlCreateWithFlags(nil, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, [], nil)!) throws
      }
    }
  }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SecureEnclave.P256.Signing.PrivateKey {
  func signature<D>(for digest: D) throws -> P256.Signing.ECDSASignature where D : Digest
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SecureEnclave.P256.Signing.PrivateKey {
  func signature<D>(for data: D) throws -> P256.Signing.ECDSASignature where D : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SecureEnclave.P256.KeyAgreement.PrivateKey {
  func sharedSecretFromKeyAgreement(with publicKeyShare: P256.KeyAgreement.PublicKey) throws -> SharedSecret
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
struct SharedSecret : ContiguousBytes {
  func x963DerivedSymmetricKey<H, SI>(using hashFunction: H.Type, sharedInfo: SI, outputByteCount: Int) -> SymmetricKey where H : HashFunction, SI : DataProtocol
  func hkdfDerivedSymmetricKey<H, Salt, SI>(using hashFunction: H.Type, salt: Salt, sharedInfo: SI, outputByteCount: Int) -> SymmetricKey where H : HashFunction, Salt : DataProtocol, SI : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SharedSecret : Hashable {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SharedSecret : CustomStringConvertible, Equatable {
  static func == <D>(lhs: SharedSecret, rhs: D) -> Bool where D : DataProtocol
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
struct SymmetricKey : ContiguousBytes {
  init<D>(data: D) where D : ContiguousBytes
  init(size: SymmetricKeySize)
  var bitCount: Int { get }
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension SymmetricKey : Equatable {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
struct SymmetricKeySize {
  let bitCount: Int
  static var bits128: SymmetricKeySize { get }
  static var bits192: SymmetricKeySize { get }
  static var bits256: SymmetricKeySize { get }
  init(bitCount: Int)
}

