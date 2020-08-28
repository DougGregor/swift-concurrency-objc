
func JNFJavaToNSDate(_ env: UnsafeMutablePointer<JNIEnv?>!, _ date: jobject!) -> Date!
func JNFNSToJavaCalendar(_ env: UnsafeMutablePointer<JNIEnv?>!, _ date: Date!) -> jobject!
func JNFJavaMillisToNSTimeInterval(_ javaMillisSince1970: jlong) -> TimeInterval
func JNFNSTimeIntervalToJavaMillis(_ intervalSince2001: TimeInterval) -> jlong
