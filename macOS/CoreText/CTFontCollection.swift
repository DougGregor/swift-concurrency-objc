
class CTFontCollection : _CFObject {
}
class CTMutableFontCollection : CTFontCollection, _CFObject {
}
@available(macOS 10.5, *)
func CTFontCollectionGetTypeID() -> CFTypeID
typealias CTFontCollectionSortDescriptorsCallback = @convention(c) (CTFontDescriptor, CTFontDescriptor, UnsafeMutableRawPointer) -> CFComparisonResult
@available(macOS 10.5, *)
let kCTFontCollectionRemoveDuplicatesOption: CFString
@available(macOS 10.7, *)
let kCTFontCollectionIncludeDisabledFontsOption: CFString
@available(macOS 10.7, *)
let kCTFontCollectionDisallowAutoActivationOption: CFString
@available(macOS 10.5, *)
func CTFontCollectionCreateFromAvailableFonts(_ options: CFDictionary?) -> CTFontCollection
@available(macOS 10.5, *)
func CTFontCollectionCreateWithFontDescriptors(_ queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection
@available(macOS 10.5, *)
func CTFontCollectionCreateCopyWithFontDescriptors(_ original: CTFontCollection, _ queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection
@available(macOS 10.7, *)
func CTFontCollectionCreateMutableCopy(_ original: CTFontCollection) -> CTMutableFontCollection
@available(macOS 10.7, *)
func CTFontCollectionCopyQueryDescriptors(_ collection: CTFontCollection) -> CFArray?
@available(macOS 10.7, *)
func CTFontCollectionSetQueryDescriptors(_ collection: CTMutableFontCollection, _ descriptors: CFArray?)
@available(macOS 10.7, *)
func CTFontCollectionCopyExclusionDescriptors(_ collection: CTFontCollection) -> CFArray?
@available(macOS 10.7, *)
func CTFontCollectionSetExclusionDescriptors(_ collection: CTMutableFontCollection, _ descriptors: CFArray?)
@available(macOS 10.5, *)
func CTFontCollectionCreateMatchingFontDescriptors(_ collection: CTFontCollection) -> CFArray?
@available(macOS 10.5, *)
func CTFontCollectionCreateMatchingFontDescriptorsSortedWithCallback(_ collection: CTFontCollection, _ sortCallback: CTFontCollectionSortDescriptorsCallback?, _ refCon: UnsafeMutableRawPointer?) -> CFArray?
@available(macOS 10.7, *)
func CTFontCollectionCreateMatchingFontDescriptorsWithOptions(_ collection: CTFontCollection, _ options: CFDictionary?) -> CFArray?
@available(macOS 10.7, *)
func CTFontCollectionCreateMatchingFontDescriptorsForFamily(_ collection: CTFontCollection, _ familyName: CFString, _ options: CFDictionary?) -> CFArray?
@available(macOS 10.7, *)
struct CTFontCollectionCopyOptions : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var unique: CTFontCollectionCopyOptions { get }
  static var standardSort: CTFontCollectionCopyOptions { get }
}
@available(macOS 10.7, *)
func CTFontCollectionCopyFontAttribute(_ collection: CTFontCollection, _ attributeName: CFString, _ options: CTFontCollectionCopyOptions) -> CFArray
@available(macOS 10.7, *)
func CTFontCollectionCopyFontAttributes(_ collection: CTFontCollection, _ attributeNames: CFSet, _ options: CTFontCollectionCopyOptions) -> CFArray
