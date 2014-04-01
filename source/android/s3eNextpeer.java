/*
java implementation of the s3eNextpeer extension.

Add android-specific functionality here.

These functions are called via JNI from native code.
*/
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
//package com.mycompany.next_peer_test;

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


    public void s3eNextpeerInitWithProductKey(String productKey)
    {
     
      
        
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
	
    public void s3eNextpeerLaunchDashboardWithCurrencyAmount(int unifiedVirtualCurrencyAmount)
    {
        
    }
	
    public void s3eNextpeerDismissDashboard()
    {
        
    }
	
    public void s3eNextpeerShutDown()
    {
        
    }
	
    public void s3eNextpeerReportScoreForCurrentTournament(int score)
    {
        Nextpeer.reportScoreForCurrentTournament(score);
    }
	
    public boolean s3eNextpeerIsCurrentlyInTournament()
    {
        return Nextpeer.isCurrentlyInTournament();
    }
	
    public int s3eNextpeerTimeLeftInTournament()
    {
        return Nextpeer.timeLeftForTournament();
    }
	
    public void s3eNextpeerReportForfeitForCurrentTournament()
    {
        Nextpeer.reportForfeitForCurrentTournament();
    }
	
    public void s3eNextpeerPushDataToOtherPlayers(int data, int length)
    {
        
    }
	
    public void s3eNextpeerPushNotificationToOtherPlayers(String notice)
    {
        
    }
	
    public void s3eNextpeerHandleOpenURL(int url)
    {
        
    }
	
    public void s3eNextpeerRegisterOpenURLCallback()
    {
        
    }
	
    public void s3eNextpeerSetUnifiedVirtualCurrencySupport(boolean unifiedVirtualCurrencySupported)
    {
        
    }
	
    public void s3eNextpeerOpenFeed()
    {
        
    }
	
    public int s3eNextpeerRegisterCallback(int cbid, int fn, int pData)
    {
        return 0;
    }
	
    public int s3eNextpeerUnRegisterCallback(int cbid, int fn)
    {
        return 0;
    }
}
