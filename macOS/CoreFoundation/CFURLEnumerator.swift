
var __COREFOUNDATION_CFURLENUMERATOR__: Int32 { get }
class CFURLEnumerator : _CFObject {
}
@available(macOS 10.6, *)
func CFURLEnumeratorGetTypeID() -> CFTypeID
struct CFURLEnumeratorOptions : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var descendRecursively: CFURLEnumeratorOptions { get }
  static var skipInvisibles: CFURLEnumeratorOptions { get }
  static var generateFileReferenceURLs: CFURLEnumeratorOptions { get }
  static var skipPackageContents: CFURLEnumeratorOptions { get }
  static var includeDirectoriesPreOrder: CFURLEnumeratorOptions { get }
  static var includeDirectoriesPostOrder: CFURLEnumeratorOptions { get }
  @available(macOS 10.15, *)
  static var generateRelativePathURLs: CFURLEnumeratorOptions { get }
}
@available(macOS 10.6, *)
func CFURLEnumeratorCreateForDirectoryURL(_ alloc: CFAllocator!, _ directoryURL: CFURL!, _ option: CFURLEnumeratorOptions, _ propertyKeys: CFArray!) -> CFURLEnumerator!
@available(macOS 10.6, *)
func CFURLEnumeratorCreateForMountedVolumes(_ alloc: CFAllocator!, _ option: CFURLEnumeratorOptions, _ propertyKeys: CFArray!) -> CFURLEnumerator!
enum CFURLEnumeratorResult : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case success
  case end
  case error
  case directoryPostOrderSuccess
}
@available(macOS 10.6, *)
func CFURLEnumeratorGetNextURL(_ enumerator: CFURLEnumerator!, _ url: UnsafeMutablePointer<Unmanaged<CFURL>?>!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> CFURLEnumeratorResult
@available(macOS 10.6, *)
func CFURLEnumeratorSkipDescendents(_ enumerator: CFURLEnumerator!)
@available(macOS 10.6, *)
func CFURLEnumeratorGetDescendentLevel(_ enumerator: CFURLEnumerator!) -> CFIndex
