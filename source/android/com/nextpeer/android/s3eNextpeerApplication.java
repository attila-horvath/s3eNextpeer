package com.ideaworks3d.marmalade;




import com.nextpeer.android.*;
import android.content.Context;
import android.app.Application;
import android.util.Log;
import android.content.Intent;
import android.os.Bundle;

public class s3eNextpeerApplication extends Application  
{
    private static final String TAG = "NextPeer";
    private NextpeerTournamentStartData mStartData;
    
	//Native functions for forwarding callbacks
	
	private native void onNextpeerAppearCalled();
	private native void onNextpeerDisappearCalled();
	private native void onNextpeerReturnToGameCalled();
	private native void onReceiveTournamentStatusCalled(Object tournamentStatus);
	private native void onSupportsTournamentCalled();
	private native void onTournamentStartCalled();
	private native void onTournamentEndCalled();
	private native void onReceiveTournamentCustomMessageCalled();
	private native void onReceiveUnreliableTournamentCustomMessageCalled();

	

	@Override
	public void onCreate() 
	{
		super.onCreate();
		NextpeerSettings settings = new NextpeerSettings();
		Log.d(TAG, "Initialise");
		Nextpeer.initialize(this, "4be97b453cda74c80d35fde876d55ecf", _nextpeerListener, settings);
	}

	
	private NextpeerListener _nextpeerListener = new NextpeerListener() 
    {
		@Override
		public void onNextpeerAppear()
		{ 
			Log.d(TAG, "onNextpeerAppear");
		}
		
		@Override
		public void onNextpeerDisappear() 
		{
			Log.d(TAG, "onNextpeerDisappear");
		}
		
		@Override
		public void onNextpeerReturnToGame() 
		{
			Log.d(TAG, "onNextpeerReturnToGame");
		}
		
		@Override
		public void onReceiveTournamentStatus(NextpeerTournamentStatusInfo tournamentStatus) 
		{
			onReceiveTournamentStatusCalled(tournamentStatus);
			Log.d(TAG, "onReceiveTournamentStatus");
		}
		
		@Override
		public boolean onSupportsTournament(java.lang.String tournamentUuid) 
		{
			Log.d(TAG, "onSupportsTournament tournamentUuid: "+tournamentUuid );
			
			return true;
		}
		
		@Override
		// The tournament's game scene should be loaded
		public void onTournamentStart(NextpeerTournamentStartData startData) 
		{	
			Log.d(TAG, "onTournamentStart");
			
			mStartData = startData;
		}
		
		@Override
		// The tournament's main menu should be loaded
		public void onTournamentEnd(NextpeerTournamentEndData endData) 
		{	
			Log.d(TAG, "onTournamentEnd");
			
			mStartData = null;
	      
		}
		
		@Override
		// The game received a custom message on the reliable protocol
		public void onReceiveTournamentCustomMessage(NextpeerTournamentCustomMessage message)
		{
			Log.d(TAG, "onReceiveTournamentCustomMessage");
			
			
			
		}

		@Override
		// The game received a custom message on the unreliable protocol
		public void onReceiveUnreliableTournamentCustomMessage(NextpeerTournamentCustomMessage message)
		{
			Log.d(TAG, "onReceiveUnreliableTournamentCustomMessage");
			
			
		}
	};

	
	}

