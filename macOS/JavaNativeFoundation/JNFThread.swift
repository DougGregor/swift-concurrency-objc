
var JNFThreadDetachImmediately: Int { get }
var JNFThreadDetachOnThreadDeath: Int { get }
var JNFThreadSetSystemClassLoaderOnAttach: Int { get }
var JNFThreadAttachAsDaemon: Int { get }
typealias JNFThreadContext = jlong
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is no longer supported and may stop working in a future version of macOS.")
func JNFObtainEnv(_ context: UnsafeMutablePointer<JNFThreadContext>!) -> UnsafeMutablePointer<JNIEnv?>!
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is no longer supported and may stop working in a future version of macOS.")
func JNFReleaseEnv(_ env: UnsafeMutablePointer<JNIEnv?>!, _ context: UnsafeMutablePointer<JNFThreadContext>!)
typealias JNIEnvBlock = (UnsafeMutablePointer<JNIEnv?>?) -> Void
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is no longer supported and may stop working in a future version of macOS.")
func JNFPerformEnvBlock(_ context: JNFThreadContext, _ block: JNIEnvBlock!)
