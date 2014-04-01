/*
 * android-specific implementation of the s3eNextpeer extension.
 * Add any platform-specific functionality here.
 */
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
#include "s3eNextpeer_internal.h"

#include "s3eEdk.h"
#include "s3eEdk_android.h"
#include <jni.h>
#include "IwDebug.h"

static jobject g_Obj;
static jmethodID g_s3eNextpeerInitWithProductKey;
static jmethodID g_s3eNextpeerLaunchDashboard;
static jmethodID g_s3eNextpeerLaunchDashboardWithCurrencyAmount;
static jmethodID g_s3eNextpeerDismissDashboard;
static jmethodID g_s3eNextpeerShutDown;
static jmethodID g_s3eNextpeerReportScoreForCurrentTournament;
static jmethodID g_s3eNextpeerIsCurrentlyInTournament;
static jmethodID g_s3eNextpeerTimeLeftInTournament;
static jmethodID g_s3eNextpeerReportForfeitForCurrentTournament;
static jmethodID g_s3eNextpeerPushDataToOtherPlayers;
static jmethodID g_s3eNextpeerPushNotificationToOtherPlayers;
static jmethodID g_s3eNextpeerHandleOpenURL;
static jmethodID g_s3eNextpeerRegisterOpenURLCallback;
static jmethodID g_s3eNextpeerSetUnifiedVirtualCurrencySupport;
static jmethodID g_s3eNextpeerOpenFeed;
static jmethodID g_s3eNextpeerRegisterCallback;
static jmethodID g_s3eNextpeerUnRegisterCallback;


