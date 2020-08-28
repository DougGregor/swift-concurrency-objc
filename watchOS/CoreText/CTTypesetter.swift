
class CTTypesetter : _CFObject {
}
@available(watchOS 2.0, *)
func CTTypesetterGetTypeID() -> CFTypeID
@available(watchOS 5.0, *)
let kCTTypesetterOptionAllowUnboundedLayout: CFString
@available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Deprecated")
let kCTTypesetterOptionDisableBidiProcessing: CFString
@available(watchOS 2.0, *)
let kCTTypesetterOptionForcedEmbeddingLevel: CFString
@available(watchOS 2.0, *)
func CTTypesetterCreateWithAttributedString(_ string: CFAttributedString) -> CTTypesetter
@available(watchOS 2.0, *)
func CTTypesetterCreateWithAttributedStringAndOptions(_ string: CFAttributedString, _ options: CFDictionary?) -> CTTypesetter?
@available(watchOS 2.0, *)
func CTTypesetterCreateLineWithOffset(_ typesetter: CTTypesetter, _ stringRange: CFRange, _ offset: Double) -> CTLine
@available(watchOS 2.0, *)
func CTTypesetterCreateLine(_ typesetter: CTTypesetter, _ stringRange: CFRange) -> CTLine
@available(watchOS 2.0, *)
func CTTypesetterSuggestLineBreakWithOffset(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
@available(watchOS 2.0, *)
func CTTypesetterSuggestLineBreak(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
@available(watchOS 2.0, *)
func CTTypesetterSuggestClusterBreakWithOffset(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
@available(watchOS 2.0, *)
func CTTypesetterSuggestClusterBreak(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
