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
static jmethodID g_s3eNextpeerChangeCurrentPlayerAvatarUrl;
static jmethodID g_s3eNextpeerChangeCurrentPlayerName;
static jmethodID g_s3eNextpeerEnableRankingDisplay;
static jmethodID g_s3eNextpeerGetCurrentPlayerDetails;
static jmethodID g_s3eNextpeerGetNextpeerVersion;
static jmethodID g_s3eNextpeerIsCurrentlyInTournament;
static jmethodID g_s3eNextpeerIsNextpeerInitialised;
static jmethodID g_s3eNextpeerIsNextpeerSupported;
static jmethodID g_s3eNextpeerLaunchDashboard;
static jmethodID g_s3eNextpeerPushDataToOtherPlayers;
static jmethodID g_s3eNextpeerReportControlledTournamentOverWithScore;
static jmethodID g_s3eNextpeerReportForfeitForCurrentTournament;
static jmethodID g_s3eNextpeerReportScoreForCurrentTournament;
static jmethodID g_s3eNextpeerTimeLeftForTournament;
static jmethodID g_s3eNextpeerUnreliablePushDataToOtherPlayers;

//static char* g_RetStr =NULL;
static int g_RetStrLen = 16384;
static char test[100];

static jint  jints[10];

void* cleanup(uint32 extID, int32 notification, void *systemData, void *instance, int32 returnCode, void *completeData)
{ 	
 // IwTrace("NEXTPEER",("CLEEEEEEEEANUP %p",systemData));
  
  //delete systemData; 
  return NULL;
}

const char* getCString(JNIEnv *env, jstring str)
{   
	char* g_RetStr = NULL; 
	jboolean free;
	const char* res = env->GetStringUTFChars(str, &free);
	
	//IwTrace(NEXTPEER,("getString strlen: %d data: %s",strlen(res),(char*) res));
	
    g_RetStrLen = strlen(res) + 1;
    g_RetStr = (char *)s3eEdkReallocOS(g_RetStr, g_RetStrLen);
    strcpy(g_RetStr, res);
    env->ReleaseStringUTFChars(str, res);
	
	
    return g_RetStr;
	
}


void onNextpeerAppearCalled()
{
	IwTrace(NEXTPEER, ("onNextpeerAppearCalled"));
	s3eResult res = S3E_RESULT_SUCCESS;
	
	s3eEdkCallbacksEnqueue(S3E_EXT_NEXTPEER_HASH,S3E_NEXTPEER_CALLBACK_NEXTPEER_DID_APPEAR,&res,4,&res,S3E_TRUE);
	
}

void onNextpeerDisappearCalled()
{
	IwTrace(NEXTPEER, ("onNextpeerDisappearCalled"));
	s3eResult res = S3E_RESULT_SUCCESS;
	
	s3eEdkCallbacksEnqueue(S3E_EXT_NEXTPEER_HASH,S3E_NEXTPEER_CALLBACK_NEXTPEER_DID_DISAPPEAR,&res,4,&res,S3E_TRUE);
	
}

void onNextpeerReturnToGameCalled()
{
	IwTrace(NEXTPEER, ("onNextpeerReturnToGameCalled"));
	s3eResult res = S3E_RESULT_SUCCESS;
	
	s3eEdkCallbacksEnqueue(S3E_EXT_NEXTPEER_HASH,S3E_NEXTPEER_CALLBACK_NEXTPEER_RETURNED_TO_GAME,&res,4,&res,S3E_TRUE);
	
}

void onReceiveTournamentStatusCalled(JNIEnv *env, jobject _this, jstring tournamentStatus)
{   
    
	
	char* status = (char*)getCString(env,tournamentStatus);
	
	s3eEdkCallbacksEnqueue(S3E_EXT_NEXTPEER_HASH,S3E_NEXTPEER_CALLBACK_RECEIVED_TOURNAMENT_STATUS,status,strlen(status),NULL,S3E_FALSE);
	
	//IwTrace(NEXTPEER, ("onReceiveTournamentStatusCalled strlen: %d data: %s",strlen(status),status));
	
	s3eEdkFreeOS(status);
}

void onSupportsTournamentCalled(JNIEnv *env, jobject obj, jstring Uuid )
{
	char* uuid = (char*) getCString(env, Uuid);
	
	s3eEdkCallbacksEnqueue(S3E_EXT_NEXTPEER_HASH,		
		S3E_NEXTPEER_CALLBACK_GAME_SUPPORTS_TOURNAMENT, uuid,strlen(uuid), NULL, S3E_FALSE,(s3eEdkCallbackCompleteFn)cleanup,NULL);
		
	IwTrace(NEXTPEER, ("onSupportsTournamentCalled %s",uuid));
	 
	s3eEdkFreeOS(uuid);
   
}

