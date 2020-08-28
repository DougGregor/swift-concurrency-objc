
func JNFJavaToNSNumber(_ env: UnsafeMutablePointer<JNIEnv?>!, _ n: jobject!) -> NSNumber!
func JNFNSToJavaNumber(_ env: UnsafeMutablePointer<JNIEnv?>!, _ n: NSNumber!) -> jobject!
func JNFJavaToCFBoolean(_ env: UnsafeMutablePointer<JNIEnv?>!, _ b: jobject!) -> Unmanaged<CFBoolean>!
func JNFCFToJavaBoolean(_ env: UnsafeMutablePointer<JNIEnv?>!, _ b: CFBoolean!) -> jobject!
