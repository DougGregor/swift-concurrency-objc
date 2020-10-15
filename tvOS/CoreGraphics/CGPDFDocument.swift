
class CGPDFDocument : _CFObject {
}
struct CGPDFAccessPermissions : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var allowsLowQualityPrinting: CGPDFAccessPermissions { get }
  static var allowsHighQualityPrinting: CGPDFAccessPermissions { get }
  static var allowsDocumentChanges: CGPDFAccessPermissions { get }
  static var allowsDocumentAssembly: CGPDFAccessPermissions { get }
  static var allowsContentCopying: CGPDFAccessPermissions { get }
  static var allowsContentAccessibility: CGPDFAccessPermissions { get }
  static var allowsCommenting: CGPDFAccessPermissions { get }
  static var allowsFormFieldEntry: CGPDFAccessPermissions { get }
}
@available(tvOS 11.0, *)
let kCGPDFOutlineTitle: CFString
@available(tvOS 11.0, *)
let kCGPDFOutlineChildren: CFString
@available(tvOS 11.0, *)
let kCGPDFOutlineDestination: CFString
@available(tvOS 11.0, *)
let kCGPDFOutlineDestinationRect: CFString
extension CGPDFDocument {
  @available(tvOS 2.0, *)
  /*not inherited*/ init?(_ provider: CGDataProvider)
  @available(tvOS 2.0, *)
  /*not inherited*/ init?(_ url: CFURL)
  @available(tvOS 2.0, *)
  func getVersion(majorVersion: UnsafeMutablePointer<Int32>, minorVersion: UnsafeMutablePointer<Int32>)
  @available(tvOS 2.0, *)
  var isEncrypted: Bool { get }
  @available(tvOS 2.0, *)
  func unlockWithPassword(_ password: UnsafePointer<CChar>) -> Bool
  @available(tvOS 2.0, *)
  var isUnlocked: Bool { get }
  @available(tvOS 2.0, *)
  var allowsPrinting: Bool { get }
  @available(tvOS 2.0, *)
  var allowsCopying: Bool { get }
  @available(tvOS 2.0, *)
  var numberOfPages: Int { get }
  @available(tvOS 2.0, *)
  func page(at pageNumber: Int) -> CGPDFPage?
  @available(tvOS 2.0, *)
  var catalog: CGPDFDictionaryRef? { get }
  @available(tvOS 2.0, *)
  var info: CGPDFDictionaryRef? { get }
  @available(tvOS 2.0, *)
  var fileIdentifier: CGPDFArrayRef? { get }
  @available(tvOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(tvOS 11.0, *)
  var outline: CFDictionary? { get }
  @available(tvOS 11.0, *)
  var accessPermissions: CGPDFAccessPermissions { get }
}
