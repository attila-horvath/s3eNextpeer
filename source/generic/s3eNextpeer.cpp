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

void s3eNextpeerChangeCurrentPlayerAvatarUrl(char* Url)
{
	s3eNextpeerChangeCurrentPlayerAvatarUrl_platform(Url);
}

void s3eNextpeerChangeCurrentPlayerName(char* name)
{
	s3eNextpeerChangeCurrentPlayerName_platform(name);
}

void s3eNextpeerEnableRankingDisplay(bool enableRankingDisplay)
{
	s3eNextpeerEnableRankingDisplay_platform(enableRankingDisplay);
}

char* s3eNextpeerGetCurrentPlayerDetails()
{
	s3eNextpeerGetCurrentPlayerDetails_platform();
}

char* s3eNextpeerGetNextpeerVersion()
{
	s3eNextpeerGetNextpeerVersion_platform();
}

bool s3eNextpeerIsCurrentlyInTournament()
{
	return s3eNextpeerIsCurrentlyInTournament_platform();
}

bool s3eNextpeerIsNextpeerInitialised()
{
	return s3eNextpeerIsNextpeerInitialised_platform();
}

bool s3eNextpeerIsNextpeerSupported()
{
	return s3eNextpeerIsNextpeerSupported_platform();
}

void s3eNextpeerLaunchDashboard()
{
	s3eNextpeerLaunchDashboard_platform();
}

void s3eNextpeerPushDataToOtherPlayers(void* data, uint32 length)
{
	s3eNextpeerPushDataToOtherPlayers_platform(data, length);
}

void s3eNextpeerReportControlledTournamentOverWithScore(uint32 score)
{
	s3eNextpeerReportControlledTournamentOverWithScore_platform(score);
}

void s3eNextpeerReportForfeitForCurrentTournament()
{
	s3eNextpeerReportForfeitForCurrentTournament_platform();
}

void s3eNextpeerReportScoreForCurrentTournament(uint32 score)
{
	s3eNextpeerReportScoreForCurrentTournament_platform(score);
}

uint32 s3eNextpeerTimeLeftForTournament()
{
	s3eNextpeerTimeLeftForTournament_platform();
}

void s3eNextpeerUnreliablePushDataToOtherPlayers(void* data, uint32 length)
{
	s3eNextpeerUnreliablePushDataToOtherPlayers_platform(data, length);
}
