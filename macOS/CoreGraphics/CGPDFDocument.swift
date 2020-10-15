
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
@available(macOS 10.13, *)
let kCGPDFOutlineTitle: CFString
@available(macOS 10.13, *)
let kCGPDFOutlineChildren: CFString
@available(macOS 10.13, *)
let kCGPDFOutlineDestination: CFString
@available(macOS 10.13, *)
let kCGPDFOutlineDestinationRect: CFString
extension CGPDFDocument {
  @available(macOS 10.0, *)
  /*not inherited*/ init?(_ provider: CGDataProvider)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(_ url: CFURL)
  @available(macOS 10.3, *)
  func getVersion(majorVersion: UnsafeMutablePointer<Int32>, minorVersion: UnsafeMutablePointer<Int32>)
  @available(macOS 10.2, *)
  var isEncrypted: Bool { get }
  @available(macOS 10.2, *)
  func unlockWithPassword(_ password: UnsafePointer<CChar>) -> Bool
  @available(macOS 10.2, *)
  var isUnlocked: Bool { get }
  @available(macOS 10.2, *)
  var allowsPrinting: Bool { get }
  @available(macOS 10.2, *)
  var allowsCopying: Bool { get }
  @available(macOS 10.0, *)
  var numberOfPages: Int { get }
  @available(macOS 10.3, *)
  func page(at pageNumber: Int) -> CGPDFPage?
  @available(macOS 10.3, *)
  var catalog: CGPDFDictionaryRef? { get }
  @available(macOS 10.4, *)
  var info: CGPDFDictionaryRef? { get }
  @available(macOS 10.4, *)
  var fileIdentifier: CGPDFArrayRef? { get }
  @available(macOS 10.2, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.13, *)
  var outline: CFDictionary? { get }
  @available(macOS 10.13, *)
  var accessPermissions: CGPDFAccessPermissions { get }
}
