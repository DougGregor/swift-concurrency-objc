
typealias jboolean = UInt8
typealias jchar = UInt16
typealias jshort = Int16
typealias jfloat = Float
typealias jdouble = Double
typealias jsize = jint
typealias jobject = OpaquePointer
typealias jclass = jobject
typealias jthrowable = jobject
typealias jstring = jobject
typealias jarray = jobject
typealias jbooleanArray = jarray
typealias jbyteArray = jarray
typealias jcharArray = jarray
typealias jshortArray = jarray
typealias jintArray = jarray
typealias jlongArray = jarray
typealias jfloatArray = jarray
typealias jdoubleArray = jarray
typealias jobjectArray = jarray
typealias jweak = jobject
struct jvalue {
  var z: jboolean
  var b: jbyte
  var c: jchar
  var s: jshort
  var i: jint
  var j: jlong
  var f: jfloat
  var d: jdouble
  var l: jobject!
  init(z: jboolean)
  init(b: jbyte)
  init(c: jchar)
  init(s: jshort)
  init(i: jint)
  init(j: jlong)
  init(f: jfloat)
  init(d: jdouble)
  init(l: jobject!)
  init()
}
typealias jfieldID = OpaquePointer
typealias jmethodID = OpaquePointer
struct _jobjectType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var JNIInvalidRefType: _jobjectType { get }
var JNILocalRefType: _jobjectType { get }
var JNIGlobalRefType: _jobjectType { get }
var JNIWeakGlobalRefType: _jobjectType { get }
typealias jobjectRefType = _jobjectType
var JNI_FALSE: Int32 { get }
var JNI_TRUE: Int32 { get }
var JNI_OK: Int32 { get }
var JNI_ERR: Int32 { get }
var JNI_EDETACHED: Int32 { get }
var JNI_EVERSION: Int32 { get }
var JNI_ENOMEM: Int32 { get }
var JNI_EEXIST: Int32 { get }
var JNI_EINVAL: Int32 { get }
var JNI_COMMIT: Int32 { get }
var JNI_ABORT: Int32 { get }
struct JNINativeMethod {
  var name: UnsafeMutablePointer<CChar>!
  var signature: UnsafeMutablePointer<CChar>!
  var fnPtr: UnsafeMutableRawPointer!
  init()
  init(name: UnsafeMutablePointer<CChar>!, signature: UnsafeMutablePointer<CChar>!, fnPtr: UnsafeMutableRawPointer!)
}
typealias JNIEnv = UnsafePointer<JNINativeInterface_>
typealias JavaVM = UnsafePointer<JNIInvokeInterface_>
struct JNINativeInterface_ {
  var reserved0: UnsafeMutableRawPointer!
  var reserved1: UnsafeMutableRawPointer!
  var reserved2: UnsafeMutableRawPointer!
  var reserved3: UnsafeMutableRawPointer!
  var GetVersion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?) -> jint)!
  var DefineClass: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafePointer<CChar>?, jobject?, UnsafePointer<jbyte>?, jsize) -> jclass?)!
  var FindClass: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafePointer<CChar>?) -> jclass?)!
  var FromReflectedMethod: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jmethodID?)!
  var FromReflectedField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jfieldID?)!
  var ToReflectedMethod: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, jboolean) -> jobject?)!
  var GetSuperclass: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?) -> jclass?)!
  var IsAssignableFrom: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jclass?) -> jboolean)!
  var ToReflectedField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jboolean) -> jobject?)!
  var Throw: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jthrowable?) -> jint)!
  var ThrowNew: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, UnsafePointer<CChar>?) -> jint)!
  var ExceptionOccurred: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?) -> jthrowable?)!
  var ExceptionDescribe: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?) -> Void)!
  var ExceptionClear: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?) -> Void)!
  var FatalError: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafePointer<CChar>?) -> Void)!
  var PushLocalFrame: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jint) -> jint)!
  var PopLocalFrame: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jobject?)!
  var NewGlobalRef: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jobject?)!
  var DeleteGlobalRef: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> Void)!
  var DeleteLocalRef: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> Void)!
  var IsSameObject: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jobject?) -> jboolean)!
  var NewLocalRef: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jobject?)!
  var EnsureLocalCapacity: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jint) -> jint)!
  var AllocObject: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?) -> jobject?)!
  var NewObject: OpaquePointer!
  var NewObjectV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jobject?)!
  var NewObjectA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jobject?)!
  var GetObjectClass: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jclass?)!
  var IsInstanceOf: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?) -> jboolean)!
  var GetMethodID: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, UnsafePointer<CChar>?, UnsafePointer<CChar>?) -> jmethodID?)!
  var CallObjectMethod: OpaquePointer!
  var CallObjectMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jobject?)!
  var CallObjectMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jobject?)!
  var CallBooleanMethod: OpaquePointer!
  var CallBooleanMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jboolean)!
  var CallBooleanMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jboolean)!
  var CallByteMethod: OpaquePointer!
  var CallByteMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jbyte)!
  var CallByteMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jbyte)!
  var CallCharMethod: OpaquePointer!
  var CallCharMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jchar)!
  var CallCharMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jchar)!
  var CallShortMethod: OpaquePointer!
  var CallShortMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jshort)!
  var CallShortMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jshort)!
  var CallIntMethod: OpaquePointer!
  var CallIntMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jint)!
  var CallIntMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jint)!
  var CallLongMethod: OpaquePointer!
  var CallLongMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jlong)!
  var CallLongMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jlong)!
  var CallFloatMethod: OpaquePointer!
  var CallFloatMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jfloat)!
  var CallFloatMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jfloat)!
  var CallDoubleMethod: OpaquePointer!
  var CallDoubleMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jdouble)!
  var CallDoubleMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jdouble)!
  var CallVoidMethod: OpaquePointer!
  var CallVoidMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> Void)!
  var CallVoidMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> Void)!
  var CallNonvirtualObjectMethod: OpaquePointer!
  var CallNonvirtualObjectMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jobject?)!
  var CallNonvirtualObjectMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jobject?)!
  var CallNonvirtualBooleanMethod: OpaquePointer!
  var CallNonvirtualBooleanMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jboolean)!
  var CallNonvirtualBooleanMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jboolean)!
  var CallNonvirtualByteMethod: OpaquePointer!
  var CallNonvirtualByteMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jbyte)!
  var CallNonvirtualByteMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jbyte)!
  var CallNonvirtualCharMethod: OpaquePointer!
  var CallNonvirtualCharMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jchar)!
  var CallNonvirtualCharMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jchar)!
  var CallNonvirtualShortMethod: OpaquePointer!
  var CallNonvirtualShortMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jshort)!
  var CallNonvirtualShortMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jshort)!
  var CallNonvirtualIntMethod: OpaquePointer!
  var CallNonvirtualIntMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jint)!
  var CallNonvirtualIntMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jint)!
  var CallNonvirtualLongMethod: OpaquePointer!
  var CallNonvirtualLongMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jlong)!
  var CallNonvirtualLongMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jlong)!
  var CallNonvirtualFloatMethod: OpaquePointer!
  var CallNonvirtualFloatMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jfloat)!
  var CallNonvirtualFloatMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jfloat)!
  var CallNonvirtualDoubleMethod: OpaquePointer!
  var CallNonvirtualDoubleMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jdouble)!
  var CallNonvirtualDoubleMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jdouble)!
  var CallNonvirtualVoidMethod: OpaquePointer!
  var CallNonvirtualVoidMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> Void)!
  var CallNonvirtualVoidMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> Void)!
  var GetFieldID: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, UnsafePointer<CChar>?, UnsafePointer<CChar>?) -> jfieldID?)!
  var GetObjectField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jobject?)!
  var GetBooleanField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jboolean)!
  var GetByteField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jbyte)!
  var GetCharField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jchar)!
  var GetShortField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jshort)!
  var GetIntField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jint)!
  var GetLongField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jlong)!
  var GetFloatField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jfloat)!
  var GetDoubleField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jdouble)!
  var SetObjectField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jobject?) -> Void)!
  var SetBooleanField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jboolean) -> Void)!
  var SetByteField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jbyte) -> Void)!
  var SetCharField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jchar) -> Void)!
  var SetShortField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jshort) -> Void)!
  var SetIntField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jint) -> Void)!
  var SetLongField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jlong) -> Void)!
  var SetFloatField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jfloat) -> Void)!
  var SetDoubleField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jdouble) -> Void)!
  var GetStaticMethodID: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, UnsafePointer<CChar>?, UnsafePointer<CChar>?) -> jmethodID?)!
  var CallStaticObjectMethod: OpaquePointer!
  var CallStaticObjectMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jobject?)!
  var CallStaticObjectMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jobject?)!
  var CallStaticBooleanMethod: OpaquePointer!
  var CallStaticBooleanMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jboolean)!
  var CallStaticBooleanMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jboolean)!
  var CallStaticByteMethod: OpaquePointer!
  var CallStaticByteMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jbyte)!
  var CallStaticByteMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jbyte)!
  var CallStaticCharMethod: OpaquePointer!
  var CallStaticCharMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jchar)!
  var CallStaticCharMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jchar)!
  var CallStaticShortMethod: OpaquePointer!
  var CallStaticShortMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jshort)!
  var CallStaticShortMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jshort)!
  var CallStaticIntMethod: OpaquePointer!
  var CallStaticIntMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jint)!
  var CallStaticIntMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jint)!
  var CallStaticLongMethod: OpaquePointer!
  var CallStaticLongMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jlong)!
  var CallStaticLongMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jlong)!
  var CallStaticFloatMethod: OpaquePointer!
  var CallStaticFloatMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jfloat)!
  var CallStaticFloatMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jfloat)!
  var CallStaticDoubleMethod: OpaquePointer!
  var CallStaticDoubleMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jdouble)!
  var CallStaticDoubleMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jdouble)!
  var CallStaticVoidMethod: OpaquePointer!
  var CallStaticVoidMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> Void)!
  var CallStaticVoidMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> Void)!
  var GetStaticFieldID: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, UnsafePointer<CChar>?, UnsafePointer<CChar>?) -> jfieldID?)!
  var GetStaticObjectField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jobject?)!
  var GetStaticBooleanField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jboolean)!
  var GetStaticByteField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jbyte)!
  var GetStaticCharField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jchar)!
  var GetStaticShortField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jshort)!
  var GetStaticIntField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jint)!
  var GetStaticLongField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jlong)!
  var GetStaticFloatField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jfloat)!
  var GetStaticDoubleField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jdouble)!
  var SetStaticObjectField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jobject?) -> Void)!
  var SetStaticBooleanField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jboolean) -> Void)!
  var SetStaticByteField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jbyte) -> Void)!
  var SetStaticCharField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jchar) -> Void)!
  var SetStaticShortField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jshort) -> Void)!
  var SetStaticIntField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jint) -> Void)!
  var SetStaticLongField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jlong) -> Void)!
  var SetStaticFloatField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jfloat) -> Void)!
  var SetStaticDoubleField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jdouble) -> Void)!
  var NewString: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafePointer<jchar>?, jsize) -> jstring?)!
  var GetStringLength: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?) -> jsize)!
  var GetStringChars: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, UnsafeMutablePointer<jboolean>?) -> UnsafePointer<jchar>?)!
  var ReleaseStringChars: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, UnsafePointer<jchar>?) -> Void)!
  var NewStringUTF: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafePointer<CChar>?) -> jstring?)!
  var GetStringUTFLength: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?) -> jsize)!
  var GetStringUTFChars: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, UnsafeMutablePointer<jboolean>?) -> UnsafePointer<CChar>?)!
  var ReleaseStringUTFChars: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, UnsafePointer<CChar>?) -> Void)!
  var GetArrayLength: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jarray?) -> jsize)!
  var NewObjectArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize, jclass?, jobject?) -> jobjectArray?)!
  var GetObjectArrayElement: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobjectArray?, jsize) -> jobject?)!
  var SetObjectArrayElement: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobjectArray?, jsize, jobject?) -> Void)!
  var NewBooleanArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jbooleanArray?)!
  var NewByteArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jbyteArray?)!
  var NewCharArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jcharArray?)!
  var NewShortArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jshortArray?)!
  var NewIntArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jintArray?)!
  var NewLongArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jlongArray?)!
  var NewFloatArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jfloatArray?)!
  var NewDoubleArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jdoubleArray?)!
  var GetBooleanArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbooleanArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jboolean>?)!
  var GetByteArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbyteArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jbyte>?)!
  var GetCharArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jcharArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jchar>?)!
  var GetShortArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jshortArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jshort>?)!
  var GetIntArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jintArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jint>?)!
  var GetLongArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jlongArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jlong>?)!
  var GetFloatArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jfloatArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jfloat>?)!
  var GetDoubleArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jdoubleArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jdouble>?)!
  var ReleaseBooleanArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbooleanArray?, UnsafeMutablePointer<jboolean>?, jint) -> Void)!
  var ReleaseByteArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbyteArray?, UnsafeMutablePointer<jbyte>?, jint) -> Void)!
  var ReleaseCharArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jcharArray?, UnsafeMutablePointer<jchar>?, jint) -> Void)!
  var ReleaseShortArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jshortArray?, UnsafeMutablePointer<jshort>?, jint) -> Void)!
  var ReleaseIntArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jintArray?, UnsafeMutablePointer<jint>?, jint) -> Void)!
  var ReleaseLongArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jlongArray?, UnsafeMutablePointer<jlong>?, jint) -> Void)!
  var ReleaseFloatArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jfloatArray?, UnsafeMutablePointer<jfloat>?, jint) -> Void)!
  var ReleaseDoubleArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jdoubleArray?, UnsafeMutablePointer<jdouble>?, jint) -> Void)!
  var GetBooleanArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbooleanArray?, jsize, jsize, UnsafeMutablePointer<jboolean>?) -> Void)!
  var GetByteArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbyteArray?, jsize, jsize, UnsafeMutablePointer<jbyte>?) -> Void)!
  var GetCharArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jcharArray?, jsize, jsize, UnsafeMutablePointer<jchar>?) -> Void)!
  var GetShortArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jshortArray?, jsize, jsize, UnsafeMutablePointer<jshort>?) -> Void)!
  var GetIntArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jintArray?, jsize, jsize, UnsafeMutablePointer<jint>?) -> Void)!
  var GetLongArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jlongArray?, jsize, jsize, UnsafeMutablePointer<jlong>?) -> Void)!
  var GetFloatArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jfloatArray?, jsize, jsize, UnsafeMutablePointer<jfloat>?) -> Void)!
  var GetDoubleArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jdoubleArray?, jsize, jsize, UnsafeMutablePointer<jdouble>?) -> Void)!
  var SetBooleanArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbooleanArray?, jsize, jsize, UnsafePointer<jboolean>?) -> Void)!
  var SetByteArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbyteArray?, jsize, jsize, UnsafePointer<jbyte>?) -> Void)!
  var SetCharArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jcharArray?, jsize, jsize, UnsafePointer<jchar>?) -> Void)!
  var SetShortArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jshortArray?, jsize, jsize, UnsafePointer<jshort>?) -> Void)!
  var SetIntArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jintArray?, jsize, jsize, UnsafePointer<jint>?) -> Void)!
  var SetLongArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jlongArray?, jsize, jsize, UnsafePointer<jlong>?) -> Void)!
  var SetFloatArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jfloatArray?, jsize, jsize, UnsafePointer<jfloat>?) -> Void)!
  var SetDoubleArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jdoubleArray?, jsize, jsize, UnsafePointer<jdouble>?) -> Void)!
  var RegisterNatives: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, UnsafePointer<JNINativeMethod>?, jint) -> jint)!
  var UnregisterNatives: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?) -> jint)!
  var MonitorEnter: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jint)!
  var MonitorExit: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jint)!
  var GetJavaVM: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafeMutablePointer<UnsafeMutablePointer<JavaVM?>?>?) -> jint)!
  var GetStringRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, jsize, jsize, UnsafeMutablePointer<jchar>?) -> Void)!
  var GetStringUTFRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, jsize, jsize, UnsafeMutablePointer<CChar>?) -> Void)!
  var GetPrimitiveArrayCritical: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jarray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutableRawPointer?)!
  var ReleasePrimitiveArrayCritical: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jarray?, UnsafeMutableRawPointer?, jint) -> Void)!
  var GetStringCritical: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, UnsafeMutablePointer<jboolean>?) -> UnsafePointer<jchar>?)!
  var ReleaseStringCritical: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, UnsafePointer<jchar>?) -> Void)!
  var NewWeakGlobalRef: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jweak?)!
  var DeleteWeakGlobalRef: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jweak?) -> Void)!
  var ExceptionCheck: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?) -> jboolean)!
  var NewDirectByteBuffer: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafeMutableRawPointer?, jlong) -> jobject?)!
  var GetDirectBufferAddress: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> UnsafeMutableRawPointer?)!
  var GetDirectBufferCapacity: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jlong)!
  var GetObjectRefType: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jobjectRefType)!
  init()
  init(reserved0: UnsafeMutableRawPointer!, reserved1: UnsafeMutableRawPointer!, reserved2: UnsafeMutableRawPointer!, reserved3: UnsafeMutableRawPointer!, GetVersion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?) -> jint)!, DefineClass: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafePointer<CChar>?, jobject?, UnsafePointer<jbyte>?, jsize) -> jclass?)!, FindClass: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafePointer<CChar>?) -> jclass?)!, FromReflectedMethod: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jmethodID?)!, FromReflectedField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jfieldID?)!, ToReflectedMethod: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, jboolean) -> jobject?)!, GetSuperclass: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?) -> jclass?)!, IsAssignableFrom: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jclass?) -> jboolean)!, ToReflectedField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jboolean) -> jobject?)!, Throw: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jthrowable?) -> jint)!, ThrowNew: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, UnsafePointer<CChar>?) -> jint)!, ExceptionOccurred: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?) -> jthrowable?)!, ExceptionDescribe: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?) -> Void)!, ExceptionClear: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?) -> Void)!, FatalError: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafePointer<CChar>?) -> Void)!, PushLocalFrame: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jint) -> jint)!, PopLocalFrame: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jobject?)!, NewGlobalRef: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jobject?)!, DeleteGlobalRef: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> Void)!, DeleteLocalRef: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> Void)!, IsSameObject: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jobject?) -> jboolean)!, NewLocalRef: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jobject?)!, EnsureLocalCapacity: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jint) -> jint)!, AllocObject: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?) -> jobject?)!, NewObject: OpaquePointer!, NewObjectV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jobject?)!, NewObjectA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jobject?)!, GetObjectClass: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jclass?)!, IsInstanceOf: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?) -> jboolean)!, GetMethodID: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, UnsafePointer<CChar>?, UnsafePointer<CChar>?) -> jmethodID?)!, CallObjectMethod: OpaquePointer!, CallObjectMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jobject?)!, CallObjectMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jobject?)!, CallBooleanMethod: OpaquePointer!, CallBooleanMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jboolean)!, CallBooleanMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jboolean)!, CallByteMethod: OpaquePointer!, CallByteMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jbyte)!, CallByteMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jbyte)!, CallCharMethod: OpaquePointer!, CallCharMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jchar)!, CallCharMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jchar)!, CallShortMethod: OpaquePointer!, CallShortMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jshort)!, CallShortMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jshort)!, CallIntMethod: OpaquePointer!, CallIntMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jint)!, CallIntMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jint)!, CallLongMethod: OpaquePointer!, CallLongMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jlong)!, CallLongMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jlong)!, CallFloatMethod: OpaquePointer!, CallFloatMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jfloat)!, CallFloatMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jfloat)!, CallDoubleMethod: OpaquePointer!, CallDoubleMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> jdouble)!, CallDoubleMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> jdouble)!, CallVoidMethod: OpaquePointer!, CallVoidMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, CVaListPointer?) -> Void)!, CallVoidMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jmethodID?, UnsafePointer<jvalue>?) -> Void)!, CallNonvirtualObjectMethod: OpaquePointer!, CallNonvirtualObjectMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jobject?)!, CallNonvirtualObjectMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jobject?)!, CallNonvirtualBooleanMethod: OpaquePointer!, CallNonvirtualBooleanMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jboolean)!, CallNonvirtualBooleanMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jboolean)!, CallNonvirtualByteMethod: OpaquePointer!, CallNonvirtualByteMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jbyte)!, CallNonvirtualByteMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jbyte)!, CallNonvirtualCharMethod: OpaquePointer!, CallNonvirtualCharMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jchar)!, CallNonvirtualCharMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jchar)!, CallNonvirtualShortMethod: OpaquePointer!, CallNonvirtualShortMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jshort)!, CallNonvirtualShortMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jshort)!, CallNonvirtualIntMethod: OpaquePointer!, CallNonvirtualIntMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jint)!, CallNonvirtualIntMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jint)!, CallNonvirtualLongMethod: OpaquePointer!, CallNonvirtualLongMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jlong)!, CallNonvirtualLongMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jlong)!, CallNonvirtualFloatMethod: OpaquePointer!, CallNonvirtualFloatMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jfloat)!, CallNonvirtualFloatMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jfloat)!, CallNonvirtualDoubleMethod: OpaquePointer!, CallNonvirtualDoubleMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> jdouble)!, CallNonvirtualDoubleMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jdouble)!, CallNonvirtualVoidMethod: OpaquePointer!, CallNonvirtualVoidMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, CVaListPointer?) -> Void)!, CallNonvirtualVoidMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> Void)!, GetFieldID: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, UnsafePointer<CChar>?, UnsafePointer<CChar>?) -> jfieldID?)!, GetObjectField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jobject?)!, GetBooleanField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jboolean)!, GetByteField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jbyte)!, GetCharField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jchar)!, GetShortField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jshort)!, GetIntField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jint)!, GetLongField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jlong)!, GetFloatField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jfloat)!, GetDoubleField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?) -> jdouble)!, SetObjectField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jobject?) -> Void)!, SetBooleanField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jboolean) -> Void)!, SetByteField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jbyte) -> Void)!, SetCharField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jchar) -> Void)!, SetShortField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jshort) -> Void)!, SetIntField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jint) -> Void)!, SetLongField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jlong) -> Void)!, SetFloatField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jfloat) -> Void)!, SetDoubleField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?, jfieldID?, jdouble) -> Void)!, GetStaticMethodID: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, UnsafePointer<CChar>?, UnsafePointer<CChar>?) -> jmethodID?)!, CallStaticObjectMethod: OpaquePointer!, CallStaticObjectMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jobject?)!, CallStaticObjectMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jobject?)!, CallStaticBooleanMethod: OpaquePointer!, CallStaticBooleanMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jboolean)!, CallStaticBooleanMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jboolean)!, CallStaticByteMethod: OpaquePointer!, CallStaticByteMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jbyte)!, CallStaticByteMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jbyte)!, CallStaticCharMethod: OpaquePointer!, CallStaticCharMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jchar)!, CallStaticCharMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jchar)!, CallStaticShortMethod: OpaquePointer!, CallStaticShortMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jshort)!, CallStaticShortMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jshort)!, CallStaticIntMethod: OpaquePointer!, CallStaticIntMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jint)!, CallStaticIntMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jint)!, CallStaticLongMethod: OpaquePointer!, CallStaticLongMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jlong)!, CallStaticLongMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jlong)!, CallStaticFloatMethod: OpaquePointer!, CallStaticFloatMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jfloat)!, CallStaticFloatMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jfloat)!, CallStaticDoubleMethod: OpaquePointer!, CallStaticDoubleMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> jdouble)!, CallStaticDoubleMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> jdouble)!, CallStaticVoidMethod: OpaquePointer!, CallStaticVoidMethodV: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, CVaListPointer?) -> Void)!, CallStaticVoidMethodA: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jmethodID?, UnsafePointer<jvalue>?) -> Void)!, GetStaticFieldID: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, UnsafePointer<CChar>?, UnsafePointer<CChar>?) -> jfieldID?)!, GetStaticObjectField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jobject?)!, GetStaticBooleanField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jboolean)!, GetStaticByteField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jbyte)!, GetStaticCharField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jchar)!, GetStaticShortField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jshort)!, GetStaticIntField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jint)!, GetStaticLongField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jlong)!, GetStaticFloatField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jfloat)!, GetStaticDoubleField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?) -> jdouble)!, SetStaticObjectField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jobject?) -> Void)!, SetStaticBooleanField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jboolean) -> Void)!, SetStaticByteField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jbyte) -> Void)!, SetStaticCharField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jchar) -> Void)!, SetStaticShortField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jshort) -> Void)!, SetStaticIntField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jint) -> Void)!, SetStaticLongField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jlong) -> Void)!, SetStaticFloatField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jfloat) -> Void)!, SetStaticDoubleField: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, jfieldID?, jdouble) -> Void)!, NewString: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafePointer<jchar>?, jsize) -> jstring?)!, GetStringLength: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?) -> jsize)!, GetStringChars: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, UnsafeMutablePointer<jboolean>?) -> UnsafePointer<jchar>?)!, ReleaseStringChars: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, UnsafePointer<jchar>?) -> Void)!, NewStringUTF: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafePointer<CChar>?) -> jstring?)!, GetStringUTFLength: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?) -> jsize)!, GetStringUTFChars: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, UnsafeMutablePointer<jboolean>?) -> UnsafePointer<CChar>?)!, ReleaseStringUTFChars: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, UnsafePointer<CChar>?) -> Void)!, GetArrayLength: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jarray?) -> jsize)!, NewObjectArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize, jclass?, jobject?) -> jobjectArray?)!, GetObjectArrayElement: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobjectArray?, jsize) -> jobject?)!, SetObjectArrayElement: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobjectArray?, jsize, jobject?) -> Void)!, NewBooleanArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jbooleanArray?)!, NewByteArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jbyteArray?)!, NewCharArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jcharArray?)!, NewShortArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jshortArray?)!, NewIntArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jintArray?)!, NewLongArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jlongArray?)!, NewFloatArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jfloatArray?)!, NewDoubleArray: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jsize) -> jdoubleArray?)!, GetBooleanArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbooleanArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jboolean>?)!, GetByteArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbyteArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jbyte>?)!, GetCharArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jcharArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jchar>?)!, GetShortArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jshortArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jshort>?)!, GetIntArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jintArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jint>?)!, GetLongArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jlongArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jlong>?)!, GetFloatArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jfloatArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jfloat>?)!, GetDoubleArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jdoubleArray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutablePointer<jdouble>?)!, ReleaseBooleanArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbooleanArray?, UnsafeMutablePointer<jboolean>?, jint) -> Void)!, ReleaseByteArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbyteArray?, UnsafeMutablePointer<jbyte>?, jint) -> Void)!, ReleaseCharArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jcharArray?, UnsafeMutablePointer<jchar>?, jint) -> Void)!, ReleaseShortArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jshortArray?, UnsafeMutablePointer<jshort>?, jint) -> Void)!, ReleaseIntArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jintArray?, UnsafeMutablePointer<jint>?, jint) -> Void)!, ReleaseLongArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jlongArray?, UnsafeMutablePointer<jlong>?, jint) -> Void)!, ReleaseFloatArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jfloatArray?, UnsafeMutablePointer<jfloat>?, jint) -> Void)!, ReleaseDoubleArrayElements: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jdoubleArray?, UnsafeMutablePointer<jdouble>?, jint) -> Void)!, GetBooleanArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbooleanArray?, jsize, jsize, UnsafeMutablePointer<jboolean>?) -> Void)!, GetByteArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbyteArray?, jsize, jsize, UnsafeMutablePointer<jbyte>?) -> Void)!, GetCharArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jcharArray?, jsize, jsize, UnsafeMutablePointer<jchar>?) -> Void)!, GetShortArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jshortArray?, jsize, jsize, UnsafeMutablePointer<jshort>?) -> Void)!, GetIntArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jintArray?, jsize, jsize, UnsafeMutablePointer<jint>?) -> Void)!, GetLongArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jlongArray?, jsize, jsize, UnsafeMutablePointer<jlong>?) -> Void)!, GetFloatArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jfloatArray?, jsize, jsize, UnsafeMutablePointer<jfloat>?) -> Void)!, GetDoubleArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jdoubleArray?, jsize, jsize, UnsafeMutablePointer<jdouble>?) -> Void)!, SetBooleanArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbooleanArray?, jsize, jsize, UnsafePointer<jboolean>?) -> Void)!, SetByteArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jbyteArray?, jsize, jsize, UnsafePointer<jbyte>?) -> Void)!, SetCharArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jcharArray?, jsize, jsize, UnsafePointer<jchar>?) -> Void)!, SetShortArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jshortArray?, jsize, jsize, UnsafePointer<jshort>?) -> Void)!, SetIntArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jintArray?, jsize, jsize, UnsafePointer<jint>?) -> Void)!, SetLongArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jlongArray?, jsize, jsize, UnsafePointer<jlong>?) -> Void)!, SetFloatArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jfloatArray?, jsize, jsize, UnsafePointer<jfloat>?) -> Void)!, SetDoubleArrayRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jdoubleArray?, jsize, jsize, UnsafePointer<jdouble>?) -> Void)!, RegisterNatives: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?, UnsafePointer<JNINativeMethod>?, jint) -> jint)!, UnregisterNatives: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jclass?) -> jint)!, MonitorEnter: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jint)!, MonitorExit: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jint)!, GetJavaVM: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafeMutablePointer<UnsafeMutablePointer<JavaVM?>?>?) -> jint)!, GetStringRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, jsize, jsize, UnsafeMutablePointer<jchar>?) -> Void)!, GetStringUTFRegion: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, jsize, jsize, UnsafeMutablePointer<CChar>?) -> Void)!, GetPrimitiveArrayCritical: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jarray?, UnsafeMutablePointer<jboolean>?) -> UnsafeMutableRawPointer?)!, ReleasePrimitiveArrayCritical: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jarray?, UnsafeMutableRawPointer?, jint) -> Void)!, GetStringCritical: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, UnsafeMutablePointer<jboolean>?) -> UnsafePointer<jchar>?)!, ReleaseStringCritical: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jstring?, UnsafePointer<jchar>?) -> Void)!, NewWeakGlobalRef: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jweak?)!, DeleteWeakGlobalRef: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jweak?) -> Void)!, ExceptionCheck: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?) -> jboolean)!, NewDirectByteBuffer: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, UnsafeMutableRawPointer?, jlong) -> jobject?)!, GetDirectBufferAddress: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> UnsafeMutableRawPointer?)!, GetDirectBufferCapacity: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jlong)!, GetObjectRefType: (@convention(c) (UnsafeMutablePointer<JNIEnv?>?, jobject?) -> jobjectRefType)!)
}
struct JNIEnv_ {
  var functions: UnsafePointer<JNINativeInterface_>!
  init()
  init(functions: UnsafePointer<JNINativeInterface_>!)
}
struct JavaVMOption {
  var optionString: UnsafeMutablePointer<CChar>!
  var extraInfo: UnsafeMutableRawPointer!
  init()
  init(optionString: UnsafeMutablePointer<CChar>!, extraInfo: UnsafeMutableRawPointer!)
}
struct JavaVMInitArgs {
  var version: jint
  var nOptions: jint
  var options: UnsafeMutablePointer<JavaVMOption>!
  var ignoreUnrecognized: jboolean
  init()
  init(version: jint, nOptions: jint, options: UnsafeMutablePointer<JavaVMOption>!, ignoreUnrecognized: jboolean)
}
struct JavaVMAttachArgs {
  var version: jint
  var name: UnsafeMutablePointer<CChar>!
  var group: jobject!
  init()
  init(version: jint, name: UnsafeMutablePointer<CChar>!, group: jobject!)
}
struct JNIInvokeInterface_ {
  var reserved0: UnsafeMutableRawPointer!
  var reserved1: UnsafeMutableRawPointer!
  var reserved2: UnsafeMutableRawPointer!
  var DestroyJavaVM: (@convention(c) (UnsafeMutablePointer<JavaVM?>?) -> jint)!
  var AttachCurrentThread: (@convention(c) (UnsafeMutablePointer<JavaVM?>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, UnsafeMutableRawPointer?) -> jint)!
  var DetachCurrentThread: (@convention(c) (UnsafeMutablePointer<JavaVM?>?) -> jint)!
  var GetEnv: (@convention(c) (UnsafeMutablePointer<JavaVM?>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, jint) -> jint)!
  var AttachCurrentThreadAsDaemon: (@convention(c) (UnsafeMutablePointer<JavaVM?>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, UnsafeMutableRawPointer?) -> jint)!
  init()
  init(reserved0: UnsafeMutableRawPointer!, reserved1: UnsafeMutableRawPointer!, reserved2: UnsafeMutableRawPointer!, DestroyJavaVM: (@convention(c) (UnsafeMutablePointer<JavaVM?>?) -> jint)!, AttachCurrentThread: (@convention(c) (UnsafeMutablePointer<JavaVM?>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, UnsafeMutableRawPointer?) -> jint)!, DetachCurrentThread: (@convention(c) (UnsafeMutablePointer<JavaVM?>?) -> jint)!, GetEnv: (@convention(c) (UnsafeMutablePointer<JavaVM?>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, jint) -> jint)!, AttachCurrentThreadAsDaemon: (@convention(c) (UnsafeMutablePointer<JavaVM?>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, UnsafeMutableRawPointer?) -> jint)!)
}
struct JavaVM_ {
  var functions: UnsafePointer<JNIInvokeInterface_>!
  init()
  init(functions: UnsafePointer<JNIInvokeInterface_>!)
}
var JNI_VERSION_1_1: Int32 { get }
var JNI_VERSION_1_2: Int32 { get }
var JNI_VERSION_1_4: Int32 { get }
var JNI_VERSION_1_6: Int32 { get }
