
class CTRubyAnnotation : _CFObject {
}
@available(tvOS 9.0, *)
func CTRubyAnnotationGetTypeID() -> CFTypeID
@available(tvOS 9.0, *)
enum CTRubyAlignment : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case invalid
  case auto
  case start
  case center
  case end
  case distributeLetter
  case distributeSpace
  case lineEdge
}
@available(tvOS 9.0, *)
enum CTRubyOverhang : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case invalid
  case auto
  case start
  case end
  case none
}
@available(tvOS 9.0, *)
enum CTRubyPosition : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case before
  case after
  case interCharacter
  case inline
  case count
}
@available(tvOS 9.0, *)
func CTRubyAnnotationCreate(_ alignment: CTRubyAlignment, _ overhang: CTRubyOverhang, _ sizeFactor: CGFloat, _ text: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CTRubyAnnotation
@available(tvOS 10.0, *)
let kCTRubyAnnotationSizeFactorAttributeName: CFString
@available(tvOS 10.0, *)
let kCTRubyAnnotationScaleToFitAttributeName: CFString
@available(tvOS 10.0, *)
func CTRubyAnnotationCreateWithAttributes(_ alignment: CTRubyAlignment, _ overhang: CTRubyOverhang, _ position: CTRubyPosition, _ string: CFString, _ attributes: CFDictionary) -> CTRubyAnnotation
@available(tvOS 9.0, *)
func CTRubyAnnotationCreateCopy(_ rubyAnnotation: CTRubyAnnotation) -> CTRubyAnnotation
@available(tvOS 9.0, *)
func CTRubyAnnotationGetAlignment(_ rubyAnnotation: CTRubyAnnotation) -> CTRubyAlignment
@available(tvOS 9.0, *)
func CTRubyAnnotationGetOverhang(_ rubyAnnotation: CTRubyAnnotation) -> CTRubyOverhang
@available(tvOS 9.0, *)
func CTRubyAnnotationGetSizeFactor(_ rubyAnnotation: CTRubyAnnotation) -> CGFloat
@available(tvOS 9.0, *)
func CTRubyAnnotationGetTextForPosition(_ rubyAnnotation: CTRubyAnnotation, _ position: CTRubyPosition) -> CFString?