void onTournamentStartCalled(JNIEnv *env, jobject _this, jstring startData)
{
		
	char* data = (char*) getCString(env, startData);
	
	s3eEdkCallbacksEnqueue(S3E_EXT_NEXTPEER_HASH,		
		S3E_NEXTPEER_CALLBACK_TOURNAMENT_STARTS, data,strlen(data), NULL, S3E_FALSE,(s3eEdkCallbackCompleteFn)cleanup,NULL);
		
	IwTrace(NEXTPEER, ("onTournamentStartCalled %s",data));
	 
	s3eEdkFreeOS(data);
}

void onTournamentEndCalled(JNIEnv *env, jobject _this, jstring endData)
{
	char* data = (char*) getCString(env, endData);
	
	s3eEdkCallbacksEnqueue(S3E_EXT_NEXTPEER_HASH,		
		S3E_NEXTPEER_CALLBACK_TOURNAMENT_ENDS, data,strlen(data), NULL, S3E_FALSE,(s3eEdkCallbackCompleteFn)cleanup,NULL);
		
	IwTrace(NEXTPEER, ("onTournamentEndCalled %s",data));
	 
	s3eEdkFreeOS(data);
}

void onReceiveTournamentCustomMessageCalled(JNIEnv *env, jobject _this, jobject message)
{
	IwTrace(NEXTPEER, ("onReceiveTournamentCustomMessageCalled"));
}
void onReceiveUnreliableTournamentCustomMessageCalled(JNIEnv *env, jobject _this, jobject customMessage)
{
	IwTrace(NEXTPEER, ("onReceiveUnreliableTournamentCustomMessageCalled"));
}

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


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
		{"onReceiveTournamentStatusCalled",                 "(Ljava/lang/String;)V",(void *) &onReceiveTournamentStatusCalled},
		{"onSupportsTournamentCalled",                      "(Ljava/lang/String;)V",(void *) &onSupportsTournamentCalled},
		{"onTournamentStartCalled",                         "(Ljava/lang/String;)V",(void *) &onTournamentStartCalled},
		{"onTournamentEndCalled",                           "(Ljava/lang/String;)V",(void *) &onTournamentEndCalled},
		{"onReceiveTournamentCustomMessageCalled",          "(Ljava/lang/Object;)V",(void *) &onReceiveTournamentCustomMessageCalled},
		{"onReceiveUnreliableTournamentCustomMessageCalled","(Ljava/lang/Object;)V",(void *) &onReceiveUnreliableTournamentCustomMessageCalled},
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
    g_s3eNextpeerChangeCurrentPlayerAvatarUrl = env->GetMethodID(cls, "s3eNextpeerChangeCurrentPlayerAvatarUrl", "(Ljava/lang/String;)V");
    if (!g_s3eNextpeerChangeCurrentPlayerAvatarUrl)
        goto fail;

    g_s3eNextpeerChangeCurrentPlayerName = env->GetMethodID(cls, "s3eNextpeerChangeCurrentPlayerName", "(Ljava/lang/String;)V");
    if (!g_s3eNextpeerChangeCurrentPlayerName)
        goto fail;

    g_s3eNextpeerEnableRankingDisplay = env->GetMethodID(cls, "s3eNextpeerEnableRankingDisplay", "(Z)V");
    if (!g_s3eNextpeerEnableRankingDisplay)
        goto fail;

    g_s3eNextpeerGetCurrentPlayerDetails = env->GetMethodID(cls, "s3eNextpeerGetCurrentPlayerDetails", "()Ljava/lang/String;");
    if (!g_s3eNextpeerGetCurrentPlayerDetails)
        goto fail;

    g_s3eNextpeerGetNextpeerVersion = env->GetMethodID(cls, "s3eNextpeerGetNextpeerVersion", "()Ljava/lang/String;");
    if (!g_s3eNextpeerGetNextpeerVersion)
        goto fail;

    g_s3eNextpeerIsCurrentlyInTournament = env->GetMethodID(cls, "s3eNextpeerIsCurrentlyInTournament", "()Z");
    if (!g_s3eNextpeerIsCurrentlyInTournament)
        goto fail;

    g_s3eNextpeerIsNextpeerInitialised = env->GetMethodID(cls, "s3eNextpeerIsNextpeerInitialised", "()Z");
    if (!g_s3eNextpeerIsNextpeerInitialised)
        goto fail;

    g_s3eNextpeerIsNextpeerSupported = env->GetMethodID(cls, "s3eNextpeerIsNextpeerSupported", "()Z");
    if (!g_s3eNextpeerIsNextpeerSupported)
        goto fail;

    g_s3eNextpeerLaunchDashboard = env->GetMethodID(cls, "s3eNextpeerLaunchDashboard", "()V");
    if (!g_s3eNextpeerLaunchDashboard)
        goto fail;

    g_s3eNextpeerPushDataToOtherPlayers = env->GetMethodID(cls, "s3eNextpeerPushDataToOtherPlayers", "([B)V");
    if (!g_s3eNextpeerPushDataToOtherPlayers)
        goto fail;

    g_s3eNextpeerReportControlledTournamentOverWithScore = env->GetMethodID(cls, "s3eNextpeerReportControlledTournamentOverWithScore", "(I)V");
    if (!g_s3eNextpeerReportControlledTournamentOverWithScore)
        goto fail;

    g_s3eNextpeerReportForfeitForCurrentTournament = env->GetMethodID(cls, "s3eNextpeerReportForfeitForCurrentTournament", "()V");
    if (!g_s3eNextpeerReportForfeitForCurrentTournament)
        goto fail;

    g_s3eNextpeerReportScoreForCurrentTournament = env->GetMethodID(cls, "s3eNextpeerReportScoreForCurrentTournament", "(I)V");
    if (!g_s3eNextpeerReportScoreForCurrentTournament)
        goto fail;

    g_s3eNextpeerTimeLeftForTournament = env->GetMethodID(cls, "s3eNextpeerTimeLeftForTournament", "()I");
    if (!g_s3eNextpeerTimeLeftForTournament)
        goto fail;

    g_s3eNextpeerUnreliablePushDataToOtherPlayers = env->GetMethodID(cls, "s3eNextpeerUnreliablePushDataToOtherPlayers", "([B)V");
    if (!g_s3eNextpeerUnreliablePushDataToOtherPlayers)
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

