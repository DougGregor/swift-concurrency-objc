
var kDADiskMountOptionDefault: Int { get }
var kDADiskMountOptionWhole: Int { get }
typealias DADiskMountOptions = UInt32
var kDADiskRenameOptionDefault: Int { get }
typealias DADiskRenameOptions = UInt32
var kDADiskUnmountOptionDefault: Int { get }
var kDADiskUnmountOptionForce: Int { get }
var kDADiskUnmountOptionWhole: Int { get }
typealias DADiskUnmountOptions = UInt32
var kDADiskEjectOptionDefault: Int { get }
typealias DADiskEjectOptions = UInt32
var kDADiskClaimOptionDefault: Int { get }
typealias DADiskClaimOptions = UInt32
var kDADiskOptionDefault: Int { get }
typealias DADiskOptions = UInt32
var kDADiskDescriptionMatchMediaUnformatted: Unmanaged<CFDictionary>
var kDADiskDescriptionMatchMediaWhole: Unmanaged<CFDictionary>
var kDADiskDescriptionMatchVolumeMountable: Unmanaged<CFDictionary>
var kDADiskDescriptionMatchVolumeUnrecognized: Unmanaged<CFDictionary>
var kDADiskDescriptionWatchVolumeName: Unmanaged<CFArray>
var kDADiskDescriptionWatchVolumePath: Unmanaged<CFArray>
typealias DADiskAppearedCallback = @convention(c) (DADisk, UnsafeMutableRawPointer?) -> Void
func DARegisterDiskAppearedCallback(_ session: DASession, _ match: CFDictionary?, _ callback: DADiskAppearedCallback, _ context: UnsafeMutableRawPointer?)
typealias DADiskDescriptionChangedCallback = @convention(c) (DADisk, CFArray, UnsafeMutableRawPointer?) -> Void
func DARegisterDiskDescriptionChangedCallback(_ session: DASession, _ match: CFDictionary?, _ watch: CFArray?, _ callback: DADiskDescriptionChangedCallback, _ context: UnsafeMutableRawPointer?)
typealias DADiskDisappearedCallback = @convention(c) (DADisk, UnsafeMutableRawPointer?) -> Void
func DARegisterDiskDisappearedCallback(_ session: DASession, _ match: CFDictionary?, _ callback: DADiskDisappearedCallback, _ context: UnsafeMutableRawPointer?)
typealias DADiskMountCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutableRawPointer?) -> Void
func DADiskMount(_ disk: DADisk, _ path: CFURL?, _ options: DADiskMountOptions, _ callback: DADiskMountCallback?, _ context: UnsafeMutableRawPointer?)
func DADiskMountWithArguments(_ disk: DADisk, _ path: CFURL?, _ options: DADiskMountOptions, _ callback: DADiskMountCallback?, _ context: UnsafeMutableRawPointer?, _ arguments: UnsafeMutablePointer<Unmanaged<CFString>?>?)
typealias DADiskMountApprovalCallback = @convention(c) (DADisk, UnsafeMutableRawPointer?) -> Unmanaged<DADissenter>?
func DARegisterDiskMountApprovalCallback(_ session: DASession, _ match: CFDictionary?, _ callback: DADiskMountApprovalCallback, _ context: UnsafeMutableRawPointer?)
typealias DADiskRenameCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutableRawPointer?) -> Void
func DADiskRename(_ disk: DADisk, _ name: CFString, _ options: DADiskRenameOptions, _ callback: DADiskRenameCallback?, _ context: UnsafeMutableRawPointer?)
typealias DADiskUnmountCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutableRawPointer?) -> Void
func DADiskUnmount(_ disk: DADisk, _ options: DADiskUnmountOptions, _ callback: DADiskUnmountCallback?, _ context: UnsafeMutableRawPointer?)
typealias DADiskUnmountApprovalCallback = @convention(c) (DADisk, UnsafeMutableRawPointer?) -> Unmanaged<DADissenter>?
func DARegisterDiskUnmountApprovalCallback(_ session: DASession, _ match: CFDictionary?, _ callback: DADiskUnmountApprovalCallback, _ context: UnsafeMutableRawPointer?)
typealias DADiskEjectCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutableRawPointer?) -> Void
func DADiskEject(_ disk: DADisk, _ options: DADiskEjectOptions, _ callback: DADiskEjectCallback?, _ context: UnsafeMutableRawPointer?)
typealias DADiskEjectApprovalCallback = @convention(c) (DADisk, UnsafeMutableRawPointer?) -> Unmanaged<DADissenter>?
func DARegisterDiskEjectApprovalCallback(_ session: DASession, _ match: CFDictionary?, _ callback: DADiskEjectApprovalCallback, _ context: UnsafeMutableRawPointer?)
typealias DADiskClaimCallback = @convention(c) (DADisk, DADissenter?, UnsafeMutableRawPointer?) -> Void
typealias DADiskClaimReleaseCallback = @convention(c) (DADisk, UnsafeMutableRawPointer?) -> Unmanaged<DADissenter>?
func DADiskClaim(_ disk: DADisk, _ options: DADiskClaimOptions, _ release: DADiskClaimReleaseCallback?, _ releaseContext: UnsafeMutableRawPointer?, _ callback: DADiskClaimCallback?, _ callbackContext: UnsafeMutableRawPointer?)
func DADiskIsClaimed(_ disk: DADisk) -> Bool
func DADiskUnclaim(_ disk: DADisk)
typealias DADiskPeekCallback = @convention(c) (DADisk, UnsafeMutableRawPointer?) -> Void
func DARegisterDiskPeekCallback(_ session: DASession, _ match: CFDictionary?, _ order: CFIndex, _ callback: DADiskPeekCallback, _ context: UnsafeMutableRawPointer?)
func DADiskGetOptions(_ disk: DADisk) -> DADiskOptions
func DADiskSetOptions(_ disk: DADisk, _ options: DADiskOptions, _ value: Bool) -> DAReturn
func DAUnregisterCallback(_ session: DASession, _ callback: UnsafeMutableRawPointer, _ context: UnsafeMutableRawPointer?)