void onNextpeerAppearCalled()
{
	IwTrace(NEXTPEER, ("onNextpeerAppearCalled"));
	
}
void onNextpeerDisappearCalled()
{
	IwTrace(NEXTPEER, ("onNextpeerDisappearCalled"));
}
void onNextpeerReturnToGameCalled()
{
	IwTrace(NEXTPEER, ("onNextpeerReturnToGameCalled"));
}
void onReceiveTournamentStatusCalled(JNIEnv *env, jobject _this, jobject tournamentStatus)
{   
    IwTrace(NEXTPEER, ("onReceiveTournamentStatusCalled"));
	
	void* statusObject = (void*)tournamentStatus;
	s3eResult res = S3E_RESULT_SUCCESS;
	s3eEdkCallbacksEnqueue(S3E_EXT_NEXTPEER_HASH, S3E_NEXTPEER_CALLBACK_DID_TOURNAMENT_START,&res,4,statusObject,S3E_TRUE);
}
void onSupportsTournamentCalled()
{
	IwTrace(NEXTPEER, ("onSupportsTournamentCalled"));
}
void onTournamentStartCalled()
{
	IwTrace(NEXTPEER, ("onTournamentStartCalled"));
}
void onTournamentEndCalled()
{
	IwTrace(NEXTPEER, ("onTournamentEndCalled"));
}
void onReceiveTournamentCustomMessageCalled()
{
	IwTrace(NEXTPEER, ("onReceiveTournamentCustomMessageCalled"));
}
void onReceiveUnreliableTournamentCustomMessageCalled()
{
	IwTrace(NEXTPEER, ("onReceiveUnreliableTournamentCustomMessageCalled"));
}
s3eResult s3eNextpeerInit_platform()
{
    // Get the environment from the pointer
    JNIEnv* env = s3eEdkJNIGetEnv();
    jobject obj = NULL;
    jmethodID cons = NULL;
	
	static const JNINativeMethod g_JNIthreadMethods[] =
    {
       
		{"onNextpeerAppearCalled",                          "()V",(void *) &onNextpeerAppearCalled},
		{"onNextpeerDisappearCalled",                       "()V",(void *) &onNextpeerDisappearCalled},
		{"onNextpeerReturnToGameCalled",                    "()V",(void *) &onNextpeerReturnToGameCalled},
		{"onReceiveTournamentStatusCalled",                 "(Ljava/lang/Object;)V",(void *) &onReceiveTournamentStatusCalled},
		{"onSupportsTournamentCalled",                      "()V",(void *) &onSupportsTournamentCalled},
		{"onTournamentStartCalled",                         "()V",(void *) &onTournamentStartCalled},
		{"onTournamentEndCalled",                           "()V",(void *) &onTournamentEndCalled},
		{"onReceiveTournamentCustomMessageCalled",          "()V",(void *) &onReceiveTournamentCustomMessageCalled},
		{"onReceiveUnreliableTournamentCustomMessageCalled","()V",(void *) &onReceiveUnreliableTournamentCustomMessageCalled},
    };

    // Get the extension class
    jclass cls = s3eEdkAndroidFindClass("s3eNextpeer");
    
	jclass cls1 = s3eEdkAndroidFindClass("com/ideaworks3d/marmalade/s3eNextpeerApplication");
    if (!cls1||!cls)
        goto fail;	

    // Get its constructor
    cons = env->GetMethodID(cls, "<init>", "()V");
    if (!cons)
        goto fail;

    // Construct the java class
    obj = env->NewObject(cls, cons);
    if (!obj)
        goto fail;

    // Get all the extension methods
    g_s3eNextpeerInitWithProductKey = env->GetMethodID(cls, "s3eNextpeerInitWithProductKey", "(Ljava/lang/String;)V");
    if (!g_s3eNextpeerInitWithProductKey)
        goto fail;

    g_s3eNextpeerLaunchDashboard = env->GetMethodID(cls, "s3eNextpeerLaunchDashboard", "()V");
    if (!g_s3eNextpeerLaunchDashboard)
        goto fail;

    g_s3eNextpeerLaunchDashboardWithCurrencyAmount = env->GetMethodID(cls, "s3eNextpeerLaunchDashboardWithCurrencyAmount", "(I)V");
    if (!g_s3eNextpeerLaunchDashboardWithCurrencyAmount)
        goto fail;

    g_s3eNextpeerDismissDashboard = env->GetMethodID(cls, "s3eNextpeerDismissDashboard", "()V");
    if (!g_s3eNextpeerDismissDashboard)
        goto fail;

    g_s3eNextpeerShutDown = env->GetMethodID(cls, "s3eNextpeerShutDown", "()V");
    if (!g_s3eNextpeerShutDown)
        goto fail;

    g_s3eNextpeerReportScoreForCurrentTournament = env->GetMethodID(cls, "s3eNextpeerReportScoreForCurrentTournament", "(I)V");
    if (!g_s3eNextpeerReportScoreForCurrentTournament)
        goto fail;

    g_s3eNextpeerIsCurrentlyInTournament = env->GetMethodID(cls, "s3eNextpeerIsCurrentlyInTournament", "()Z");
    if (!g_s3eNextpeerIsCurrentlyInTournament)
        goto fail;

    g_s3eNextpeerTimeLeftInTournament = env->GetMethodID(cls, "s3eNextpeerTimeLeftInTournament", "()I");
    if (!g_s3eNextpeerTimeLeftInTournament)
        goto fail;

    g_s3eNextpeerReportForfeitForCurrentTournament = env->GetMethodID(cls, "s3eNextpeerReportForfeitForCurrentTournament", "()V");
    if (!g_s3eNextpeerReportForfeitForCurrentTournament)
        goto fail;

    g_s3eNextpeerPushDataToOtherPlayers = env->GetMethodID(cls, "s3eNextpeerPushDataToOtherPlayers", "(II)V");
    if (!g_s3eNextpeerPushDataToOtherPlayers)
        goto fail;

    g_s3eNextpeerPushNotificationToOtherPlayers = env->GetMethodID(cls, "s3eNextpeerPushNotificationToOtherPlayers", "(Ljava/lang/String;)V");
    if (!g_s3eNextpeerPushNotificationToOtherPlayers)
        goto fail;

    g_s3eNextpeerHandleOpenURL = env->GetMethodID(cls, "s3eNextpeerHandleOpenURL", "(I)V");
    if (!g_s3eNextpeerHandleOpenURL)
        goto fail;

    g_s3eNextpeerRegisterOpenURLCallback = env->GetMethodID(cls, "s3eNextpeerRegisterOpenURLCallback", "()V");
    if (!g_s3eNextpeerRegisterOpenURLCallback)
        goto fail;

    g_s3eNextpeerSetUnifiedVirtualCurrencySupport = env->GetMethodID(cls, "s3eNextpeerSetUnifiedVirtualCurrencySupport", "(Z)V");
    if (!g_s3eNextpeerSetUnifiedVirtualCurrencySupport)
        goto fail;

    g_s3eNextpeerOpenFeed = env->GetMethodID(cls, "s3eNextpeerOpenFeed", "()V");
    if (!g_s3eNextpeerOpenFeed)
        goto fail;

    g_s3eNextpeerRegisterCallback = env->GetMethodID(cls, "s3eNextpeerRegisterCallback", "(III)I");
    if (!g_s3eNextpeerRegisterCallback)
        goto fail;

    g_s3eNextpeerUnRegisterCallback = env->GetMethodID(cls, "s3eNextpeerUnRegisterCallback", "(II)I");
    if (!g_s3eNextpeerUnRegisterCallback)
        goto fail;
	
    env->RegisterNatives(cls1, g_JNIthreadMethods, sizeof(g_JNIthreadMethods)/sizeof(g_JNIthreadMethods[0]));
	



    IwTrace(NEXTPEER, ("NEXTPEER init success"));
    g_Obj = env->NewGlobalRef(obj);
    env->DeleteLocalRef(obj);
    env->DeleteGlobalRef(cls);

    // Add any platform-specific initialisation code here
    return S3E_RESULT_SUCCESS;

fail:
    jthrowable exc = env->ExceptionOccurred();
    if (exc)
    {
        env->ExceptionDescribe();
        env->ExceptionClear();
        IwTrace(s3eNextpeer, ("One or more java methods could not be found"));
    }
    return S3E_RESULT_ERROR;

}

