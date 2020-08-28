
class NSWorkspace : NSObject {
  class var shared: NSWorkspace { get }
  var notificationCenter: NotificationCenter { get }
  func open(_ url: URL) -> Bool
  @available(macOS 10.15, *)
  func open(_ url: URL, configuration: NSWorkspace.OpenConfiguration, completionHandler: ((NSRunningApplication?, Error?) -> Void)? = nil)
  @available(macOS 10.15, *)
  func open(_ urls: [URL], withApplicationAt applicationURL: URL, configuration: NSWorkspace.OpenConfiguration, completionHandler: ((NSRunningApplication?, Error?) -> Void)? = nil)
  @available(macOS 10.15, *)
  func openApplication(at applicationURL: URL, configuration: NSWorkspace.OpenConfiguration, completionHandler: ((NSRunningApplication?, Error?) -> Void)? = nil)
  func selectFile(_ fullPath: String?, inFileViewerRootedAtPath rootFullPath: String) -> Bool
  @available(macOS 10.6, *)
  func activateFileViewerSelecting(_ fileURLs: [URL])
  @available(macOS 10.6, *)
  func showSearchResults(forQueryString queryString: String) -> Bool
  func noteFileSystemChanged(_ path: String)
  func isFilePackage(atPath fullPath: String) -> Bool
  func icon(forFile fullPath: String) -> NSImage
  func icon(forFiles fullPaths: [String]) -> NSImage?
  func setIcon(_ image: NSImage?, forFile fullPath: String, options: NSWorkspace.IconCreationOptions = []) -> Bool
  @available(macOS 10.6, *)
  var fileLabels: [String] { get }
  @available(macOS 10.6, *)
  var fileLabelColors: [NSColor] { get }
  @available(macOS 10.6, *)
  func recycle(_ URLs: [URL], completionHandler handler: (([URL : URL], Error?) -> Void)? = nil)
  @available(macOS 10.6, *)
  func duplicate(_ URLs: [URL], completionHandler handler: (([URL : URL], Error?) -> Void)? = nil)
  func getFileSystemInfo(forPath fullPath: String, isRemovable removableFlag: UnsafeMutablePointer<ObjCBool>?, isWritable writableFlag: UnsafeMutablePointer<ObjCBool>?, isUnmountable unmountableFlag: UnsafeMutablePointer<ObjCBool>?, description: AutoreleasingUnsafeMutablePointer<NSString?>?, type fileSystemType: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool
  func unmountAndEjectDevice(atPath path: String) -> Bool
  @available(macOS 10.6, *)
  func unmountAndEjectDevice(at url: URL) throws
  func extendPowerOff(by requested: Int) -> Int
  func hideOtherApplications()
  @available(macOS 10.6, *)
  func urlForApplication(withBundleIdentifier bundleIdentifier: String) -> URL?
  @available(macOS 10.6, *)
  func urlForApplication(toOpen url: URL) -> URL?
  @available(macOS 10.7, *)
  var frontmostApplication: NSRunningApplication? { get }
  @available(macOS 10.7, *)
  var menuBarOwningApplication: NSRunningApplication? { get }
}
extension NSWorkspace {
  @available(macOS 10.15, *)
  class OpenConfiguration : NSObject, NSCopying {
    var promptsUserIfNeeded: Bool
    var addsToRecentItems: Bool
    var activates: Bool
    var hides: Bool
    var hidesOthers: Bool
    var isForPrinting: Bool
    var createsNewApplicationInstance: Bool
    var allowsRunningApplicationSubstitution: Bool
    var arguments: [String]
    var environment: [String : String]
    var appleEvent: NSAppleEventDescriptor?
    var architecture: cpu_type_t
    var requiresUniversalLinks: Bool
  }
  struct DesktopImageOptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS 10.14, *)
  enum AuthorizationType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case createSymbolicLink
    case setAttributes
    case replaceFile
  }
  @available(macOS 10.14, *)
  class Authorization : NSObject {
  }
  @available(macOS 10.6, *)
  class let applicationUserInfoKey: String
  class let willLaunchApplicationNotification: NSNotification.Name
  class let didLaunchApplicationNotification: NSNotification.Name
  class let didTerminateApplicationNotification: NSNotification.Name
  @available(macOS 10.6, *)
  class let didHideApplicationNotification: NSNotification.Name
  @available(macOS 10.6, *)
  class let didUnhideApplicationNotification: NSNotification.Name
  @available(macOS 10.6, *)
  class let didActivateApplicationNotification: NSNotification.Name
  @available(macOS 10.6, *)
  class let didDeactivateApplicationNotification: NSNotification.Name
  @available(macOS 10.6, *)
  class let localizedVolumeNameUserInfoKey: String
  @available(macOS 10.6, *)
  class let volumeURLUserInfoKey: String
  @available(macOS 10.6, *)
  class let oldLocalizedVolumeNameUserInfoKey: String
  @available(macOS 10.6, *)
  class let oldVolumeURLUserInfoKey: String
  class let didMountNotification: NSNotification.Name
  class let didUnmountNotification: NSNotification.Name
  class let willUnmountNotification: NSNotification.Name
  @available(macOS 10.6, *)
  class let didRenameVolumeNotification: NSNotification.Name
  class let willPowerOffNotification: NSNotification.Name
  class let willSleepNotification: NSNotification.Name
  class let didWakeNotification: NSNotification.Name
  @available(macOS 10.6, *)
  class let screensDidSleepNotification: NSNotification.Name
  @available(macOS 10.6, *)
  class let screensDidWakeNotification: NSNotification.Name
  class let sessionDidBecomeActiveNotification: NSNotification.Name
  class let sessionDidResignActiveNotification: NSNotification.Name
  @available(macOS 10.6, *)
  class let didChangeFileLabelsNotification: NSNotification.Name
  @available(macOS 10.6, *)
  class let activeSpaceDidChangeNotification: NSNotification.Name
  @available(macOS, introduced: 10.0, deprecated: 10.11)
  struct FileOperationName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct LaunchOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    @available(macOS, introduced: 10.3, deprecated: 11.0, message: "Use -[NSWorkspaceOpenConfiguration setForPrinting:YES] instead.")
    static var andPrint: NSWorkspace.LaunchOptions { get }
    @available(macOS, introduced: 10.3, deprecated: 11.0, message: "Use -[NSWorkspaceOpenConfiguration setPromptsUserIfNeeded:YES] instead.")
    static var withErrorPresentation: NSWorkspace.LaunchOptions { get }
    @available(macOS, introduced: 10.3, deprecated: 11.0, message: "This option does nothing.")
    static var inhibitingBackgroundOnly: NSWorkspace.LaunchOptions { get }
    @available(macOS, introduced: 10.3, deprecated: 11.0, message: "Use -[NSWorkspaceOpenConfiguration setAddsToRecentItems:YES] instead.")
    static var withoutAddingToRecents: NSWorkspace.LaunchOptions { get }
    @available(macOS, introduced: 10.3, deprecated: 11.0, message: "Use -[NSWorkspaceOpenConfiguration setActivates:NO] instead.")
    static var withoutActivation: NSWorkspace.LaunchOptions { get }
    @available(macOS, introduced: 10.3, deprecated: 11.0, message: "When using NSWorkspaceOpenConfiguration, all launches are asynchronous.")
    static var async: NSWorkspace.LaunchOptions { get }
    @available(macOS, introduced: 10.3, deprecated: 11.0, message: "Use -[NSWorkspaceOpenConfiguration setCreatesNewApplicationInstance:YES] instead.")
    static var newInstance: NSWorkspace.LaunchOptions { get }
    @available(macOS, introduced: 10.3, deprecated: 11.0, message: "Use -[NSWorkspaceOpenConfiguration setHides:YES] instead.")
    static var andHide: NSWorkspace.LaunchOptions { get }
    @available(macOS, introduced: 10.3, deprecated: 11.0, message: "Use -[NSWorkspaceOpenConfiguration setHidesOthers:YES] instead.")
    static var andHideOthers: NSWorkspace.LaunchOptions { get }
    @available(macOS, introduced: 10.3, deprecated: 11.0, message: "Use NSWorkspaceOpenConfiguration instead.")
    static var `default`: NSWorkspace.LaunchOptions { get }
    @available(macOS, introduced: 10.3, deprecated: 10.11, message: "The Classic environment is no longer supported.")
    static var allowingClassicStartup: NSWorkspace.LaunchOptions { get }
    @available(macOS, introduced: 10.3, deprecated: 10.11, message: "The Classic environment is no longer supported.")
    static var preferringClassic: NSWorkspace.LaunchOptions { get }
  }
  @available(macOS, introduced: 10.6, deprecated: 11.0, message: "Use NSWorkspaceOpenConfiguration instead.")
  struct LaunchConfigurationKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS, introduced: 10.0, deprecated: 10.11)
  class let didPerformFileOperationNotification: NSNotification.Name
  struct IconCreationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var excludeQuickDrawElementsIconCreationOption: NSWorkspace.IconCreationOptions { get }
    static var exclude10_4ElementsIconCreationOption: NSWorkspace.IconCreationOptions { get }
  }
}
extension NSWorkspace.DesktopImageOptionKey {
  @available(macOS 10.6, *)
  static let imageScaling: NSWorkspace.DesktopImageOptionKey
  @available(macOS 10.6, *)
  static let allowClipping: NSWorkspace.DesktopImageOptionKey
  @available(macOS 10.6, *)
  static let fillColor: NSWorkspace.DesktopImageOptionKey
}
extension NSWorkspace {
  @available(macOS 10.6, *)
  func setDesktopImageURL(_ url: URL, for screen: NSScreen, options: [NSWorkspace.DesktopImageOptionKey : Any] = [:]) throws
  @available(macOS 10.6, *)
  func desktopImageURL(for screen: NSScreen) -> URL?
  @available(macOS 10.6, *)
  func desktopImageOptions(for screen: NSScreen) -> [NSWorkspace.DesktopImageOptionKey : Any]?
}
extension NSWorkspace {
  @available(macOS 10.14, *)
  func requestAuthorization(to type: NSWorkspace.AuthorizationType, completionHandler: @escaping (NSWorkspace.Authorization?, Error?) -> Void)
}
extension FileManager {
  @available(macOS 10.14, *)
  convenience init(authorization: NSWorkspace.Authorization)
}
extension NSWorkspace.LaunchConfigurationKey {
  @available(macOS, introduced: 10.6, deprecated: 11.0, message: "Use -[NSWorkspaceOpenConfiguration setAppleEvent:] instead.")
  static let appleEvent: NSWorkspace.LaunchConfigurationKey
  @available(macOS, introduced: 10.6, deprecated: 11.0, message: "Use -[NSWorkspaceOpenConfiguration setArguments:] instead.")
  static let arguments: NSWorkspace.LaunchConfigurationKey
  @available(macOS, introduced: 10.6, deprecated: 11.0, message: "Use -[NSWorkspaceOpenConfiguration setEnvironment:] instead.")
  static let environment: NSWorkspace.LaunchConfigurationKey
  @available(macOS, introduced: 10.6, deprecated: 11.0, message: "Do not specify an architecutre. When unspecified, the architecture for a new application instance will be determined based on the available architectures in its executable.")
  static let architecture: NSWorkspace.LaunchConfigurationKey
}
extension NSWorkspace {
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use -[NSWorkspace openURL:] instead.")
  func openFile(_ fullPath: String) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use -[NSWorkspace openURLs:withApplicationAtURL:configuration:completionHandler:] instead.")
  func openFile(_ fullPath: String, withApplication appName: String?) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use -[NSWorkspace openURLs:withApplicationAtURL:configuration:completionHandler:] instead.")
  func openFile(_ fullPath: String, withApplication appName: String?, andDeactivate flag: Bool) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use -[NSWorkspace openApplicationAtURL:configuration:completionHandler:] instead.")
  func launchApplication(_ appName: String) -> Bool
  @available(macOS, introduced: 10.6, deprecated: 11.0, message: "Use -[NSWorkspace openApplicationAtURL:configuration:completionHandler:] instead.")
  func launchApplication(at url: URL, options: NSWorkspace.LaunchOptions = [], configuration: [NSWorkspace.LaunchConfigurationKey : Any]) throws -> NSRunningApplication
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use -[NSWorkspace openURL:configuration:completionHandler:] instead.")
  func open(_ url: URL, options: NSWorkspace.LaunchOptions = [], configuration: [NSWorkspace.LaunchConfigurationKey : Any]) throws -> NSRunningApplication
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use -[NSWorkspace openURLs:withApplicationAtURL:configuration:completionHandler:] instead.")
  func open(_ urls: [URL], withApplicationAt applicationURL: URL, options: NSWorkspace.LaunchOptions = [], configuration: [NSWorkspace.LaunchConfigurationKey : Any]) throws -> NSRunningApplication
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use -[NSWorkspace openApplicationAtURL:configuration:completionHandler:] instead.")
  func launchApplication(_ appName: String, showIcon: Bool, autolaunch: Bool) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use -[NSWorkspace URLForApplicationWithBundleIdentifier:] instead.")
  func fullPath(forApplication appName: String) -> String?
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use -[NSWorkspace URLForApplicationWithBundleIdentifier:] instead.")
  func absolutePathForApplication(withBundleIdentifier bundleIdentifier: String) -> String?
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use -[NSWorkspace openApplicationAtURL:configuration:completionHandler:] instead.")
  func launchApplication(withBundleIdentifier bundleIdentifier: String, options: NSWorkspace.LaunchOptions = [], additionalEventParamDescriptor descriptor: NSAppleEventDescriptor?, launchIdentifier identifier: AutoreleasingUnsafeMutablePointer<NSNumber?>?) -> Bool
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use -[NSWorkspace openURLs:withApplicationAtURL:configuration:completionHandler:] instead.")
  func open(_ urls: [URL], withAppBundleIdentifier bundleIdentifier: String?, options: NSWorkspace.LaunchOptions = [], additionalEventParamDescriptor descriptor: NSAppleEventDescriptor?, launchIdentifiers identifiers: AutoreleasingUnsafeMutablePointer<NSArray?>?) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSWorkspace frontmostApplication] instead.")
  func activeApplication() -> [AnyHashable : Any]?
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSFileManager mountedVolumeURLsIncludingResourceValuesForKeys:options:] instead.")
  func mountedLocalVolumePaths() -> [Any]?
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSFileManager mountedVolumeURLsIncludingResourceValuesForKeys:options:] instead.")
  func mountedRemovableMedia() -> [Any]?
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSWorkspace openURL:] instead.")
  func openFile(_ fullPath: String, from image: NSImage?, at point: NSPoint, in view: NSView?) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.11)
  func performFileOperation(_ operation: NSWorkspace.FileOperationName, source: String, destination: String, files: [Any], tag: UnsafeMutablePointer<Int>?) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 100000, message: "Use -[NSWorkspace URLForApplicationToOpenURL:] to get the URL of an application that will open a given item, or -[NSURL getResourceValue:forKey:error:] with NSURLContentTypeKey to get the type of the given item.")
  func getInfoForFile(_ fullPath: String, application appName: AutoreleasingUnsafeMutablePointer<NSString?>?, type: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 100000, message: "Use -[NSWorkspace iconForContentType:] instead.")
  func icon(forFileType fileType: String) -> NSImage
  @available(macOS, introduced: 10.5, deprecated: 100000, message: "Use -[NSURL getResourceValue:forKey:error:] with NSURLContentTypeKey instead.")
  func type(ofFile absoluteFilePath: String) throws -> String
  @available(macOS, introduced: 10.5, deprecated: 100000, message: "Use UTType.localizedDescription instead.")
  func localizedDescription(forType typeName: String) -> String?
  @available(macOS, introduced: 10.5, deprecated: 100000, message: "Use UTType.preferredFilenameExtension instead.")
  func preferredFilenameExtension(forType typeName: String) -> String?
  @available(macOS, introduced: 10.5, deprecated: 100000, message: "Use +[UTType typesWithTag:tagClass:conformingToType:] to get a list of candidate types, then check if the input type conforms to any of them.")
  func filenameExtension(_ filenameExtension: String, isValidForType typeName: String) -> Bool
  @available(macOS, introduced: 10.5, deprecated: 100000, message: "Use -[UTType conformsToType:] instead.")
  func type(_ firstTypeName: String, conformsToType secondTypeName: String) -> Bool
}
extension NSWorkspace.FileOperationName {
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSFileManager moveItemAtURL:toURL:error:] instead.")
  static let moveOperation: NSWorkspace.FileOperationName
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSFileManager copyItemAtURL:toURL:error:] instead.")
  static let copyOperation: NSWorkspace.FileOperationName
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSFileManager linkItemAtURL:toURL:error:] instead.")
  static let linkOperation: NSWorkspace.FileOperationName
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "This operation is unimplemented.")
  static let compressOperation: NSWorkspace.FileOperationName
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "This operation is unimplemented.")
  static let decompressOperation: NSWorkspace.FileOperationName
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "This operation is unimplemented.")
  static let encryptOperation: NSWorkspace.FileOperationName
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "This operation is unimplemented.")
  static let decryptOperation: NSWorkspace.FileOperationName
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSFileManager removeItemAtURL:error:] instead.")
  static let destroyOperation: NSWorkspace.FileOperationName
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSWorkspace recycleURLs:completionHandler:] instead.")
  static let recycleOperation: NSWorkspace.FileOperationName
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSWorkspace duplicateURLs:completionHandler:] instead.")
  static let duplicateOperation: NSWorkspace.FileOperationName
}
