
typealias DRFilesystemTrack = DRTrackRef
@available(macOS 10.2, *)
func DRFilesystemTrackCreate(_ rootFolder: DRFolderRef!) -> Unmanaged<DRFilesystemTrack>!
@available(macOS 10.3, *)
func DRFilesystemTrackEstimateOverhead(_ numBlocks: UInt64, _ blockSize: UInt32, _ fsMask: DRFilesystemMask) -> UInt64
typealias DRAudioTrack = DRTrackRef
@available(macOS 10.2, *)
@available(macOS, deprecated: 10.14, message: "Please use DRAudioTrackCreateWithURL(CFURLRef audioFileURL) instead")
func DRAudioTrackCreate(_ audioFile: UnsafePointer<FSRef>!) -> Unmanaged<DRAudioTrack>!
@available(macOS 10.3, *)
func DRAudioTrackCreateWithURL(_ audioFileURL: CFURL!) -> Unmanaged<DRAudioTrack>!