void s3eNextpeerTerminate_platform()
{
    // Add any platform-specific termination code here
}

void s3eNextpeerInitWithProductKey_platform(const char* productKey)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    jstring productKey_jstr = env->NewStringUTF(productKey);
    env->CallVoidMethod(g_Obj, g_s3eNextpeerInitWithProductKey, productKey_jstr);
}

void s3eNextpeerLaunchDashboard_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerLaunchDashboard);
}

void s3eNextpeerLaunchDashboardWithCurrencyAmount_platform(uint32 unifiedVirtualCurrencyAmount)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerLaunchDashboardWithCurrencyAmount, unifiedVirtualCurrencyAmount);
}

void s3eNextpeerDismissDashboard_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerDismissDashboard);
}

void s3eNextpeerShutDown_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerShutDown);
}

void s3eNextpeerReportScoreForCurrentTournament_platform(uint32 score)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerReportScoreForCurrentTournament, score);
}

s3eBool s3eNextpeerIsCurrentlyInTournament_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (s3eBool)env->CallBooleanMethod(g_Obj, g_s3eNextpeerIsCurrentlyInTournament);
}

uint32 s3eNextpeerTimeLeftInTournament_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (uint32)env->CallIntMethod(g_Obj, g_s3eNextpeerTimeLeftInTournament);
}

void s3eNextpeerReportForfeitForCurrentTournament_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerReportForfeitForCurrentTournament);
}

void s3eNextpeerPushDataToOtherPlayers_platform(const void* data, uint32 length)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerPushDataToOtherPlayers, data, length);
}

void s3eNextpeerPushNotificationToOtherPlayers_platform(const char * notice)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    jstring notice_jstr = env->NewStringUTF(notice);
    env->CallVoidMethod(g_Obj, g_s3eNextpeerPushNotificationToOtherPlayers, notice_jstr);
}

void s3eNextpeerHandleOpenURL_platform(void* url)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerHandleOpenURL, url);
}

void s3eNextpeerRegisterOpenURLCallback_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerRegisterOpenURLCallback);
}

void s3eNextpeerSetUnifiedVirtualCurrencySupport_platform(s3eBool unifiedVirtualCurrencySupported)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerSetUnifiedVirtualCurrencySupport, unifiedVirtualCurrencySupported);
}

void s3eNextpeerOpenFeed_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerOpenFeed);
}

s3eResult s3eNextpeerRegisterCallback_platform(s3eNextperCallback cbid, s3eCallback fn, void* pData)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (s3eResult)env->CallIntMethod(g_Obj, g_s3eNextpeerRegisterCallback, cbid, fn, pData);
}

s3eResult s3eNextpeerUnRegisterCallback_platform(s3eNextperCallback cbid, s3eCallback fn)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (s3eResult)env->CallIntMethod(g_Obj, g_s3eNextpeerUnRegisterCallback, cbid, fn);
}
