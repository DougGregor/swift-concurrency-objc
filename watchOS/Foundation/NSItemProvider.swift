
@available(watchOS 4.0, *)
enum NSItemProviderRepresentationVisibility : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case all
  @available(watchOS 4.0, *)
  case team
  case ownProcess
}
@available(watchOS 4.0, *)
struct NSItemProviderFileOptions : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var openInPlace: NSItemProviderFileOptions { get }
}
@available(watchOS 4.0, *)
protocol NSItemProviderWriting : NSObjectProtocol {
  static var writableTypeIdentifiersForItemProvider: [String] { get }
  optional var writableTypeIdentifiersForItemProvider: [String] { get }
  optional static func itemProviderVisibilityForRepresentation(withTypeIdentifier typeIdentifier: String) -> NSItemProviderRepresentationVisibility
  optional func itemProviderVisibilityForRepresentation(withTypeIdentifier typeIdentifier: String) -> NSItemProviderRepresentationVisibility
  func loadData(withTypeIdentifier typeIdentifier: String, forItemProviderCompletionHandler completionHandler: @escaping (Data?, Error?) -> Void) -> Progress?
}
@available(watchOS 4.0, *)
protocol NSItemProviderReading : NSObjectProtocol {
  static var readableTypeIdentifiersForItemProvider: [String] { get }
  static func object(withItemProviderData data: Data, typeIdentifier: String) throws -> Self
}
extension NSItemProvider {
  typealias CompletionHandler = (NSSecureCoding?, Error?) -> Void
  typealias LoadHandler = (NSItemProvider.CompletionHandler?, AnyClass?, [AnyHashable : Any]?) -> Void
  @available(watchOS 2.0, *)
  class let errorDomain: String
  @available(watchOS 2.0, *)
  enum ErrorCode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknownError
    case itemUnavailableError
    case unexpectedValueClassError
    @available(watchOS 2.0, *)
    case unavailableCoercionError
  }
}
@available(watchOS 2.0, *)
class NSItemProvider : NSObject, NSCopying {
  @available(watchOS 4.0, *)
  func registerDataRepresentation(forTypeIdentifier typeIdentifier: String, visibility: NSItemProviderRepresentationVisibility, loadHandler: @escaping (@escaping (Data?, Error?) -> Void) -> Progress?)
  @available(watchOS 4.0, *)
  func registerFileRepresentation(forTypeIdentifier typeIdentifier: String, fileOptions: NSItemProviderFileOptions = [], visibility: NSItemProviderRepresentationVisibility, loadHandler: @escaping (@escaping (URL?, Bool, Error?) -> Void) -> Progress?)
  var registeredTypeIdentifiers: [String] { get }
  @available(watchOS 4.0, *)
  func registeredTypeIdentifiers(fileOptions: NSItemProviderFileOptions = []) -> [String]
  func hasItemConformingToTypeIdentifier(_ typeIdentifier: String) -> Bool
  @available(watchOS 4.0, *)
  func hasRepresentationConforming(toTypeIdentifier typeIdentifier: String, fileOptions: NSItemProviderFileOptions = []) -> Bool
  @available(watchOS 4.0, *)
  func loadDataRepresentation(forTypeIdentifier typeIdentifier: String, completionHandler: @escaping (Data?, Error?) -> Void) -> Progress
  @available(watchOS 4.0, *)
  func loadFileRepresentation(forTypeIdentifier typeIdentifier: String, completionHandler: @escaping (URL?, Error?) -> Void) -> Progress
  @available(watchOS 4.0, *)
  func loadInPlaceFileRepresentation(forTypeIdentifier typeIdentifier: String, completionHandler: @escaping (URL?, Bool, Error?) -> Void) -> Progress
  @available(watchOS 4.0, *)
  convenience init(object: NSItemProviderWriting)
  @available(watchOS 4.0, *)
  func registerObject(_ object: NSItemProviderWriting, visibility: NSItemProviderRepresentationVisibility)
  @available(watchOS 4.0, *)
  func registerObject(ofClass aClass: NSItemProviderWriting.Type, visibility: NSItemProviderRepresentationVisibility, loadHandler: @escaping (@escaping (NSItemProviderWriting?, Error?) -> Void) -> Progress?)
  @available(watchOS 4.0, *)
  func canLoadObject(ofClass aClass: NSItemProviderReading.Type) -> Bool
  @available(watchOS 4.0, *)
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
@available(watchOS 2.0, *)
let NSItemProviderPreferredImageSizeKey: String
extension NSItemProvider {
  @available(watchOS 2.0, *)
  var previewImageHandler: NSItemProvider.LoadHandler?
  @available(watchOS 2.0, *)
  func loadPreviewImage(options: [AnyHashable : Any]! = [:], completionHandler: NSItemProvider.CompletionHandler!)
  @available(watchOS 2.0, *)
  func loadPreviewImage(options: [AnyHashable : Any]! = [:]) async throws -> NSSecureCoding?
}
@available(watchOS 2.0, *)
let NSExtensionJavaScriptPreprocessingResultsKey: String
@available(watchOS 2.0, *)
let NSExtensionJavaScriptFinalizeArgumentKey: String
