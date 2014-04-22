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
import com.ideaworks3d.marmalade.SuspendResumeEvent;
import com.ideaworks3d.marmalade.SuspendResumeListener;
import android.util.Log;
import android.os.Bundle;
import android.content.Context;
import android.app.Application;
import com.ideaworks3d.marmalade.s3eNextpeerApplication;
import com.google.gson.*;


class s3eNextpeer //implements SuspendResumeListener
{
	private NextpeerTournamentStartData mStartData;
	private NextpeerTournamentPlayer currentPlayer; 
	Gson gson =new Gson();
	boolean dashboardisup = false;
    
    private static final String TAG = "NextPeer";
	
	
	
	/*public void onSuspendResumeEvent(SuspendResumeEvent e)
	{
		//if(Nextpeer.isCurrentlyInTournament())
		//return;
		Log.d(TAG," onSuspendResumeEvent ");
		
		if(e.eventType == SuspendResumeEvent.EventType.RESUME && dashboardisup)
		{ 	
			Log.d(TAG," onSuspendResumeEvent RESUME ");
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
		
	} */

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
    public String s3eNextpeerGetCurrentPlayerDetails()
    {
		currentPlayer =  Nextpeer.getCurrentPlayerDetails();
		String json = gson.toJson(currentPlayer);
		Log.d(TAG,"s3eNextpeerGetCurrentPlayerDetails "+ json);
        
		return json;
		
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
		boolean initialised = Nextpeer.isNextpeerInitialized();
		
		Log.d(TAG,"s3eNextpeerIsNextpeerInitialised "+ initialised);
		
		return initialised;
    }
    public boolean s3eNextpeerIsNextpeerSupported()
    {
		boolean supported = Nextpeer.isNextpeerSupported();
		Log.d(TAG,"s3eNextpeerIsNextpeerSupported "+supported);
		
		return supported;
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
    public void s3eNextpeerPushDataToOtherPlayers(byte[] data)
    {
		Log.d(TAG,"s3eNextpeerPushDataToOtherPlayers");
		
		try
		{
			Nextpeer.pushDataToOtherPlayers(data);
		}
		catch(java.lang.IllegalStateException exc)
		{  
			String exception = exc.toString();
			Log.d(TAG, exception);
		}
		catch(java.lang.IllegalArgumentException exc)
		{
			String exception = exc.toString();
			Log.d(TAG, exception);
		}	
    }
    public void s3eNextpeerReportControlledTournamentOverWithScore(int score)
    {
		Log.d(TAG,"s3eNextpeerReportControlledTournamentOverWithScore" +score);
		
        Nextpeer.reportControlledTournamentOverWithScore(score);
    }
    public void s3eNextpeerReportForfeitForCurrentTournament()
    {
		Log.d(TAG,"s3eNextpeerReportForfeitForCurrentTournament");
		
        Nextpeer.reportForfeitForCurrentTournament();
    }
    public void s3eNextpeerReportScoreForCurrentTournament(int score)
    {
		Log.d (TAG, "s3eNextpeerReportScoreForCurrentTournament  "+score);
		
        Nextpeer.reportScoreForCurrentTournament(score);
    }
    public int s3eNextpeerTimeLeftForTournament()
    {	
		int time = Nextpeer.timeLeftForTournament();
		
		//Log.d (TAG, "s3eNextpeerTimeLeftForTournament"+time);
		
        return time;
    }
    public void s3eNextpeerUnreliablePushDataToOtherPlayers(byte[] data)
    {  
		Log.d (TAG, "s3eNextpeerUnreliablePushDataToOtherPlayers");
		
		try
		{
			Nextpeer.unreliablePushDataToOtherPlayers(data);
		}
		catch(java.lang.IllegalStateException exc)
		{  
			String exception = exc.toString();
			Log.d(TAG, exception);
		}
		catch(java.lang.IllegalArgumentException exc)
		{
			String exception = exc.toString();
			Log.d(TAG, exception);
		}		
        
    }
}
