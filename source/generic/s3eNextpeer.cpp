/*
Generic implementation of the s3eNextpeer extension.
This file should perform any platform-indepedentent functionality
(e.g. error checking) before calling platform-dependent implementations.
*/

/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */


#include "s3eNextpeer_internal.h"
s3eResult s3eNextpeerInit()
{
    //Add any generic initialisation code here
    return s3eNextpeerInit_platform();
}

void s3eNextpeerTerminate()
{
    //Add any generic termination code here
    s3eNextpeerTerminate_platform();
}

void s3eNextpeerInitWithProductKey(const char* productKey)
{
	s3eNextpeerInitWithProductKey_platform(productKey);
}

void s3eNextpeerLaunchDashboard()
{
	s3eNextpeerLaunchDashboard_platform();
}

void s3eNextpeerLaunchDashboardWithCurrencyAmount(uint32 unifiedVirtualCurrencyAmount)
{
	s3eNextpeerLaunchDashboardWithCurrencyAmount_platform(unifiedVirtualCurrencyAmount);
}

void s3eNextpeerDismissDashboard()
{
	s3eNextpeerDismissDashboard_platform();
}

void s3eNextpeerShutDown()
{
	s3eNextpeerShutDown_platform();
}

void s3eNextpeerReportScoreForCurrentTournament(uint32 score)
{
	s3eNextpeerReportScoreForCurrentTournament_platform(score);
}

s3eBool s3eNextpeerIsCurrentlyInTournament()
{
	return s3eNextpeerIsCurrentlyInTournament_platform();
}

uint32 s3eNextpeerTimeLeftInTournament()
{
	return s3eNextpeerTimeLeftInTournament_platform();
}

void s3eNextpeerReportForfeitForCurrentTournament()
{
	s3eNextpeerReportForfeitForCurrentTournament_platform();
}

void s3eNextpeerPushDataToOtherPlayers(const void* data, uint32 length)
{
	s3eNextpeerPushDataToOtherPlayers_platform(data, length);
}

void s3eNextpeerPushNotificationToOtherPlayers(const char * notice)
{
	s3eNextpeerPushNotificationToOtherPlayers_platform(notice);
}

void s3eNextpeerHandleOpenURL(void* url)
{
	s3eNextpeerHandleOpenURL_platform(url);
}

void s3eNextpeerRegisterOpenURLCallback()
{
	s3eNextpeerRegisterOpenURLCallback_platform();
}

void s3eNextpeerSetUnifiedVirtualCurrencySupport(s3eBool unifiedVirtualCurrencySupported)
{
	s3eNextpeerSetUnifiedVirtualCurrencySupport_platform(unifiedVirtualCurrencySupported);
}

void s3eNextpeerOpenFeed()
{
	s3eNextpeerOpenFeed_platform();
}

s3eResult s3eNextpeerRegisterCallback(s3eNextperCallback cbid, s3eCallback fn, void* pData)
{
	return s3eNextpeerRegisterCallback_platform(cbid, fn, pData);
}

s3eResult s3eNextpeerUnRegisterCallback(s3eNextperCallback cbid, s3eCallback fn)
{
	return s3eNextpeerUnRegisterCallback_platform(cbid, fn);
}
