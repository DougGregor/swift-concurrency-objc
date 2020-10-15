
extension UIPasteboard.Name {
  static let general: UIPasteboard.Name
}
@available(iOS, introduced: 3.0, deprecated: 10.0, message: "The Find pasteboard is no longer available.")
let UIPasteboardNameFind: String
extension UIPasteboard.DetectionPattern {
  @available(iOS 14.0, *)
  static let probableWebURL: UIPasteboard.DetectionPattern
  @available(iOS 14.0, *)
  static let probableWebSearch: UIPasteboard.DetectionPattern
  @available(iOS 14.0, *)
  static let number: UIPasteboard.DetectionPattern
}
@available(iOS 3.0, *)
class UIPasteboard : NSObject {
  class var general: UIPasteboard { get }
  /*not inherited*/ init?(name pasteboardName: UIPasteboard.Name, create: Bool)
  class func withUniqueName() -> UIPasteboard
  var name: UIPasteboard.Name { get }
  class func remove(withName pasteboardName: UIPasteboard.Name)
  var isPersistent: Bool { get }
  @available(iOS, introduced: 3.0, deprecated: 10.0, message: "Do not set persistence on pasteboards. This property is set automatically.")
  func setPersistent(_ persistent: Bool)
  var changeCount: Int { get }
  @available(iOS 11.0, *)
  var itemProviders: [NSItemProvider]
  @available(iOS 11.0, *)
  func setItemProviders(_ itemProviders: [NSItemProvider], localOnly: Bool, expirationDate: Date?)
  @available(iOS 11.0, *)
  func setObjects(_ objects: [NSItemProviderWriting])
  @available(iOS 11.0, *)
  func setObjects(_ objects: [NSItemProviderWriting], localOnly: Bool, expirationDate: Date?)
  var types: [String] { get }
  func contains(pasteboardTypes: [String]) -> Bool
  func data(forPasteboardType pasteboardType: String) -> Data?
  func value(forPasteboardType pasteboardType: String) -> Any?
  func setValue(_ value: Any, forPasteboardType pasteboardType: String)
  func setData(_ data: Data, forPasteboardType pasteboardType: String)
  var numberOfItems: Int { get }
  func types(forItemSet itemSet: IndexSet?) -> [[String]]?
  func contains(pasteboardTypes: [String], inItemSet itemSet: IndexSet?) -> Bool
  func itemSet(withPasteboardTypes pasteboardTypes: [String]) -> IndexSet?
  func values(forPasteboardType pasteboardType: String, inItemSet itemSet: IndexSet?) -> [Any]?
  func data(forPasteboardType pasteboardType: String, inItemSet itemSet: IndexSet?) -> [Data]?
  var items: [[String : Any]]
  func addItems(_ items: [[String : Any]])
  @available(iOS 10.0, *)
  func setItems(_ items: [[String : Any]], options: [UIPasteboard.OptionsKey : Any] = [:])
  var string: String?
  var strings: [String]?
  var url: URL?
  var urls: [URL]?
  @NSCopying var image: UIImage?
  var images: [UIImage]?
  @NSCopying var color: UIColor?
  var colors: [UIColor]?
  @available(iOS 10.0, *)
  var hasStrings: Bool { get }
  @available(iOS 10.0, *)
  var hasURLs: Bool { get }
  @available(iOS 10.0, *)
  var hasImages: Bool { get }
  @available(iOS 10.0, *)
  var hasColors: Bool { get }
  @available(iOS 14.0, *)
  func __detectPatterns(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, completionHandler: @escaping (Set<UIPasteboard.DetectionPattern>?, Error?) -> Void)
  @available(iOS 14.0, *)
  func __detectPatterns(forPatterns patterns: Set<UIPasteboard.DetectionPattern>) async throws -> Set<UIPasteboard.DetectionPattern>?
  @available(iOS 14.0, *)
  func __detectPatterns(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?, completionHandler: @escaping ([Set<UIPasteboard.DetectionPattern>]?, Error?) -> Void)
  @available(iOS 14.0, *)
  func __detectPatterns(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?) async throws -> [Set<UIPasteboard.DetectionPattern>]?
  @available(iOS 14.0, *)
  func __detectValues(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, completionHandler: @escaping ([UIPasteboard.DetectionPattern : Any]?, Error?) -> Void)
  @available(iOS 14.0, *)
  func __detectValues(forPatterns patterns: Set<UIPasteboard.DetectionPattern>) async throws -> [UIPasteboard.DetectionPattern : Any]?
  @available(iOS 14.0, *)
  func __detectValues(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?, completionHandler: @escaping ([[UIPasteboard.DetectionPattern : Any]]?, Error?) -> Void)
  @available(iOS 14.0, *)
  func __detectValues(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?) async throws -> [[UIPasteboard.DetectionPattern : Any]]?
}

extension UIPasteboard {
  @available(iOS 14.0, *)
  func detectPatterns(for patterns: Set<UIPasteboard.DetectionPattern>, completionHandler: @escaping (Result<Set<UIPasteboard.DetectionPattern>, Error>) -> ())
  @available(iOS 14.0, *)
  func detectPatterns(for patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?, completionHandler: @escaping (Result<[Set<UIPasteboard.DetectionPattern>], Error>) -> ())
  @available(iOS 14.0, *)
  func detectValues(for patterns: Set<UIPasteboard.DetectionPattern>, completionHandler: @escaping (Result<[UIPasteboard.DetectionPattern : Any], Error>) -> ())
  @available(iOS 14.0, *)
  func detectValues(for patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?, completionHandler: @escaping (Result<[[UIPasteboard.DetectionPattern : Any]], Error>) -> ())
}

extension UIPasteboard {
  @available(iOS 11.0, *)
  func setObjects<T>(_ objects: [T]) where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderWriting
  @available(iOS 11.0, *)
  func setObjects<T>(_ objects: [T], localOnly: Bool, expirationDate: Date?) where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderWriting
}
extension UIPasteboard {
  @available(iOS 10.0, *)
  struct OptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  class let changedNotification: NSNotification.Name
  class let changedTypesAddedUserInfoKey: String
  class let changedTypesRemovedUserInfoKey: String
  class let removedNotification: NSNotification.Name
  class var typeListString: NSArray
  class var typeListURL: NSArray
  class var typeListImage: NSArray
  class var typeListColor: NSArray
  @available(iOS 10.0, *)
  class let typeAutomatic: String
  struct Name : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(iOS 14.0, *)
  struct DetectionPattern : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension UIPasteboard.OptionsKey {
  @available(iOS 10.0, *)
  static let expirationDate: UIPasteboard.OptionsKey
  @available(iOS 10.0, *)
  static let localOnly: UIPasteboard.OptionsKey
}
