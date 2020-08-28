
extension UIPasteboard.Name {
  static let general: UIPasteboard.Name
}
@available(tvOS, introduced: 3.0, deprecated: 10.0, message: "The Find pasteboard is no longer available.")
let UIPasteboardNameFind: String
extension UIPasteboard.DetectionPattern {
  @available(tvOS 14.0, *)
  static let probableWebURL: UIPasteboard.DetectionPattern
  @available(tvOS 14.0, *)
  static let probableWebSearch: UIPasteboard.DetectionPattern
  @available(tvOS 14.0, *)
  static let number: UIPasteboard.DetectionPattern
}
@available(tvOS 3.0, *)
class UIPasteboard : NSObject {
  class var general: UIPasteboard { get }
  /*not inherited*/ init?(name pasteboardName: UIPasteboard.Name, create: Bool)
  class func withUniqueName() -> UIPasteboard
  var name: UIPasteboard.Name { get }
  class func remove(withName pasteboardName: UIPasteboard.Name)
  var isPersistent: Bool { get }
  @available(tvOS, introduced: 3.0, deprecated: 10.0, message: "Do not set persistence on pasteboards. This property is set automatically.")
  func setPersistent(_ persistent: Bool)
  var changeCount: Int { get }
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
  @available(tvOS 10.0, *)
  func setItems(_ items: [[String : Any]], options: [UIPasteboard.OptionsKey : Any] = [:])
  var string: String?
  var strings: [String]?
  var url: URL?
  var urls: [URL]?
  @NSCopying var image: UIImage?
  var images: [UIImage]?
  @NSCopying var color: UIColor?
  var colors: [UIColor]?
  @available(tvOS 10.0, *)
  var hasStrings: Bool { get }
  @available(tvOS 10.0, *)
  var hasURLs: Bool { get }
  @available(tvOS 10.0, *)
  var hasImages: Bool { get }
  @available(tvOS 10.0, *)
  var hasColors: Bool { get }
  @available(tvOS 14.0, *)
  func __detectPatterns(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, completionHandler: @escaping (Set<UIPasteboard.DetectionPattern>?, Error?) -> Void)
  @available(tvOS 14.0, *)
  func __detectPatterns(forPatterns patterns: Set<UIPasteboard.DetectionPattern>) async throws -> Set<UIPasteboard.DetectionPattern>?
  @available(tvOS 14.0, *)
  func __detectPatterns(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?, completionHandler: @escaping ([Set<UIPasteboard.DetectionPattern>]?, Error?) -> Void)
  @available(tvOS 14.0, *)
  func __detectPatterns(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?) async throws -> [Set<UIPasteboard.DetectionPattern>]?
  @available(tvOS 14.0, *)
  func __detectValues(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, completionHandler: @escaping ([UIPasteboard.DetectionPattern : Any]?, Error?) -> Void)
  @available(tvOS 14.0, *)
  func __detectValues(forPatterns patterns: Set<UIPasteboard.DetectionPattern>) async throws -> [UIPasteboard.DetectionPattern : Any]?
  @available(tvOS 14.0, *)
  func __detectValues(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?, completionHandler: @escaping ([[UIPasteboard.DetectionPattern : Any]]?, Error?) -> Void)
  @available(tvOS 14.0, *)
  func __detectValues(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?) async throws -> [[UIPasteboard.DetectionPattern : Any]]?
}
extension UIPasteboard {
  @available(tvOS 10.0, *)
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
  @available(tvOS 10.0, *)
  class let typeAutomatic: String
  struct Name : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(tvOS 14.0, *)
  struct DetectionPattern : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension UIPasteboard.OptionsKey {
  @available(tvOS 10.0, *)
  static let expirationDate: UIPasteboard.OptionsKey
  @available(tvOS 10.0, *)
  static let localOnly: UIPasteboard.OptionsKey
}
