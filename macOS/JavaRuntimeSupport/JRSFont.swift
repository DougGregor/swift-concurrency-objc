
typealias JRSFontRenderingStyle = UInt32
func JRSFontGetRenderingStyleForHints(_ fmHint: Int32, _ aaHint: Int32) -> JRSFontRenderingStyle
func JRSFontAlignStyleForFractionalMeasurement(_ style: JRSFontRenderingStyle) -> JRSFontRenderingStyle
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is longer supported as it does not seem to be used in Java 7+. It may be removed in a future version of macOS.")
func JRSFontAlignStyleForIntegerMeasurement(_ style: JRSFontRenderingStyle) -> JRSFontRenderingStyle
func JRSFontStyleUsesFractionalMetrics(_ style: JRSFontRenderingStyle) -> Bool
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is longer supported as it does not seem to be used in Java 7+. It may be removed in a future version of macOS.")
func JRSFontStyleIsAntialiased(_ style: JRSFontRenderingStyle) -> Bool
func JRSFontGetRenderingStyleForContext(_ context: CGContext!) -> JRSFontRenderingStyle
func JRSFontSetRenderingStyleOnContext(_ context: CGContext!, _ style: JRSFontRenderingStyle)
func JRSFontCreateFallbackFontForCharacters(_ font: CTFont!, _ unichars: UnsafePointer<UTF16Char>!, _ length: CFIndex) -> Unmanaged<CTFont>!
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is longer supported as it does not seem to be used in Java 7+. It may be removed in a future version of macOS.")
func JRSFontGetAdvancesForGlyphsAndStyle(_ font: CTFont!, _ tx: UnsafePointer<CGAffineTransform>!, _ style: JRSFontRenderingStyle, _ glyphs: UnsafePointer<CGGlyph>!, _ count: Int, _ advances: UnsafeMutablePointer<CGSize>!) -> CGFloat
func JRSFontGetBoundingBoxesForGlyphsAndStyle(_ font: CTFont!, _ tx: UnsafePointer<CGAffineTransform>!, _ style: JRSFontRenderingStyle, _ glyphs: UnsafePointer<CGGlyph>!, _ count: Int, _ bboxes: UnsafeMutablePointer<CGRect>!) -> CGRect
