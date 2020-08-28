
class CTFramesetter : _CFObject {
}
@available(macOS 10.5, *)
func CTFramesetterGetTypeID() -> CFTypeID
@available(macOS 10.14, *)
func CTFramesetterCreateWithTypesetter(_ typesetter: CTTypesetter) -> CTFramesetter
@available(macOS 10.5, *)
func CTFramesetterCreateWithAttributedString(_ attrString: CFAttributedString) -> CTFramesetter
@available(macOS 10.5, *)
func CTFramesetterCreateFrame(_ framesetter: CTFramesetter, _ stringRange: CFRange, _ path: CGPath, _ frameAttributes: CFDictionary?) -> CTFrame
@available(macOS 10.5, *)
func CTFramesetterGetTypesetter(_ framesetter: CTFramesetter) -> CTTypesetter
@available(macOS 10.5, *)
func CTFramesetterSuggestFrameSizeWithConstraints(_ framesetter: CTFramesetter, _ stringRange: CFRange, _ frameAttributes: CFDictionary?, _ constraints: CGSize, _ fitRange: UnsafeMutablePointer<CFRange>?) -> CGSize
