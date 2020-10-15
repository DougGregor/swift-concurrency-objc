
struct NSFontCollectionMatchingOptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSFontCollectionMatchingOptionKey {
  @available(macOS 10.7, *)
  static let includeDisabledFontsOption: NSFontCollectionMatchingOptionKey
  @available(macOS 10.7, *)
  static let removeDuplicatesOption: NSFontCollectionMatchingOptionKey
  @available(macOS 10.7, *)
  static let disallowAutoActivationOption: NSFontCollectionMatchingOptionKey
}
@available(macOS 10.7, *)
class NSFontCollection : NSObject, NSCopying, NSMutableCopying, NSCoding {
  /*not inherited*/ init(descriptors queryDescriptors: [NSFontDescriptor])
  @NSCopying class var withAllAvailableDescriptors: NSFontCollection { get }
  /*not inherited*/ init?(locale: Locale)
  class func show(_ collection: NSFontCollection, withName name: NSFontCollection.Name, visibility: NSFontCollection.Visibility) throws
  class func hide(withName name: NSFontCollection.Name, visibility: NSFontCollection.Visibility) throws
  class func rename(fromName name: NSFontCollection.Name, visibility: NSFontCollection.Visibility, toName name: NSFontCollection.Name) throws
  class var allFontCollectionNames: [NSFontCollection.Name] { get }
  /*not inherited*/ init?(name: NSFontCollection.Name)
  /*not inherited*/ init?(name: NSFontCollection.Name, visibility: NSFontCollection.Visibility)
  var queryDescriptors: [NSFontDescriptor]? { get }
  var exclusionDescriptors: [NSFontDescriptor]? { get }
  var matchingDescriptors: [NSFontDescriptor]? { get }
  func matchingDescriptors(options: [NSFontCollectionMatchingOptionKey : NSNumber]? = nil) -> [NSFontDescriptor]?
  func matchingDescriptors(forFamily family: String) -> [NSFontDescriptor]?
  func matchingDescriptors(forFamily family: String, options: [NSFontCollectionMatchingOptionKey : NSNumber]? = nil) -> [NSFontDescriptor]?
}
@available(macOS 10.7, *)
class NSMutableFontCollection : NSFontCollection {
  func addQuery(for descriptors: [NSFontDescriptor])
  func removeQuery(for descriptors: [NSFontDescriptor])
}
extension NSFontCollection {
  @available(macOS 10.7, *)
  class let didChangeNotification: NSNotification.Name
  struct UserInfoKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS 10.7, *)
  class let actionUserInfoKey: NSFontCollection.UserInfoKey
  @available(macOS 10.7, *)
  class let nameUserInfoKey: NSFontCollection.UserInfoKey
  @available(macOS 10.7, *)
  class let oldNameUserInfoKey: NSFontCollection.UserInfoKey
  @available(macOS 10.7, *)
  class let visibilityUserInfoKey: NSFontCollection.UserInfoKey
  struct ActionTypeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct Visibility : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var process: NSFontCollection.Visibility { get }
    static var user: NSFontCollection.Visibility { get }
    static var computer: NSFontCollection.Visibility { get }
  }
  struct Name : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSFontCollection.ActionTypeKey {
  @available(macOS 10.7, *)
  static let shown: NSFontCollection.ActionTypeKey
  @available(macOS 10.7, *)
  static let hidden: NSFontCollection.ActionTypeKey
  @available(macOS 10.7, *)
  static let renamed: NSFontCollection.ActionTypeKey
}
extension NSFontCollection.Name {
  @available(macOS 10.7, *)
  static let allFonts: NSFontCollection.Name
  @available(macOS 10.7, *)
  static let user: NSFontCollection.Name
  @available(macOS 10.7, *)
  static let favorites: NSFontCollection.Name
  @available(macOS 10.7, *)
  static let recentlyUsed: NSFontCollection.Name
}
