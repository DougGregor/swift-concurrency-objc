
class Bundle : NSObject {
  class var main: Bundle { get }
  init?(path: String)
  @available(macOS 10.6, *)
  convenience init?(url: URL)
  /*not inherited*/ init(for aClass: AnyClass)
  /*not inherited*/ init?(identifier: String)
  class var allBundles: [Bundle] { get }
  class var allFrameworks: [Bundle] { get }
  func load() -> Bool
  var isLoaded: Bool { get }
  func unload() -> Bool
  @available(macOS 10.5, *)
  func preflight() throws
  @available(macOS 10.5, *)
  func loadAndReturnError() throws
  @available(macOS 10.6, *)
  var bundleURL: URL { get }
  @available(macOS 10.6, *)
  var resourceURL: URL? { get }
  @available(macOS 10.6, *)
  var executableURL: URL? { get }
  @available(macOS 10.6, *)
  func url(forAuxiliaryExecutable executableName: String) -> URL?
  @available(macOS 10.6, *)
  var privateFrameworksURL: URL? { get }
  @available(macOS 10.6, *)
  var sharedFrameworksURL: URL? { get }
  @available(macOS 10.6, *)
  var sharedSupportURL: URL? { get }
  @available(macOS 10.6, *)
  var builtInPlugInsURL: URL? { get }
  @available(macOS 10.7, *)
  var appStoreReceiptURL: URL? { get }
  var bundlePath: String { get }
  var resourcePath: String? { get }
  var executablePath: String? { get }
  func path(forAuxiliaryExecutable executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  @available(macOS 10.6, *)
  class func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?, in bundleURL: URL) -> URL?
  @available(macOS 10.6, *)
  class func urls(forResourcesWithExtension ext: String?, subdirectory subpath: String?, in bundleURL: URL) -> [URL]?
  @available(macOS 10.6, *)
  func url(forResource name: String?, withExtension ext: String?) -> URL?
  @available(macOS 10.6, *)
  func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?) -> URL?
  @available(macOS 10.6, *)
  func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> URL?
  @available(macOS 10.6, *)
  func urls(forResourcesWithExtension ext: String?, subdirectory subpath: String?) -> [URL]?
  @available(macOS 10.6, *)
  func urls(forResourcesWithExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> [URL]?
  class func path(forResource name: String?, ofType ext: String?, inDirectory bundlePath: String) -> String?
  class func paths(forResourcesOfType ext: String?, inDirectory bundlePath: String) -> [String]
  func path(forResource name: String?, ofType ext: String?) -> String?
  func path(forResource name: String?, ofType ext: String?, inDirectory subpath: String?) -> String?
  func path(forResource name: String?, ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> String?
  func paths(forResourcesOfType ext: String?, inDirectory subpath: String?) -> [String]
  func paths(forResourcesOfType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> [String]
  func localizedString(forKey key: String, value: String?, table tableName: String?) -> String
  var bundleIdentifier: String? { get }
  var infoDictionary: [String : Any]? { get }
  var localizedInfoDictionary: [String : Any]? { get }
  func object(forInfoDictionaryKey key: String) -> Any?
  func classNamed(_ className: String) -> AnyClass?
  var principalClass: AnyClass? { get }
  var preferredLocalizations: [String] { get }
  var localizations: [String] { get }
  var developmentLocalization: String? { get }
  class func preferredLocalizations(from localizationsArray: [String]) -> [String]
  class func preferredLocalizations(from localizationsArray: [String], forPreferences preferencesArray: [String]?) -> [String]
  @available(macOS 10.5, *)
  var executableArchitectures: [NSNumber]? { get }
}
var NSBundleExecutableArchitectureI386: Int { get }
var NSBundleExecutableArchitecturePPC: Int { get }
var NSBundleExecutableArchitectureX86_64: Int { get }
var NSBundleExecutableArchitecturePPC64: Int { get }
@available(macOS 11.0, *)
var NSBundleExecutableArchitectureARM64: Int { get }
extension NSString {
  @available(macOS 10.11, *)
  func variantFittingPresentationWidth(_ width: Int) -> String
}
extension Bundle {
  class let didLoadNotification: NSNotification.Name
}
let NSLoadedClasses: String
extension Bundle {
}
extension NSNotification.Name {
}
