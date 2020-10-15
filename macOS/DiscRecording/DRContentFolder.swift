
@available(macOS 10.2, *)
func DRFolderGetTypeID() -> CFTypeID
@available(macOS 10.2, *)
@available(macOS, deprecated: 10.14, message: "Please use DRFolderCreateRealWithURL(const CFURLRef urlRef) instead")
func DRFolderCreateReal(_ fsRef: UnsafePointer<FSRef>!) -> Unmanaged<DRFolderRef>!
@available(macOS 10.2, *)
func DRFolderCreateRealWithURL(_ urlRef: CFURL!) -> Unmanaged<DRFolderRef>!
@available(macOS 10.2, *)
func DRFolderCreateVirtual(_ baseName: CFString!) -> Unmanaged<DRFolderRef>!
@available(macOS 10.2, *)
func DRFolderConvertRealToVirtual(_ realFolder: DRFolderRef!)
@available(macOS 10.2, *)
func DRFolderAddChild(_ parent: DRFolderRef!, _ newChild: DRFSObjectRef!)
@available(macOS 10.2, *)
func DRFolderRemoveChild(_ parent: DRFolderRef!, _ child: DRFSObjectRef!)
@available(macOS 10.2, *)
func DRFolderCountChildren(_ folder: DRFolderRef!) -> UInt32
@available(macOS 10.2, *)
func DRFolderCopyChildren(_ folder: DRFolderRef!) -> Unmanaged<CFArray>!