void s3eNextpeerChangeCurrentPlayerAvatarUrl_platform(char* Url)
{	
	IwTrace(NEXTPEER,("s3eNextpeerChangeCurrentPlayerName_platform %s",Url));
    JNIEnv* env = s3eEdkJNIGetEnv();
	jstring urlString =env->NewStringUTF(Url);
    env->CallVoidMethod(g_Obj, g_s3eNextpeerChangeCurrentPlayerAvatarUrl, urlString);
	env->DeleteLocalRef(urlString);
}

void s3eNextpeerChangeCurrentPlayerName_platform(char* name)
{
	IwTrace(NEXTPEER,("s3eNextpeerChangeCurrentPlayerName_platform %s",name));
    JNIEnv* env = s3eEdkJNIGetEnv();
	jstring nameString  = env-> NewStringUTF(name);
    env->CallVoidMethod(g_Obj, g_s3eNextpeerChangeCurrentPlayerName, nameString);
	env->DeleteLocalRef(nameString);
}

void s3eNextpeerEnableRankingDisplay_platform(bool enableRankingDisplay)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerEnableRankingDisplay, enableRankingDisplay);
}

char* s3eNextpeerGetCurrentPlayerDetails_platform()
{
	
	
    JNIEnv* env = s3eEdkJNIGetEnv();
    jstring ret = (jstring)env->CallObjectMethod(g_Obj, g_s3eNextpeerGetCurrentPlayerDetails);
	
	
	IwTrace(NEXTPEER,("s3eNextpeerGetCurrentPlayerDetails_platform"));
	
	return (char*)getCString(env, ret);
  
}

char* s3eNextpeerGetNextpeerVersion_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (char*)env->CallObjectMethod(g_Obj, g_s3eNextpeerGetNextpeerVersion);
}

bool s3eNextpeerIsCurrentlyInTournament_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (bool)env->CallBooleanMethod(g_Obj, g_s3eNextpeerIsCurrentlyInTournament);
}

bool s3eNextpeerIsNextpeerInitialised_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (bool)env->CallBooleanMethod(g_Obj, g_s3eNextpeerIsNextpeerInitialised);
}

bool s3eNextpeerIsNextpeerSupported_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (bool)env->CallBooleanMethod(g_Obj, g_s3eNextpeerIsNextpeerSupported);
}

void s3eNextpeerLaunchDashboard_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerLaunchDashboard);
}

void s3eNextpeerPushDataToOtherPlayers_platform(void* data, uint32 size)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
	jbyteArray ret = env->NewByteArray(size);
	env->SetByteArrayRegion(ret,0,size,(jbyte*)data);
    env->CallVoidMethod(g_Obj, g_s3eNextpeerPushDataToOtherPlayers,ret);
	env->DeleteLocalRef(ret);
}

void s3eNextpeerReportControlledTournamentOverWithScore_platform(uint32 score)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerReportControlledTournamentOverWithScore, score);
}

void s3eNextpeerReportForfeitForCurrentTournament_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerReportForfeitForCurrentTournament);
}

void s3eNextpeerReportScoreForCurrentTournament_platform(uint32 score)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_s3eNextpeerReportScoreForCurrentTournament, score);
}

uint32 s3eNextpeerTimeLeftForTournament_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (uint32)env->CallIntMethod(g_Obj, g_s3eNextpeerTimeLeftForTournament);
}

void s3eNextpeerUnreliablePushDataToOtherPlayers_platform(void* data, uint32 size)
{
	JNIEnv* env = s3eEdkJNIGetEnv();
	jbyteArray ret = env->NewByteArray(size);
	env->SetByteArrayRegion(ret,0,size,(jbyte*)data);
    env->CallVoidMethod(g_Obj, g_s3eNextpeerUnreliablePushDataToOtherPlayers,ret);
	env->DeleteLocalRef(ret);
}
