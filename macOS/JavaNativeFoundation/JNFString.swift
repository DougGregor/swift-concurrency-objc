
func JNFJavaToNSString(_ env: UnsafeMutablePointer<JNIEnv?>!, _ javaString: jstring!) -> String!
func JNFNSToJavaString(_ env: UnsafeMutablePointer<JNIEnv?>!, _ nsString: String!) -> jstring!
func JNFGetStringUTF16UniChars(_ env: UnsafeMutablePointer<JNIEnv?>!, _ javaString: jstring!) -> UnsafePointer<unichar>!
func JNFReleaseStringUTF16UniChars(_ env: UnsafeMutablePointer<JNIEnv?>!, _ javaString: jstring!, _ unichars: UnsafePointer<unichar>!)
func JNFGetStringUTF8Chars(_ env: UnsafeMutablePointer<JNIEnv?>!, _ javaString: jstring!) -> UnsafePointer<CChar>!
func JNFReleaseStringUTF8Chars(_ env: UnsafeMutablePointer<JNIEnv?>!, _ javaString: jstring!, _ chars: UnsafePointer<CChar>!)
