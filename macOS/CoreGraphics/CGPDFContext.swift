
extension CGContext {
  @available(macOS 10.0, *)
  /*not inherited*/ init?(consumer: CGDataConsumer, mediaBox: UnsafePointer<CGRect>?, _ auxiliaryInfo: CFDictionary?)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(_ url: CFURL, mediaBox: UnsafePointer<CGRect>?, _ auxiliaryInfo: CFDictionary?)
  @available(macOS 10.5, *)
  func closePDF()
  @available(macOS 10.4, *)
  func beginPDFPage(_ pageInfo: CFDictionary?)
  @available(macOS 10.4, *)
  func endPDFPage()
  @available(macOS 10.7, *)
  func addDocumentMetadata(_ metadata: CFData?)
  @available(macOS 10.4, *)
  func setURL(_ url: CFURL, for rect: CGRect)
  @available(macOS 10.4, *)
  func addDestination(_ name: CFString, at point: CGPoint)
  @available(macOS 10.4, *)
  func setDestination(_ name: CFString, for rect: CGRect)
}
@available(macOS 10.4, *)
let kCGPDFContextMediaBox: CFString
@available(macOS 10.4, *)
let kCGPDFContextCropBox: CFString
@available(macOS 10.4, *)
let kCGPDFContextBleedBox: CFString
@available(macOS 10.4, *)
let kCGPDFContextTrimBox: CFString
@available(macOS 10.4, *)
let kCGPDFContextArtBox: CFString
@available(macOS 10.4, *)
let kCGPDFContextTitle: CFString
@available(macOS 10.4, *)
let kCGPDFContextAuthor: CFString
@available(macOS 10.5, *)
let kCGPDFContextSubject: CFString
@available(macOS 10.5, *)
let kCGPDFContextKeywords: CFString
@available(macOS 10.4, *)
let kCGPDFContextCreator: CFString
@available(macOS 10.4, *)
let kCGPDFContextOwnerPassword: CFString
@available(macOS 10.4, *)
let kCGPDFContextUserPassword: CFString
@available(macOS 10.5, *)
let kCGPDFContextEncryptionKeyLength: CFString
@available(macOS 10.4, *)
let kCGPDFContextAllowsPrinting: CFString
@available(macOS 10.4, *)
let kCGPDFContextAllowsCopying: CFString
@available(macOS 10.4, *)
let kCGPDFContextOutputIntent: CFString
@available(macOS 10.4, *)
let kCGPDFXOutputIntentSubtype: CFString
@available(macOS 10.4, *)
let kCGPDFXOutputConditionIdentifier: CFString
@available(macOS 10.4, *)
let kCGPDFXOutputCondition: CFString
@available(macOS 10.4, *)
let kCGPDFXRegistryName: CFString
@available(macOS 10.4, *)
let kCGPDFXInfo: CFString
@available(macOS 10.4, *)
let kCGPDFXDestinationOutputProfile: CFString
@available(macOS 10.4, *)
let kCGPDFContextOutputIntents: CFString
@available(macOS 10.13, *)
let kCGPDFContextAccessPermissions: CFString
@available(macOS 10.13, *)
func CGPDFContextSetOutline(_ context: CGContext, _ outline: CFDictionary?)
@available(macOS 11.0, *)
let kCGPDFContextCreateLinearizedPDF: CFString
@available(macOS 11.0, *)
let kCGPDFContextCreatePDFA: CFString
@available(macOS 10.15, *)
enum CGPDFTagType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case document
  case part
  case art
  case section
  case div
  case blockQuote
  case caption
  case TOC
  case TOCI
  case index
  case nonStructure
  case `private`
  case paragraph
  case header
  case header1
  case header2
  case header3
  case header4
  case header5
  case header6
  case list
  case listItem
  case label
  case listBody
  case table
  case tableRow
  case tableHeaderCell
  case tableDataCell
  case tableHeader
  case tableBody
  case tableFooter
  case span
  case quote
  case note
  case reference
  case bibliography
  case code
  case link
  case annotation
  case ruby
  case rubyBaseText
  case rubyAnnotationText
  case rubyPunctuation
  case warichu
  case warichuText
  case warichuPunctiation
  case figure
  case formula
  case form
}
extension CGPDFTagType {
  @available(macOS 10.15, *)
  var name: UnsafePointer<CChar> { get }
}
struct CGPDFTagProperty : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: CFString)
  let rawValue: CFString
}
extension CGPDFTagProperty {
  @available(macOS 10.15, *)
  static let actualText: CGPDFTagProperty
  @available(macOS 10.15, *)
  static let alternativeText: CGPDFTagProperty
  @available(macOS 10.15, *)
  static let titleText: CGPDFTagProperty
  @available(macOS 10.15, *)
  static let languageText: CGPDFTagProperty
}
@available(macOS 10.15, *)
func CGPDFContextBeginTag(_ context: CGContext, _ tagType: CGPDFTagType, _ tagProperties: CFDictionary)
@available(macOS 10.15, *)
func CGPDFContextEndTag(_ context: CGContext)
