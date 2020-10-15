
class CFBundle : _CFObject {
}
class CFPlugIn : _CFObject {
}
let kCFBundleInfoDictionaryVersionKey: CFString!
let kCFBundleExecutableKey: CFString!
let kCFBundleIdentifierKey: CFString!
let kCFBundleVersionKey: CFString!
let kCFBundleDevelopmentRegionKey: CFString!
let kCFBundleNameKey: CFString!
let kCFBundleLocalizationsKey: CFString!
func CFBundleGetMainBundle() -> CFBundle!
func CFBundleGetBundleWithIdentifier(_ bundleID: CFString!) -> CFBundle!
func CFBundleGetAllBundles() -> CFArray!
func CFBundleGetTypeID() -> CFTypeID
func CFBundleCreate(_ allocator: CFAllocator!, _ bundleURL: CFURL!) -> CFBundle!
func CFBundleCreateBundlesFromDirectory(_ allocator: CFAllocator!, _ directoryURL: CFURL!, _ bundleType: CFString!) -> CFArray!
func CFBundleCopyBundleURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleGetValueForInfoDictionaryKey(_ bundle: CFBundle!, _ key: CFString!) -> CFTypeRef!
func CFBundleGetInfoDictionary(_ bundle: CFBundle!) -> CFDictionary!
func CFBundleGetLocalInfoDictionary(_ bundle: CFBundle!) -> CFDictionary!
func CFBundleGetPackageInfo(_ bundle: CFBundle!, _ packageType: UnsafeMutablePointer<UInt32>!, _ packageCreator: UnsafeMutablePointer<UInt32>!)
func CFBundleGetIdentifier(_ bundle: CFBundle!) -> CFString!
func CFBundleGetVersionNumber(_ bundle: CFBundle!) -> UInt32
func CFBundleGetDevelopmentRegion(_ bundle: CFBundle!) -> CFString!
func CFBundleCopySupportFilesDirectoryURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleCopyResourcesDirectoryURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleCopyPrivateFrameworksURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleCopySharedFrameworksURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleCopySharedSupportURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleCopyBuiltInPlugInsURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleCopyInfoDictionaryInDirectory(_ bundleURL: CFURL!) -> CFDictionary!
func CFBundleGetPackageInfoInDirectory(_ url: CFURL!, _ packageType: UnsafeMutablePointer<UInt32>!, _ packageCreator: UnsafeMutablePointer<UInt32>!) -> Bool
func CFBundleCopyResourceURL(_ bundle: CFBundle!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfType(_ bundle: CFBundle!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFArray!
func CFBundleCopyLocalizedString(_ bundle: CFBundle!, _ key: CFString!, _ value: CFString!, _ tableName: CFString!) -> CFString!
func CFBundleCopyResourceURLInDirectory(_ bundleURL: CFURL!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfTypeInDirectory(_ bundleURL: CFURL!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFArray!
func CFBundleCopyBundleLocalizations(_ bundle: CFBundle!) -> CFArray!
func CFBundleCopyPreferredLocalizationsFromArray(_ locArray: CFArray!) -> CFArray!
func CFBundleCopyLocalizationsForPreferences(_ locArray: CFArray!, _ prefArray: CFArray!) -> CFArray!
func CFBundleCopyResourceURLForLocalization(_ bundle: CFBundle!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!, _ localizationName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfTypeForLocalization(_ bundle: CFBundle!, _ resourceType: CFString!, _ subDirName: CFString!, _ localizationName: CFString!) -> CFArray!
func CFBundleCopyInfoDictionaryForURL(_ url: CFURL!) -> CFDictionary!
func CFBundleCopyLocalizationsForURL(_ url: CFURL!) -> CFArray!
@available(macOS 10.5, *)
func CFBundleCopyExecutableArchitecturesForURL(_ url: CFURL!) -> CFArray!
func CFBundleCopyExecutableURL(_ bundle: CFBundle!) -> CFURL!
var kCFBundleExecutableArchitectureI386: Int { get }
var kCFBundleExecutableArchitecturePPC: Int { get }
var kCFBundleExecutableArchitectureX86_64: Int { get }
var kCFBundleExecutableArchitecturePPC64: Int { get }
@available(macOS 11.0, *)
var kCFBundleExecutableArchitectureARM64: Int { get }
@available(macOS 10.5, *)
func CFBundleCopyExecutableArchitectures(_ bundle: CFBundle!) -> CFArray!
@available(macOS 10.5, *)
func CFBundlePreflightExecutable(_ bundle: CFBundle!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
@available(macOS 10.5, *)
func CFBundleLoadExecutableAndReturnError(_ bundle: CFBundle!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
func CFBundleLoadExecutable(_ bundle: CFBundle!) -> Bool
func CFBundleIsExecutableLoaded(_ bundle: CFBundle!) -> Bool
func CFBundleUnloadExecutable(_ bundle: CFBundle!)
func CFBundleGetFunctionPointerForName(_ bundle: CFBundle!, _ functionName: CFString!) -> UnsafeMutableRawPointer!
func CFBundleGetFunctionPointersForNames(_ bundle: CFBundle!, _ functionNames: CFArray!, _ ftbl: UnsafeMutablePointer<UnsafeMutableRawPointer?>!)
func CFBundleGetDataPointerForName(_ bundle: CFBundle!, _ symbolName: CFString!) -> UnsafeMutableRawPointer!
func CFBundleGetDataPointersForNames(_ bundle: CFBundle!, _ symbolNames: CFArray!, _ stbl: UnsafeMutablePointer<UnsafeMutableRawPointer?>!)
func CFBundleCopyAuxiliaryExecutableURL(_ bundle: CFBundle!, _ executableName: CFString!) -> CFURL!
@available(macOS 11.0, *)
func CFBundleIsExecutableLoadable(_ bundle: CFBundle!) -> Bool
@available(macOS 11.0, *)
func CFBundleIsExecutableLoadableForURL(_ url: CFURL!) -> Bool
@available(macOS 11.0, *)
func CFBundleIsArchitectureLoadable(_ arch: cpu_type_t) -> Bool
func CFBundleGetPlugIn(_ bundle: CFBundle!) -> CFPlugIn!
typealias CFBundleRefNum = Int32
@available(macOS, introduced: 10.0, deprecated: 10.15, message: "The Carbon Resource Manager is deprecated. This should only be used to access Resource Manager-style resources in old bundles.")
func CFBundleOpenBundleResourceMap(_ bundle: CFBundle!) -> CFBundleRefNum
@available(macOS, introduced: 10.0, deprecated: 10.15, message: "The Carbon Resource Manager is deprecated. This should only be used to access Resource Manager-style resources in old bundles.")
func CFBundleOpenBundleResourceFiles(_ bundle: CFBundle!, _ refNum: UnsafeMutablePointer<CFBundleRefNum>!, _ localizedRefNum: UnsafeMutablePointer<CFBundleRefNum>!) -> Int32
@available(macOS, introduced: 10.0, deprecated: 10.15, message: "The Carbon Resource Manager is deprecated. This should only be used to access Resource Manager-style resources in old bundles.")
func CFBundleCloseBundleResourceMap(_ bundle: CFBundle!, _ refNum: CFBundleRefNum)
