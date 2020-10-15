
extension NSData {
  struct ReadingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var mappedIfSafe: NSData.ReadingOptions { get }
    static var uncached: NSData.ReadingOptions { get }
    @available(tvOS 9.0, *)
    static var alwaysMapped: NSData.ReadingOptions { get }
    @available(tvOS, introduced: 9.0, deprecated: 100000, renamed: "NSData.ReadingOptions.mappedIfSafe")
    static var dataReadingMapped: NSData.ReadingOptions { get }
    @available(tvOS, introduced: 9.0, deprecated: 100000, renamed: "NSData.ReadingOptions.dataReadingMapped")
    static var mappedRead: NSData.ReadingOptions { get }
    @available(tvOS, introduced: 9.0, deprecated: 100000, renamed: "NSData.ReadingOptions.uncached")
    static var uncachedRead: NSData.ReadingOptions { get }
  }
  struct WritingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var atomic: NSData.WritingOptions { get }
    @available(tvOS 9.0, *)
    static var withoutOverwriting: NSData.WritingOptions { get }
    @available(tvOS 9.0, *)
    static var noFileProtection: NSData.WritingOptions { get }
    @available(tvOS 9.0, *)
    static var completeFileProtection: NSData.WritingOptions { get }
    @available(tvOS 9.0, *)
    static var completeFileProtectionUnlessOpen: NSData.WritingOptions { get }
    @available(tvOS 9.0, *)
    static var completeFileProtectionUntilFirstUserAuthentication: NSData.WritingOptions { get }
    @available(tvOS 9.0, *)
    static var fileProtectionMask: NSData.WritingOptions { get }
    @available(tvOS, introduced: 9.0, deprecated: 100000, renamed: "NSData.WritingOptions.atomic")
    static var atomicWrite: NSData.WritingOptions { get }
  }
  @available(tvOS 9.0, *)
  struct SearchOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var backwards: NSData.SearchOptions { get }
    static var anchored: NSData.SearchOptions { get }
  }
  @available(tvOS 9.0, *)
  struct Base64EncodingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var lineLength64Characters: NSData.Base64EncodingOptions { get }
    static var lineLength76Characters: NSData.Base64EncodingOptions { get }
    static var endLineWithCarriageReturn: NSData.Base64EncodingOptions { get }
    static var endLineWithLineFeed: NSData.Base64EncodingOptions { get }
  }
  @available(tvOS 9.0, *)
  struct Base64DecodingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var ignoreUnknownCharacters: NSData.Base64DecodingOptions { get }
  }
  @available(tvOS 13.0, *)
  enum CompressionAlgorithm : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case lzfse
    case lz4
    case lzma
    case zlib
  }
}
class NSData : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  var bytes: UnsafeRawPointer { get }
}

extension NSData : _HasCustomAnyHashableRepresentation {
}

extension NSData : DataProtocol {
}
extension NSData {
  func getBytes(_ buffer: UnsafeMutableRawPointer, length: Int)
  func getBytes(_ buffer: UnsafeMutableRawPointer, range: NSRange)
  func isEqual(to other: Data) -> Bool
  func subdata(with range: NSRange) -> Data
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func write(to url: URL, atomically: Bool) -> Bool
  func write(toFile path: String, options writeOptionsMask: NSData.WritingOptions = []) throws
  func write(to url: URL, options writeOptionsMask: NSData.WritingOptions = []) throws
  @available(tvOS 9.0, *)
  func range(of dataToFind: Data, options mask: NSData.SearchOptions = [], in searchRange: NSRange) -> NSRange
  @available(tvOS 9.0, *)
  func enumerateBytes(_ block: (UnsafeRawPointer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSData {
  init(bytes: UnsafeRawPointer?, length: Int)
  init(bytesNoCopy bytes: UnsafeMutableRawPointer, length: Int)
  init(bytesNoCopy bytes: UnsafeMutableRawPointer, length: Int, freeWhenDone b: Bool)
  @available(tvOS 9.0, *)
  init(bytesNoCopy bytes: UnsafeMutableRawPointer, length: Int, deallocator: ((UnsafeMutableRawPointer, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: NSData.ReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: NSData.ReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
}
extension NSData {
  @available(tvOS 9.0, *)
  init?(base64Encoded base64String: String, options: NSData.Base64DecodingOptions = [])
  @available(tvOS 9.0, *)
  func base64EncodedString(options: NSData.Base64EncodingOptions = []) -> String
  @available(tvOS 9.0, *)
  init?(base64Encoded base64Data: Data, options: NSData.Base64DecodingOptions = [])
  @available(tvOS 9.0, *)
  func base64EncodedData(options: NSData.Base64EncodingOptions = []) -> Data
}
extension NSData {
  @available(tvOS 13.0, *)
  func decompressed(using algorithm: NSData.CompressionAlgorithm) throws -> Self
  @available(tvOS 13.0, *)
  func compressed(using algorithm: NSData.CompressionAlgorithm) throws -> Self
}
extension NSData {
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "This method is unsafe because it could potentially cause buffer overruns. Use -getBytes:length: instead.")
  func getBytes(_ buffer: UnsafeMutableRawPointer)
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use +dataWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  class func dataWithContentsOfMappedFile(_ path: String) -> Any?
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use initWithBase64EncodedString:options: instead")
  init?(base64Encoding base64String: String)
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use base64EncodedStringWithOptions: instead")
  func base64Encoding() -> String
}
class NSMutableData : NSData {
  var mutableBytes: UnsafeMutableRawPointer { get }
}
extension NSMutableData {
  func append(_ bytes: UnsafeRawPointer, length: Int)
  func append(_ other: Data)
  func increaseLength(by extraLength: Int)
  func replaceBytes(in range: NSRange, withBytes bytes: UnsafeRawPointer)
  func resetBytes(in range: NSRange)
  func setData(_ data: Data)
  func replaceBytes(in range: NSRange, withBytes replacementBytes: UnsafeRawPointer?, length replacementLength: Int)
}
extension NSMutableData {
  init?(capacity: Int)
  init?(length: Int)
}
extension NSMutableData {
  @available(tvOS 13.0, *)
  func decompress(using algorithm: NSData.CompressionAlgorithm) throws
  @available(tvOS 13.0, *)
  func compress(using algorithm: NSData.CompressionAlgorithm) throws
}
@available(tvOS 9.0, *)
class NSPurgeableData : NSMutableData, NSDiscardableContent {
}
