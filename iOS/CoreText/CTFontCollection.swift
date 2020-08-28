
class CTFontCollection : _CFObject {
}
class CTMutableFontCollection : CTFontCollection, _CFObject {
}
@available(iOS 3.2, *)
func CTFontCollectionGetTypeID() -> CFTypeID
typealias CTFontCollectionSortDescriptorsCallback = @convention(c) (CTFontDescriptor, CTFontDescriptor, UnsafeMutableRawPointer) -> CFComparisonResult
@available(iOS 3.2, *)
let kCTFontCollectionRemoveDuplicatesOption: CFString
@available(iOS 3.2, *)
func CTFontCollectionCreateFromAvailableFonts(_ options: CFDictionary?) -> CTFontCollection
@available(iOS 3.2, *)
func CTFontCollectionCreateWithFontDescriptors(_ queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection
@available(iOS 3.2, *)
func CTFontCollectionCreateCopyWithFontDescriptors(_ original: CTFontCollection, _ queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection
@available(iOS 3.2, *)
func CTFontCollectionCreateMatchingFontDescriptors(_ collection: CTFontCollection) -> CFArray?
@available(iOS 3.2, *)
func CTFontCollectionCreateMatchingFontDescriptorsSortedWithCallback(_ collection: CTFontCollection, _ sortCallback: CTFontCollectionSortDescriptorsCallback?, _ refCon: UnsafeMutableRawPointer?) -> CFArray?
@available(iOS 12.0, *)
func CTFontCollectionCreateMatchingFontDescriptorsWithOptions(_ collection: CTFontCollection, _ options: CFDictionary?) -> CFArray?
struct CTFontCollectionCopyOptions : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var unique: CTFontCollectionCopyOptions { get }
  static var standardSort: CTFontCollectionCopyOptions { get }
}
