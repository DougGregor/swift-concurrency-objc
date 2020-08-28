
class CTFramesetter : _CFObject {
}
@available(iOS 3.2, *)
func CTFramesetterGetTypeID() -> CFTypeID
@available(iOS 12.0, *)
func CTFramesetterCreateWithTypesetter(_ typesetter: CTTypesetter) -> CTFramesetter
@available(iOS 3.2, *)
func CTFramesetterCreateWithAttributedString(_ attrString: CFAttributedString) -> CTFramesetter
@available(iOS 3.2, *)
func CTFramesetterCreateFrame(_ framesetter: CTFramesetter, _ stringRange: CFRange, _ path: CGPath, _ frameAttributes: CFDictionary?) -> CTFrame
@available(iOS 3.2, *)
func CTFramesetterGetTypesetter(_ framesetter: CTFramesetter) -> CTTypesetter
@available(iOS 3.2, *)
func CTFramesetterSuggestFrameSizeWithConstraints(_ framesetter: CTFramesetter, _ stringRange: CFRange, _ frameAttributes: CFDictionary?, _ constraints: CGSize, _ fitRange: UnsafeMutablePointer<CFRange>?) -> CGSize
