
extension FileWrapper {
  @available(watchOS 2.0, *)
  struct ReadingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var immediate: FileWrapper.ReadingOptions { get }
    static var withoutMapping: FileWrapper.ReadingOptions { get }
  }
  @available(watchOS 2.0, *)
  struct WritingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var atomic: FileWrapper.WritingOptions { get }
    static var withNameUpdating: FileWrapper.WritingOptions { get }
  }
}
@available(watchOS 2.0, *)
class FileWrapper : NSObject, NSSecureCoding {
  @available(watchOS 2.0, *)
  init(url: URL, options: FileWrapper.ReadingOptions = []) throws
  init(directoryWithFileWrappers childrenByPreferredName: [String : FileWrapper])
  init(regularFileWithContents contents: Data)
  @available(watchOS 2.0, *)
  init(symbolicLinkWithDestinationURL url: URL)
  init?(serializedRepresentation serializeRepresentation: Data)
  var isDirectory: Bool { get }
  var isRegularFile: Bool { get }
  var isSymbolicLink: Bool { get }
  var preferredFilename: String?
  var filename: String?
  var fileAttributes: [String : Any]
  @available(watchOS 2.0, *)
  func matchesContents(of url: URL) -> Bool
  @available(watchOS 2.0, *)
  func read(from url: URL, options: FileWrapper.ReadingOptions = []) throws
  @available(watchOS 2.0, *)
  func write(to url: URL, options: FileWrapper.WritingOptions = [], originalContentsURL: URL?) throws
  var serializedRepresentation: Data? { get }
  func addFileWrapper(_ child: FileWrapper) -> String
  func addRegularFile(withContents data: Data, preferredFilename fileName: String) -> String
  func removeFileWrapper(_ child: FileWrapper)
  var fileWrappers: [String : FileWrapper]? { get }
  func keyForChildFileWrapper(_ child: FileWrapper) -> String?
  var regularFileContents: Data? { get }
  @available(watchOS 2.0, *)
  var symbolicLinkDestinationURL: URL? { get }
}
