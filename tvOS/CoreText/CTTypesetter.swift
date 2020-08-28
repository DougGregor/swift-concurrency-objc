
class CTTypesetter : _CFObject {
}
@available(tvOS 9.0, *)
func CTTypesetterGetTypeID() -> CFTypeID
@available(tvOS 12.0, *)
let kCTTypesetterOptionAllowUnboundedLayout: CFString
@available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Deprecated")
let kCTTypesetterOptionDisableBidiProcessing: CFString
@available(tvOS 9.0, *)
let kCTTypesetterOptionForcedEmbeddingLevel: CFString
@available(tvOS 9.0, *)
func CTTypesetterCreateWithAttributedString(_ string: CFAttributedString) -> CTTypesetter
@available(tvOS 9.0, *)
func CTTypesetterCreateWithAttributedStringAndOptions(_ string: CFAttributedString, _ options: CFDictionary?) -> CTTypesetter?
@available(tvOS 9.0, *)
func CTTypesetterCreateLineWithOffset(_ typesetter: CTTypesetter, _ stringRange: CFRange, _ offset: Double) -> CTLine
@available(tvOS 9.0, *)
func CTTypesetterCreateLine(_ typesetter: CTTypesetter, _ stringRange: CFRange) -> CTLine
@available(tvOS 9.0, *)
func CTTypesetterSuggestLineBreakWithOffset(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
@available(tvOS 9.0, *)
func CTTypesetterSuggestLineBreak(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
@available(tvOS 9.0, *)
func CTTypesetterSuggestClusterBreakWithOffset(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
@available(tvOS 9.0, *)
func CTTypesetterSuggestClusterBreak(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
