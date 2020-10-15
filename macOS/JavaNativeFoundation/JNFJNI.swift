
struct _JNFClassInfo {
  var name: UnsafePointer<CChar>!
  var cls: jclass!
  init()
  init(name: UnsafePointer<CChar>!, cls: jclass!)
}
typealias JNFClassInfo = _JNFClassInfo
struct _JNFMemberInfo {
  var name: UnsafePointer<CChar>!
  var sig: UnsafePointer<CChar>!
  var isStatic: ObjCBool
  var classInfo: UnsafeMutablePointer<JNFClassInfo>!
  var j: _j
  init()
  init(name: UnsafePointer<CChar>!, sig: UnsafePointer<CChar>!, isStatic: ObjCBool, classInfo: UnsafeMutablePointer<JNFClassInfo>!, j: _j)
}
struct _j {
  var fieldID: jfieldID!
  var methodID: jmethodID!
  init(fieldID: jfieldID!)
  init(methodID: jmethodID!)
  init()
}
typealias JNFMemberInfo = _JNFMemberInfo
func JNFIsInstanceOf(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ clazz: UnsafeMutablePointer<JNFClassInfo>!) -> Bool
func JNFNewObjectArray(_ env: UnsafeMutablePointer<JNIEnv?>!, _ clazz: UnsafeMutablePointer<JNFClassInfo>!, _ length: jsize) -> jobjectArray!
func JNFNewBooleanArray(_ env: UnsafeMutablePointer<JNIEnv?>!, _ length: jsize) -> jbooleanArray!
func JNFNewByteArray(_ env: UnsafeMutablePointer<JNIEnv?>!, _ length: jsize) -> jbyteArray!
func JNFNewCharArray(_ env: UnsafeMutablePointer<JNIEnv?>!, _ length: jsize) -> jcharArray!
func JNFNewShortArray(_ env: UnsafeMutablePointer<JNIEnv?>!, _ length: jsize) -> jshortArray!
func JNFNewIntArray(_ env: UnsafeMutablePointer<JNIEnv?>!, _ length: jsize) -> jintArray!
func JNFNewLongArray(_ env: UnsafeMutablePointer<JNIEnv?>!, _ length: jsize) -> jlongArray!
func JNFNewFloatArray(_ env: UnsafeMutablePointer<JNIEnv?>!, _ length: jsize) -> jfloatArray!
func JNFNewDoubleArray(_ env: UnsafeMutablePointer<JNIEnv?>!, _ length: jsize) -> jdoubleArray!
func JNFGetObjectField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jobject!
func JNFGetBooleanField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jboolean
func JNFGetByteField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jbyte
func JNFGetCharField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jchar
func JNFGetShortField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jshort
func JNFGetIntField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jint
func JNFGetLongField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jlong
func JNFGetFloatField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jfloat
func JNFGetDoubleField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jdouble
func JNFGetStaticObjectField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jobject!
func JNFGetStaticBooleanField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jboolean
func JNFGetStaticByteField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jbyte
func JNFGetStaticCharField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jchar
func JNFGetStaticShortField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jshort
func JNFGetStaticIntField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jint
func JNFGetStaticLongField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jlong
func JNFGetStaticFloatField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jfloat
func JNFGetStaticDoubleField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!) -> jdouble
func JNFSetObjectField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jobject!)
func JNFSetBooleanField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jboolean)
func JNFSetByteField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jbyte)
func JNFSetCharField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jchar)
func JNFSetShortField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jshort)
func JNFSetIntField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jint)
func JNFSetLongField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jlong)
func JNFSetFloatField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jfloat)
func JNFSetDoubleField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jdouble)
func JNFSetStaticObjectField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jobject!)
func JNFSetStaticBooleanField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jboolean)
func JNFSetStaticByteField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jbyte)
func JNFSetStaticCharField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jchar)
func JNFSetStaticShortField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jshort)
func JNFSetStaticIntField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jint)
func JNFSetStaticLongField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jlong)
func JNFSetStaticFloatField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jfloat)
func JNFSetStaticDoubleField(_ env: UnsafeMutablePointer<JNIEnv?>!, _ field: UnsafeMutablePointer<JNFMemberInfo>!, _ val: jdouble)
func JNFNewGlobalRef(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!) -> jobject!
func JNFDeleteGlobalRef(_ env: UnsafeMutablePointer<JNIEnv?>!, _ globalRef: jobject!)
func JNFNewWeakGlobalRef(_ env: UnsafeMutablePointer<JNIEnv?>!, _ obj: jobject!) -> jobject!
func JNFDeleteWeakGlobalRef(_ env: UnsafeMutablePointer<JNIEnv?>!, _ globalRef: jobject!)
