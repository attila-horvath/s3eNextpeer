package com.ideaworks3d.marmalade;

import com.ideaworks3d.marmalade.LoaderAPI;
import com.ideaworks3d.marmalade.LoaderActivity;
import com.nextpeer.android.*;
import android.util.Log; 

public class s3eNextpeerActivity extends LoaderActivity
{
    private static final String TAG = "NextPeer";
	
    @Override
    protected void onStart()
    {
        Log.d(TAG,"s3eNextpeerActivity onStart");
       
        super.onStart();
		//init(pkgname)
        
        Nextpeer.onStart();

    }
	
	@Override
	protected void onStop()
	{
	    super.onStop();
	  
		if (Nextpeer.isCurrentlyInTournament()) 
		{  
		  Log.d(TAG,"s3eNextpeerActivity OnStop calling reportForfeitForCurrentTournament()");
		  
		  Nextpeer.reportForfeitForCurrentTournament(); 
		}	
	}
}
