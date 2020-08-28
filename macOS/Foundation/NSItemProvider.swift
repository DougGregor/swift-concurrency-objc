
@available(macOS 10.13, *)
enum NSItemProviderRepresentationVisibility : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case all
  @available(macOS 10.13, *)
  case group
  case ownProcess
}
@available(macOS 10.13, *)
struct NSItemProviderFileOptions : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var openInPlace: NSItemProviderFileOptions { get }
}
@available(macOS 10.13, *)
protocol NSItemProviderWriting : NSObjectProtocol {
  static var writableTypeIdentifiersForItemProvider: [String] { get }
  optional var writableTypeIdentifiersForItemProvider: [String] { get }
  optional static func itemProviderVisibilityForRepresentation(withTypeIdentifier typeIdentifier: String) -> NSItemProviderRepresentationVisibility
  optional func itemProviderVisibilityForRepresentation(withTypeIdentifier typeIdentifier: String) -> NSItemProviderRepresentationVisibility
  func loadData(withTypeIdentifier typeIdentifier: String, forItemProviderCompletionHandler completionHandler: @escaping (Data?, Error?) -> Void) -> Progress?
}
@available(macOS 10.13, *)
protocol NSItemProviderReading : NSObjectProtocol {
  static var readableTypeIdentifiersForItemProvider: [String] { get }
  static func object(withItemProviderData data: Data, typeIdentifier: String) throws -> Self
}
extension NSItemProvider {
  typealias CompletionHandler = (NSSecureCoding?, Error?) -> Void
  typealias LoadHandler = (NSItemProvider.CompletionHandler?, AnyClass?, [AnyHashable : Any]?) -> Void
  @available(macOS 10.10, *)
  class let errorDomain: String
  @available(macOS 10.10, *)
  enum ErrorCode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknownError
    case itemUnavailableError
    case unexpectedValueClassError
    @available(macOS 10.11, *)
    case unavailableCoercionError
  }
}
@available(macOS 10.10, *)
class NSItemProvider : NSObject, NSCopying {
  @available(macOS 10.13, *)
  func registerDataRepresentation(forTypeIdentifier typeIdentifier: String, visibility: NSItemProviderRepresentationVisibility, loadHandler: @escaping (@escaping (Data?, Error?) -> Void) -> Progress?)
  @available(macOS 10.13, *)
  func registerFileRepresentation(forTypeIdentifier typeIdentifier: String, fileOptions: NSItemProviderFileOptions = [], visibility: NSItemProviderRepresentationVisibility, loadHandler: @escaping (@escaping (URL?, Bool, Error?) -> Void) -> Progress?)
  var registeredTypeIdentifiers: [String] { get }
  @available(macOS 10.13, *)
  func registeredTypeIdentifiers(fileOptions: NSItemProviderFileOptions = []) -> [String]
  func hasItemConformingToTypeIdentifier(_ typeIdentifier: String) -> Bool
  @available(macOS 10.13, *)
  func hasRepresentationConforming(toTypeIdentifier typeIdentifier: String, fileOptions: NSItemProviderFileOptions = []) -> Bool
  @available(macOS 10.13, *)
  func loadDataRepresentation(forTypeIdentifier typeIdentifier: String, completionHandler: @escaping (Data?, Error?) -> Void) -> Progress
  @available(macOS 10.13, *)
  func loadFileRepresentation(forTypeIdentifier typeIdentifier: String, completionHandler: @escaping (URL?, Error?) -> Void) -> Progress
  @available(macOS 10.13, *)
  func loadInPlaceFileRepresentation(forTypeIdentifier typeIdentifier: String, completionHandler: @escaping (URL?, Bool, Error?) -> Void) -> Progress
  @available(macOS 10.14, *)
  var suggestedName: String?
  @available(macOS 10.13, *)
  convenience init(object: NSItemProviderWriting)
  @available(macOS 10.13, *)
  func registerObject(_ object: NSItemProviderWriting, visibility: NSItemProviderRepresentationVisibility)
  @available(macOS 10.13, *)
  func registerObject(ofClass aClass: NSItemProviderWriting.Type, visibility: NSItemProviderRepresentationVisibility, loadHandler: @escaping (@escaping (NSItemProviderWriting?, Error?) -> Void) -> Progress?)
  @available(macOS 10.13, *)
  func canLoadObject(ofClass aClass: NSItemProviderReading.Type) -> Bool
  @available(macOS 10.13, *)
  func loadObject(ofClass aClass: NSItemProviderReading.Type, completionHandler: @escaping (NSItemProviderReading?, Error?) -> Void) -> Progress
  init(item: NSSecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOf fileURL: URL!)
  func registerItem(forTypeIdentifier typeIdentifier: String, loadHandler: @escaping NSItemProvider.LoadHandler)
  func loadItem(forTypeIdentifier typeIdentifier: String, options: [AnyHashable : Any]? = nil, completionHandler: NSItemProvider.CompletionHandler? = nil)
  func loadItem(forTypeIdentifier typeIdentifier: String, options: [AnyHashable : Any]? = nil) async throws -> NSSecureCoding?
}

@available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
extension NSItemProvider {
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  func registerObject<T>(ofClass: T.Type, visibility: NSItemProviderRepresentationVisibility, loadHandler: @escaping ((T?, Error?) -> Void) -> Progress?) where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderWriting
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  func canLoadObject<T>(ofClass: T.Type) -> Bool where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderReading
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  func loadObject<T>(ofClass: T.Type, completionHandler: @escaping (T?, Error?) -> Void) -> Progress where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderReading
}
@available(macOS 10.10, *)
let NSItemProviderPreferredImageSizeKey: String
extension NSItemProvider {
  @available(macOS 10.10, *)
  var previewImageHandler: NSItemProvider.LoadHandler?
  @available(macOS 10.10, *)
  func loadPreviewImage(options: [AnyHashable : Any]! = [:], completionHandler: NSItemProvider.CompletionHandler!)
  @available(macOS 10.10, *)
  func loadPreviewImage(options: [AnyHashable : Any]! = [:]) async throws -> NSSecureCoding?
}
@available(macOS 10.10, *)
let NSExtensionJavaScriptPreprocessingResultsKey: String
