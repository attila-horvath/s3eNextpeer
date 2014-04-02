/*
java implementation of the s3eNextpeer extension.

Add android-specific functionality here.

These functions are called via JNI from native code.
*/
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
import com.nextpeer.android.*;
import com.ideaworks3d.marmalade.LoaderAPI;
import com.ideaworks3d.marmalade.LoaderActivity;
import android.util.Log;
import android.os.Bundle;
import android.content.Context;
import android.app.Application;
import com.ideaworks3d.marmalade.s3eNextpeerApplication;

class s3eNextpeer
{
	private NextpeerTournamentStartData mStartData;
    
    private static final String TAG = "NextPeer";

    public void s3eNextpeerChangeCurrentPlayerAvatarUrl(String Url)
    {
        Nextpeer.changeCurrentPlayerAvatarUrl(Url);
    }
    public void s3eNextpeerChangeCurrentPlayerName(String name)
    {
        Nextpeer.changeCurrentPlayerName(name);
    }
    public void s3eNextpeerEnableRankingDisplay(boolean enableRankingDisplay)
    {
        Nextpeer.enableRankingDisplay(enableRankingDisplay);
    }
    public int s3eNextpeerGetCurrentPlayerDetails()
    {
	    //todo here to return NextpeerTournamentPlayer
        //return Nextpeer.getCurrentPlayerDetails();
		return 0;
    }
    public String s3eNextpeerGetNextpeerVersion()
    {
        return Nextpeer.getNextpeerVersion();
    }
    public boolean s3eNextpeerIsCurrentlyInTournament()
    {
		return Nextpeer.isCurrentlyInTournament();
    }
    public boolean s3eNextpeerIsNextpeerInitialised()
    {
		return Nextpeer.isNextpeerInitialized();
    }
    public boolean s3eNextpeerIsNextpeerSupported()
    {
		return Nextpeer.isNextpeerSupported();
    }
    public void s3eNextpeerLaunchDashboard()
    {
		  Log.d(TAG,"s3eNextpeerLaunchDashboard");
        try
        {
            Nextpeer.launch();
        }
        catch(java.lang.IllegalStateException exc)
        {
          String exception = exc.toString();
          Log.d(TAG, exception);
        }
   
        
    }
    public void s3eNextpeerPushDataToOtherPlayers(byte[] data, int length)
    {
        Nextpeer.pushDataToOtherPlayers(data);
    }
    public void s3eNextpeerReportControlledTournamentOverWithScore(int score)
    {
        Nextpeer.reportControlledTournamentOverWithScore(score);
    }
    public void s3eNextpeerReportForfeitForCurrentTournament()
    {
        Nextpeer.reportForfeitForCurrentTournament();
    }
    public void s3eNextpeerReportScoreForCurrentTournament(int score)
    {
        Nextpeer.reportScoreForCurrentTournament(score);
    }
    public int s3eNextpeerTimeLeftForTournament()
    {
        return Nextpeer.timeLeftForTournament();
    }
    public void s3eNextpeerUnreliablePushDataToOtherPlayers(byte[] data, int length)
    {
        Nextpeer.unreliablePushDataToOtherPlayers(data);
    }
}
