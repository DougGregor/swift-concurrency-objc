
typealias DRFilesystemInclusionMask = UInt32
var DRFilesystemInclusionMaskISO9660: Int { get }
var DRFilesystemInclusionMaskJoliet: Int { get }
var DRFilesystemInclusionMaskUDF: Int { get }
var DRFilesystemInclusionMaskHFSPlus: Int { get }
class DRFSObject : NSObject {
  func isVirtual() -> Bool
  func sourcePath() -> String!
  func parent() -> DRFolder!
  func baseName() -> String!
  func setBaseName(_ baseName: String!)
  func specificName(forFilesystem filesystem: String!) -> String!
  func specificNames() -> [AnyHashable : Any]!
  func setSpecificName(_ name: String!, forFilesystem filesystem: String!)
  func setSpecificNames(_ specificNames: [AnyHashable : Any]!)
  func mangledName(forFilesystem filesystem: String!) -> String!
  func mangledNames() -> [AnyHashable : Any]!
  func property(forKey key: String!, inFilesystem filesystem: String!, mergeWithOtherFilesystems merge: Bool) -> Any!
  func properties(forFilesystem filesystem: String!, mergeWithOtherFilesystems merge: Bool) -> [AnyHashable : Any]!
  func setProperty(_ property: Any!, forKey key: String!, inFilesystem filesystem: String!)
  func setProperties(_ properties: [AnyHashable : Any]!, inFilesystem filesystem: String!)
  func explicitFilesystemMask() -> DRFilesystemInclusionMask
  func setExplicitFilesystemMask(_ mask: DRFilesystemInclusionMask)
  func effectiveFilesystemMask() -> DRFilesystemInclusionMask
}
@available(macOS 10.2, *)
let DRAllFilesystems: String
@available(macOS 10.2, *)
let DRISO9660: String
@available(macOS 10.2, *)
let DRISO9660LevelOne: String
@available(macOS 10.2, *)
let DRISO9660LevelTwo: String
@available(macOS 10.2, *)
let DRJoliet: String
@available(macOS 10.2, *)
let DRHFSPlus: String
@available(macOS 10.4, *)
let DRUDF: String
@available(macOS 10.2, *)
let DRISO9660VersionNumber: String
@available(macOS 10.2, *)
let DRInvisible: String
@available(macOS 10.2, *)
let DRCreationDate: String
@available(macOS 10.2, *)
let DRContentModificationDate: String
@available(macOS 10.2, *)
let DRAttributeModificationDate: String
@available(macOS 10.2, *)
let DRAccessDate: String
@available(macOS 10.2, *)
let DRBackupDate: String
@available(macOS 10.2, *)
let DREffectiveDate: String
@available(macOS 10.2, *)
let DRExpirationDate: String
@available(macOS 10.2, *)
let DRRecordingDate: String
@available(macOS 10.2, *)
let DRPosixFileMode: String
@available(macOS 10.2, *)
let DRPosixUID: String
@available(macOS 10.2, *)
let DRPosixGID: String
@available(macOS 10.2, *)
let DRHFSPlusTextEncodingHint: String
@available(macOS 10.2, *)
let DRHFSPlusCatalogNodeID: String
@available(macOS 10.2, *)
let DRMacFileType: String
@available(macOS 10.2, *)
let DRMacFileCreator: String
@available(macOS 10.2, *)
let DRMacWindowBounds: String
@available(macOS 10.2, *)
let DRMacIconLocation: String
@available(macOS 10.2, *)
let DRMacScrollPosition: String
@available(macOS 10.2, *)
let DRMacWindowView: String
@available(macOS 10.2, *)
let DRMacFinderFlags: String
@available(macOS 10.2, *)
let DRMacExtendedFinderFlags: String
@available(macOS 10.5, *)
let DRMacFinderHideExtension: String
@available(macOS 10.4, *)
let DRUDFWriteVersion: String
@available(macOS 10.4, *)
let DRUDFVersion102: String
@available(macOS 10.4, *)
let DRUDFVersion150: String
@available(macOS 10.4, *)
let DRUDFPrimaryVolumeDescriptorNumber: String
@available(macOS 10.4, *)
let DRUDFVolumeSequenceNumber: String
@available(macOS 10.4, *)
let DRUDFMaxVolumeSequenceNumber: String
@available(macOS 10.4, *)
let DRUDFInterchangeLevel: String
@available(macOS 10.4, *)
let DRUDFMaxInterchangeLevel: String
@available(macOS 10.4, *)
let DRUDFApplicationIdentifierSuffix: String
@available(macOS 10.4, *)
let DRUDFVolumeSetIdentifier: String
@available(macOS 10.4, *)
let DRUDFVolumeSetTimestamp: String
@available(macOS 10.4, *)
let DRUDFVolumeSetImplementationUse: String
@available(macOS 10.4, *)
let DRUDFRealTimeFile: String
@available(macOS 10.4, *)
let DRUDFExtendedFilePermissions: String
