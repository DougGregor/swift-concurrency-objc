
class CTFramesetter : _CFObject {
}
@available(tvOS 9.0, *)
func CTFramesetterGetTypeID() -> CFTypeID
@available(tvOS 12.0, *)
func CTFramesetterCreateWithTypesetter(_ typesetter: CTTypesetter) -> CTFramesetter
@available(tvOS 9.0, *)
func CTFramesetterCreateWithAttributedString(_ attrString: CFAttributedString) -> CTFramesetter
@available(tvOS 9.0, *)
func CTFramesetterCreateFrame(_ framesetter: CTFramesetter, _ stringRange: CFRange, _ path: CGPath, _ frameAttributes: CFDictionary?) -> CTFrame
@available(tvOS 9.0, *)
func CTFramesetterGetTypesetter(_ framesetter: CTFramesetter) -> CTTypesetter
@available(tvOS 9.0, *)
func CTFramesetterSuggestFrameSizeWithConstraints(_ framesetter: CTFramesetter, _ stringRange: CFRange, _ frameAttributes: CFDictionary?, _ constraints: CGSize, _ fitRange: UnsafeMutablePointer<CFRange>?) -> CGSize
