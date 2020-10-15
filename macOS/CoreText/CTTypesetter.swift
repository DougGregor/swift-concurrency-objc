
class CTTypesetter : _CFObject {
}
@available(macOS 10.5, *)
func CTTypesetterGetTypeID() -> CFTypeID
@available(macOS 10.14, *)
let kCTTypesetterOptionAllowUnboundedLayout: CFString
@available(macOS 10.5, *)
let kCTTypesetterOptionForcedEmbeddingLevel: CFString
@available(macOS 10.5, *)
func CTTypesetterCreateWithAttributedString(_ string: CFAttributedString) -> CTTypesetter
@available(macOS 10.5, *)
func CTTypesetterCreateWithAttributedStringAndOptions(_ string: CFAttributedString, _ options: CFDictionary?) -> CTTypesetter?
@available(macOS 10.6, *)
func CTTypesetterCreateLineWithOffset(_ typesetter: CTTypesetter, _ stringRange: CFRange, _ offset: Double) -> CTLine
@available(macOS 10.5, *)
func CTTypesetterCreateLine(_ typesetter: CTTypesetter, _ stringRange: CFRange) -> CTLine
@available(macOS 10.6, *)
func CTTypesetterSuggestLineBreakWithOffset(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
@available(macOS 10.5, *)
func CTTypesetterSuggestLineBreak(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
@available(macOS 10.6, *)
func CTTypesetterSuggestClusterBreakWithOffset(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
@available(macOS 10.5, *)
func CTTypesetterSuggestClusterBreak(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
