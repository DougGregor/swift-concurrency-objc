
@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
struct UTTagClass : RawRepresentable {
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTTagClass {
  static let filenameExtension: UTTagClass
  static let mimeType: UTTagClass
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTTagClass : Equatable, Hashable {
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTTagClass : CustomStringConvertible, CustomDebugStringConvertible {
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTTagClass : Codable {
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
struct UTType {
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTType {
  init?(_ identifier: String)
  init?(filenameExtension: String, conformingTo supertype: UTType = .data)
  init?(mimeType: String, conformingTo supertype: UTType = .data)
  var identifier: String { get }
  var preferredFilenameExtension: String? { get }
  var preferredMIMEType: String? { get }
  var localizedDescription: String? { get }
  var version: Int? { get }
  var referenceURL: URL? { get }
  var isDynamic: Bool { get }
  var isDeclared: Bool { get }
  var isPublic: Bool { get }
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTType {
  func conforms(to type: UTType) -> Bool
  func isSupertype(of type: UTType) -> Bool
  func isSubtype(of type: UTType) -> Bool
  var supertypes: Set<UTType> { get }
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTType {
  init?(tag: String, tagClass: UTTagClass, conformingTo supertype: UTType?)
  static func types(tag: String, tagClass: UTTagClass, conformingTo supertype: UTType?) -> [UTType]
  var tags: [UTTagClass : [String]] { get }
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTType {
  init(exportedAs identifier: String, conformingTo parentType: UTType? = nil)
  init(importedAs identifier: String, conformingTo parentType: UTType? = nil)
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTType : Equatable, Hashable {
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTType : CustomStringConvertible, CustomDebugStringConvertible {
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTType : ReferenceConvertible {
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTType : Codable {
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTType {
  static let item: UTType
  static let content: UTType
  static let compositeContent: UTType
  static let diskImage: UTType
  static let data: UTType
  static let directory: UTType
  static let resolvable: UTType
  static let symbolicLink: UTType
  static let executable: UTType
  static let mountPoint: UTType
  static let aliasFile: UTType
  static let urlBookmarkData: UTType
  static let url: UTType
  static let fileURL: UTType
  static let text: UTType
  static let plainText: UTType
  static let utf8PlainText: UTType
  static let utf16ExternalPlainText: UTType
  static let utf16PlainText: UTType
  static let delimitedText: UTType
  static let commaSeparatedText: UTType
  static let tabSeparatedText: UTType
  static let utf8TabSeparatedText: UTType
  static let rtf: UTType
  static let html: UTType
  static let xml: UTType
  static let yaml: UTType
  static let sourceCode: UTType
  static let assemblyLanguageSource: UTType
  static let cSource: UTType
  static let objectiveCSource: UTType
  static let swiftSource: UTType
  static let cPlusPlusSource: UTType
  static let objectiveCPlusPlusSource: UTType
  static let cHeader: UTType
  static let cPlusPlusHeader: UTType
  static let script: UTType
  static let appleScript: UTType
  static let osaScript: UTType
  static let osaScriptBundle: UTType
  static let javaScript: UTType
  static let shellScript: UTType
  static let perlScript: UTType
  static let pythonScript: UTType
  static let rubyScript: UTType
  static let phpScript: UTType
  static let json: UTType
  static let propertyList: UTType
  static let xmlPropertyList: UTType
  static let binaryPropertyList: UTType
  static let pdf: UTType
  static let rtfd: UTType
  static let flatRTFD: UTType
  static let webArchive: UTType
  static let image: UTType
  static let jpeg: UTType
  static let tiff: UTType
  static let gif: UTType
  static let png: UTType
  static let icns: UTType
  static let bmp: UTType
  static let ico: UTType
  static let rawImage: UTType
  static let svg: UTType
  static let livePhoto: UTType
  static let heif: UTType
  static let heic: UTType
  static let webP: UTType
  static let threeDContent: UTType
  static let usd: UTType
  static let usdz: UTType
  static let realityFile: UTType
  static let sceneKitScene: UTType
  static let arReferenceObject: UTType
  static let audiovisualContent: UTType
  static let movie: UTType
  static let video: UTType
  static let audio: UTType
  static let quickTimeMovie: UTType
  static let mpeg: UTType
  static let mpeg2Video: UTType
  static let mpeg2TransportStream: UTType
  static let mp3: UTType
  static let mpeg4Movie: UTType
  static let mpeg4Audio: UTType
  static let appleProtectedMPEG4Audio: UTType
  static let appleProtectedMPEG4Video: UTType
  static let avi: UTType
  static let aiff: UTType
  static let wav: UTType
  static let midi: UTType
  static let playlist: UTType
  static let m3uPlaylist: UTType
  static let folder: UTType
  static let volume: UTType
  static let package: UTType
  static let bundle: UTType
  static let pluginBundle: UTType
  static let spotlightImporter: UTType
  static let quickLookGenerator: UTType
  static let xpcService: UTType
  static let framework: UTType
  static let application: UTType
  static let applicationBundle: UTType
  static let applicationExtension: UTType
  static let unixExecutable: UTType
  static let exe: UTType
  static let systemPreferencesPane: UTType
  static let archive: UTType
  static let gzip: UTType
  static let bz2: UTType
  static let zip: UTType
  static let appleArchive: UTType
  static let spreadsheet: UTType
  static let presentation: UTType
  static let database: UTType
  static let message: UTType
  static let contact: UTType
  static let vCard: UTType
  static let toDoItem: UTType
  static let calendarEvent: UTType
  static let emailMessage: UTType
  static let internetLocation: UTType
  static let internetShortcut: UTType
  static let font: UTType
  static let bookmark: UTType
  static let pkcs12: UTType
  static let x509Certificate: UTType
  static let epub: UTType
  static let log: UTType
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension URLResourceValues {
  var contentType: UTType? { get }
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension URL {
  func appendingPathComponent(_ partialName: String, conformingTo contentType: UTType) -> URL
  mutating func appendPathComponent(_ partialName: String, conformingTo contentType: UTType)
  func appendingPathExtension(for contentType: UTType) -> URL
  mutating func appendPathExtension(for contentType: UTType)
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension String {
}

