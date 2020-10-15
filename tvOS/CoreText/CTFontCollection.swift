
class CTFontCollection : _CFObject {
}
class CTMutableFontCollection : CTFontCollection, _CFObject {
}
@available(tvOS 9.0, *)
func CTFontCollectionGetTypeID() -> CFTypeID
typealias CTFontCollectionSortDescriptorsCallback = @convention(c) (CTFontDescriptor, CTFontDescriptor, UnsafeMutableRawPointer) -> CFComparisonResult
@available(tvOS 9.0, *)
let kCTFontCollectionRemoveDuplicatesOption: CFString
@available(tvOS 9.0, *)
func CTFontCollectionCreateFromAvailableFonts(_ options: CFDictionary?) -> CTFontCollection
@available(tvOS 9.0, *)
func CTFontCollectionCreateWithFontDescriptors(_ queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection
@available(tvOS 9.0, *)
func CTFontCollectionCreateCopyWithFontDescriptors(_ original: CTFontCollection, _ queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection
@available(tvOS 9.0, *)
func CTFontCollectionCreateMatchingFontDescriptors(_ collection: CTFontCollection) -> CFArray?
@available(tvOS 9.0, *)
func CTFontCollectionCreateMatchingFontDescriptorsSortedWithCallback(_ collection: CTFontCollection, _ sortCallback: CTFontCollectionSortDescriptorsCallback?, _ refCon: UnsafeMutableRawPointer?) -> CFArray?
@available(tvOS 12.0, *)
func CTFontCollectionCreateMatchingFontDescriptorsWithOptions(_ collection: CTFontCollection, _ options: CFDictionary?) -> CFArray?
struct CTFontCollectionCopyOptions : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var unique: CTFontCollectionCopyOptions { get }
  static var standardSort: CTFontCollectionCopyOptions { get }
}
