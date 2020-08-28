
class CTFramesetter : _CFObject {
}
@available(watchOS 2.0, *)
func CTFramesetterGetTypeID() -> CFTypeID
@available(watchOS 5.0, *)
func CTFramesetterCreateWithTypesetter(_ typesetter: CTTypesetter) -> CTFramesetter
@available(watchOS 2.0, *)
func CTFramesetterCreateWithAttributedString(_ attrString: CFAttributedString) -> CTFramesetter
@available(watchOS 2.0, *)
func CTFramesetterCreateFrame(_ framesetter: CTFramesetter, _ stringRange: CFRange, _ path: CGPath, _ frameAttributes: CFDictionary?) -> CTFrame
@available(watchOS 2.0, *)
func CTFramesetterGetTypesetter(_ framesetter: CTFramesetter) -> CTTypesetter
@available(watchOS 2.0, *)
func CTFramesetterSuggestFrameSizeWithConstraints(_ framesetter: CTFramesetter, _ stringRange: CFRange, _ frameAttributes: CFDictionary?, _ constraints: CGSize, _ fitRange: UnsafeMutablePointer<CFRange>?) -> CGSize
