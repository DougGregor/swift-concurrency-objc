
extension FileWrapper {
  @available(macOS 10.6, *)
  struct ReadingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var immediate: FileWrapper.ReadingOptions { get }
    static var withoutMapping: FileWrapper.ReadingOptions { get }
  }
  @available(macOS 10.6, *)
  struct WritingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var atomic: FileWrapper.WritingOptions { get }
    static var withNameUpdating: FileWrapper.WritingOptions { get }
  }
}
@available(macOS 10.0, *)
class FileWrapper : NSObject, NSSecureCoding {
  @available(macOS 10.6, *)
  init(url: URL, options: FileWrapper.ReadingOptions = []) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : FileWrapper])
  init(regularFileWithContents contents: Data)
  @available(macOS 10.6, *)
  init(symbolicLinkWithDestinationURL url: URL)
  init?(serializedRepresentation serializeRepresentation: Data)
  var isDirectory: Bool { get }
  var isRegularFile: Bool { get }
  var isSymbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : Any]
  @available(macOS 10.6, *)
  func matchesContents(of url: URL) -> Bool
  @available(macOS 10.6, *)
  func read(from url: URL, options: FileWrapper.ReadingOptions = []) throws
  @available(macOS 10.6, *)
  func write(to url: URL, options: FileWrapper.WritingOptions = [], originalContentsURL: URL?) throws
  var serializedRepresentation: Data? { get }
  func addFileWrapper(_ child: FileWrapper) -> String
  func addRegularFile(withContents data: Data, preferredFilename fileName: String) -> String
  func removeFileWrapper(_ child: FileWrapper)
  var fileWrappers: [String : FileWrapper]? { get }
  func keyForChildFileWrapper(_ child: FileWrapper) -> String?
  var regularFileContents: Data? { get }
  @available(macOS 10.6, *)
  var symbolicLinkDestinationURL: URL? { get }
}
extension FileWrapper {
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use -initWithURL:options:error: instead.")
  convenience init?(path: String)
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use -initSymbolicLinkWithDestinationURL: and -setPreferredFileName:, if necessary, instead.")
  convenience init(symbolicLinkWithDestination path: String)
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use -matchesContentsOfURL: instead.")
  func needsToBeUpdated(fromPath path: String) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use -readFromURL:options:error: instead.")
  func update(fromPath path: String) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use -writeToURL:options:originalContentsURL:error: instead.")
  func write(toFile path: String, atomically atomicFlag: Bool, updateFilenames updateFilenamesFlag: Bool) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Instantiate a new NSFileWrapper with -initWithURL:options:error:, send it -setPreferredFileName: if necessary, then use -addFileWrapper: instead.")
  func addFile(withPath path: String) -> String
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Instantiate a new NSFileWrapper with -initWithSymbolicLinkDestinationURL:, send it -setPreferredFileName: if necessary, then use -addFileWrapper: instead.")
  func addSymbolicLink(withDestination path: String, preferredFilename filename: String) -> String
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use -symbolicLinkDestinationURL instead.")
  func symbolicLinkDestination() -> String
}
