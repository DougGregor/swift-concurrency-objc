
class CGContext : _CFObject {
}

extension CGContext {
  func setLineDash(phase: CGFloat, lengths: [CGFloat])
  func move(to point: CGPoint)
  func addLine(to point: CGPoint)
  func addCurve(to end: CGPoint, control1: CGPoint, control2: CGPoint)
  func addQuadCurve(to end: CGPoint, control: CGPoint)
  func addRects(_ rects: [CGRect])
  func addLines(between points: [CGPoint])
  func addArc(center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func addArc(tangent1End: CGPoint, tangent2End: CGPoint, radius: CGFloat)
  func fillPath(using rule: CGPathFillRule = .winding)
  func clip(using rule: CGPathFillRule = .winding)
  func fill(_ rects: [CGRect])
  func strokeLineSegments(between points: [CGPoint])
  func clip(to rects: [CGRect])
  func draw(_ image: CGImage, in rect: CGRect, byTiling: Bool = false)
  var textPosition: CGPoint
  func showGlyphs(_ glyphs: [CGGlyph], at positions: [CGPoint])
}

extension CGContext {
  func draw(_ layer: CGLayer, in rect: CGRect)
  func draw(_ layer: CGLayer, at point: CGPoint)
}
enum CGPathDrawingMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case fill
  case eoFill
  case stroke
  case fillStroke
  case eoFillStroke
}
enum CGTextDrawingMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case fill
  case stroke
  case fillStroke
  case invisible
  case fillClip
  case strokeClip
  case fillStrokeClip
  case clip
}
@available(watchOS, introduced: 2.0, deprecated: 2.0, message: "No longer supported")
enum CGTextEncoding : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case encodingFontSpecific
  case encodingMacRoman
}
enum CGInterpolationQuality : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case `default`
  case none
  case low
  case medium
  case high
}
enum CGBlendMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case normal
  case multiply
  case screen
  case overlay
  case darken
  case lighten
  case colorDodge
  case colorBurn
  case softLight
  case hardLight
  case difference
  case exclusion
  case hue
  case saturation
  case color
  case luminosity
  case clear
  case copy
  case sourceIn
  case sourceOut
  case sourceAtop
  case destinationOver
  case destinationIn
  case destinationOut
  case destinationAtop
  case xor
  case plusDarker
  case plusLighter
}
extension CGContext {
  @available(watchOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(watchOS 2.0, *)
  func saveGState()
  @available(watchOS 2.0, *)
  func restoreGState()
  @available(watchOS 2.0, *)
  func scaleBy(x sx: CGFloat, y sy: CGFloat)
  @available(watchOS 2.0, *)
  func translateBy(x tx: CGFloat, y ty: CGFloat)
  @available(watchOS 2.0, *)
  func rotate(by angle: CGFloat)
  @available(watchOS 2.0, *)
  func concatenate(_ transform: CGAffineTransform)
  @available(watchOS 2.0, *)
  var ctm: CGAffineTransform { get }
  @available(watchOS 2.0, *)
  func setLineWidth(_ width: CGFloat)
  @available(watchOS 2.0, *)
  func setLineCap(_ cap: CGLineCap)
  @available(watchOS 2.0, *)
  func setLineJoin(_ join: CGLineJoin)
  @available(watchOS 2.0, *)
  func setMiterLimit(_ limit: CGFloat)
  @available(watchOS 2.0, *)
  func __setLineDash(phase: CGFloat, lengths: UnsafePointer<CGFloat>?, count: Int)
  @available(watchOS 2.0, *)
  func setFlatness(_ flatness: CGFloat)
  @available(watchOS 2.0, *)
  func setAlpha(_ alpha: CGFloat)
  @available(watchOS 2.0, *)
  func setBlendMode(_ mode: CGBlendMode)
  @available(watchOS 2.0, *)
  func beginPath()
  @available(watchOS 2.0, *)
  func __moveTo(x: CGFloat, y: CGFloat)
  @available(watchOS 2.0, *)
  func __addLineTo(x: CGFloat, y: CGFloat)
  @available(watchOS 2.0, *)
  func __addCurveTo(cp1x: CGFloat, cp1y: CGFloat, cp2x: CGFloat, cp2y: CGFloat, endingAtX x: CGFloat, y: CGFloat)
  @available(watchOS 2.0, *)
  func __addQuadCurveTo(cpx: CGFloat, cpy: CGFloat, endingAtX x: CGFloat, y: CGFloat)
  @available(watchOS 2.0, *)
  func closePath()
  @available(watchOS 2.0, *)
  func addRect(_ rect: CGRect)
  @available(watchOS 2.0, *)
  func __addRects(_ rects: UnsafePointer<CGRect>?, count: Int)
  @available(watchOS 2.0, *)
  func __addLines(between points: UnsafePointer<CGPoint>?, count: Int)
  @available(watchOS 2.0, *)
  func addEllipse(in rect: CGRect)
  @available(watchOS 2.0, *)
  func __addArc(centerX x: CGFloat, y: CGFloat, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Int32)
  @available(watchOS 2.0, *)
  func __addArc(x1: CGFloat, y1: CGFloat, x2: CGFloat, y2: CGFloat, radius: CGFloat)
  @available(watchOS 2.0, *)
  func addPath(_ path: CGPath)
  @available(watchOS 2.0, *)
  func replacePathWithStrokedPath()
  @available(watchOS 2.0, *)
  var isPathEmpty: Bool { get }
  @available(watchOS 2.0, *)
  var currentPointOfPath: CGPoint { get }
  @available(watchOS 2.0, *)
  var boundingBoxOfPath: CGRect { get }
  @available(watchOS 2.0, *)
  var path: CGPath? { get }
  @available(watchOS 2.0, *)
  func pathContains(_ point: CGPoint, mode: CGPathDrawingMode) -> Bool
  @available(watchOS 2.0, *)
  func drawPath(using mode: CGPathDrawingMode)
  @available(watchOS 2.0, *)
  func __fillPath()
  @available(watchOS 2.0, *)
  func __eoFillPath()
  @available(watchOS 2.0, *)
  func strokePath()
  @available(watchOS 2.0, *)
  func fill(_ rect: CGRect)
  @available(watchOS 2.0, *)
  func __fill(_ rects: UnsafePointer<CGRect>?, count: Int)
  @available(watchOS 2.0, *)
  func stroke(_ rect: CGRect)
  @available(watchOS 2.0, *)
  func stroke(_ rect: CGRect, width: CGFloat)
  @available(watchOS 2.0, *)
  func clear(_ rect: CGRect)
  @available(watchOS 2.0, *)
  func fillEllipse(in rect: CGRect)
  @available(watchOS 2.0, *)
  func strokeEllipse(in rect: CGRect)
  @available(watchOS 2.0, *)
  func __strokeLineSegments(between points: UnsafePointer<CGPoint>?, count: Int)
  @available(watchOS 2.0, *)
  func __clip()
  @available(watchOS 2.0, *)
  func __eoClip()
  func resetClip()
  @available(watchOS 2.0, *)
  func clip(to rect: CGRect, mask: CGImage)
  @available(watchOS 2.0, *)
  var boundingBoxOfClipPath: CGRect { get }
  @available(watchOS 2.0, *)
  func clip(to rect: CGRect)
  @available(watchOS 2.0, *)
  func __clip(to rects: UnsafePointer<CGRect>, count: Int)
  @available(watchOS 2.0, *)
  func setFillColor(_ color: CGColor)
  @available(watchOS 2.0, *)
  func setStrokeColor(_ color: CGColor)
  @available(watchOS 2.0, *)
  func setFillColorSpace(_ space: CGColorSpace)
  @available(watchOS 2.0, *)
  func setStrokeColorSpace(_ space: CGColorSpace)
  @available(watchOS 2.0, *)
  func setFillColor(_ components: UnsafePointer<CGFloat>)
  @available(watchOS 2.0, *)
  func setStrokeColor(_ components: UnsafePointer<CGFloat>)
  @available(watchOS 2.0, *)
  func setFillPattern(_ pattern: CGPattern, colorComponents components: UnsafePointer<CGFloat>)
  @available(watchOS 2.0, *)
  func setStrokePattern(_ pattern: CGPattern, colorComponents components: UnsafePointer<CGFloat>)
  @available(watchOS 2.0, *)
  func setPatternPhase(_ phase: CGSize)
  @available(watchOS 2.0, *)
  func setFillColor(gray: CGFloat, alpha: CGFloat)
  @available(watchOS 2.0, *)
  func setStrokeColor(gray: CGFloat, alpha: CGFloat)
  @available(watchOS 2.0, *)
  func setFillColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(watchOS 2.0, *)
  func setStrokeColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(watchOS 2.0, *)
  func setFillColor(cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat)
  @available(watchOS 2.0, *)
  func setStrokeColor(cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat)
  @available(watchOS 2.0, *)
  func setRenderingIntent(_ intent: CGColorRenderingIntent)
  @available(watchOS 2.0, *)
  func __draw(in rect: CGRect, image: CGImage)
  @available(watchOS 2.0, *)
  func __draw(in rect: CGRect, byTiling image: CGImage)
  @available(watchOS 2.0, *)
  var interpolationQuality: CGInterpolationQuality
  @available(watchOS 2.0, *)
  func setShadow(offset: CGSize, blur: CGFloat, color: CGColor?)
  @available(watchOS 2.0, *)
  func setShadow(offset: CGSize, blur: CGFloat)
  @available(watchOS 2.0, *)
  func drawLinearGradient(_ gradient: CGGradient, start startPoint: CGPoint, end endPoint: CGPoint, options: CGGradientDrawingOptions)
  @available(watchOS 2.0, *)
  func drawRadialGradient(_ gradient: CGGradient, startCenter: CGPoint, startRadius: CGFloat, endCenter: CGPoint, endRadius: CGFloat, options: CGGradientDrawingOptions)
  @available(watchOS 2.0, *)
  func drawShading(_ shading: CGShading)
  @available(watchOS 2.0, *)
  func setCharacterSpacing(_ spacing: CGFloat)
  @available(watchOS 2.0, *)
  func __setTextPosition(x: CGFloat, y: CGFloat)
  @available(watchOS 2.0, *)
  var __textPosition: CGPoint { get }
  @available(watchOS 2.0, *)
  var textMatrix: CGAffineTransform
  @available(watchOS 2.0, *)
  func setTextDrawingMode(_ mode: CGTextDrawingMode)
  @available(watchOS 2.0, *)
  func setFont(_ font: CGFont)
  @available(watchOS 2.0, *)
  func setFontSize(_ size: CGFloat)
  @available(watchOS 2.0, *)
  func __showGlyphs(_ glyphs: UnsafePointer<CGGlyph>, atPositions Lpositions: UnsafePointer<CGPoint>, count: Int)
  @available(watchOS 2.0, *)
  func drawPDFPage(_ page: CGPDFPage)
  @available(watchOS 2.0, *)
  func beginPage(mediaBox: UnsafePointer<CGRect>?)
  @available(watchOS 2.0, *)
  func endPage()
  @available(watchOS 2.0, *)
  func flush()
  @available(watchOS 2.0, *)
  func synchronize()
  @available(watchOS 2.0, *)
  func setShouldAntialias(_ shouldAntialias: Bool)
  @available(watchOS 2.0, *)
  func setAllowsAntialiasing(_ allowsAntialiasing: Bool)
  @available(watchOS 2.0, *)
  func setShouldSmoothFonts(_ shouldSmoothFonts: Bool)
  @available(watchOS 2.0, *)
  func setAllowsFontSmoothing(_ allowsFontSmoothing: Bool)
  @available(watchOS 2.0, *)
  func setShouldSubpixelPositionFonts(_ shouldSubpixelPositionFonts: Bool)
  @available(watchOS 2.0, *)
  func setAllowsFontSubpixelPositioning(_ allowsFontSubpixelPositioning: Bool)
  @available(watchOS 2.0, *)
  func setShouldSubpixelQuantizeFonts(_ shouldSubpixelQuantizeFonts: Bool)
  @available(watchOS 2.0, *)
  func setAllowsFontSubpixelQuantization(_ allowsFontSubpixelQuantization: Bool)
  @available(watchOS 2.0, *)
  func beginTransparencyLayer(auxiliaryInfo: CFDictionary?)
  @available(watchOS 2.0, *)
  func beginTransparencyLayer(in rect: CGRect, auxiliaryInfo auxInfo: CFDictionary?)
  @available(watchOS 2.0, *)
  func endTransparencyLayer()
  @available(watchOS 2.0, *)
  var userSpaceToDeviceSpaceTransform: CGAffineTransform { get }
  @available(watchOS 2.0, *)
  func convertToDeviceSpace(_ point: CGPoint) -> CGPoint
  @available(watchOS 2.0, *)
  func convertToUserSpace(_ point: CGPoint) -> CGPoint
  @available(watchOS 2.0, *)
  func convertToDeviceSpace(_ size: CGSize) -> CGSize
  @available(watchOS 2.0, *)
  func convertToUserSpace(_ size: CGSize) -> CGSize
  @available(watchOS 2.0, *)
  func convertToDeviceSpace(_ rect: CGRect) -> CGRect
  @available(watchOS 2.0, *)
  func convertToUserSpace(_ rect: CGRect) -> CGRect
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "No longer supported")
  func selectFont(name: UnsafePointer<CChar>, size: CGFloat, textEncoding: CGTextEncoding)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "No longer supported")
  func showText(string: UnsafePointer<CChar>, length: Int)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "No longer supported")
  func showTextAtPoint(x: CGFloat, y: CGFloat, string: UnsafePointer<CChar>, length: Int)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "No longer supported")
  func showGlyphs(g: UnsafePointer<CGGlyph>?, count: Int)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "No longer supported")
  func showGlyphsAtPoint(x: CGFloat, y: CGFloat, glyphs: UnsafePointer<CGGlyph>?, count: Int)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "No longer supported")
  func showGlyphsWithAdvances(glyphs: UnsafePointer<CGGlyph>?, advances: UnsafePointer<CGSize>?, count: Int)
}
