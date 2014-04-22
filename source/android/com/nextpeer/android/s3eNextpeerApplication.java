package com.ideaworks3d.marmalade;




import com.nextpeer.android.*;
import android.content.Context;
import android.app.Application;
import android.util.Log;
import android.content.Intent;
import android.os.Bundle;
import com.google.gson.*;


public class s3eNextpeerApplication extends Application  
{
    private static final String TAG = "NextPeer";
    private NextpeerTournamentStartData mStartData;
	Gson gson =new Gson();
	
	
	//Native functions for forwarding callbacks
	
	private native void onNextpeerAppearCalled();
	private native void onNextpeerDisappearCalled();
	private native void onNextpeerReturnToGameCalled();
	private native void onReceiveTournamentStatusCalled(String tournamentStatus);
	private static native void onSupportsTournamentCalled(String Uuid);
	private native void onTournamentStartCalled(String startData);
	private native void onTournamentEndCalled(String endData);
	private native void onReceiveTournamentCustomMessageCalled(Object message);
	private native void onReceiveUnreliableTournamentCustomMessageCalled(Object customMessage);


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
			onNextpeerAppearCalled();
		}
		
		@Override
		public void onNextpeerDisappear() 
		{
			Log.d(TAG, "onNextpeerDisappear");
			onNextpeerDisappearCalled();
		}
		
		@Override
		public void onNextpeerReturnToGame() 
		{
			Log.d(TAG, "onNextpeerReturnToGame");
			onNextpeerReturnToGameCalled();
		}
		
		@Override
		public void onReceiveTournamentStatus(NextpeerTournamentStatusInfo tournamentStatus) 
		{
			String json = gson.toJson(tournamentStatus);
			Log.d(TAG, "onReceiveTournamentStatus"+json+" strlen: "+json.length());
			
			onReceiveTournamentStatusCalled(json);
		}
		
		@Override
		public boolean onSupportsTournament(String tournamentUuid) 
		{	
			
			onSupportsTournamentCalled(tournamentUuid);
			Log.d(TAG, "onSupportsTournament tournamentUuid: "+tournamentUuid );
			
			return true;
		}
		
		@Override
		public void onTournamentStart(NextpeerTournamentStartData data) 
		{	
			 
			String json = gson.toJson(data);
			
			Log.d(TAG, "onTournamentStart "+json+" strlen: "+json.length());
			
			onTournamentStartCalled(json);
			mStartData = data;
		}
		
		@Override
		public void onTournamentEnd(NextpeerTournamentEndData endData) 
		{	
		    String json = gson.toJson(endData);
			Log.d(TAG, "onTournamentEnd"+json+" strlen: "+json.length());
			
			onTournamentEndCalled(json);
			mStartData = null; 
		}
		
		@Override
		// The game received a custom message on the reliable protocol
		public void onReceiveTournamentCustomMessage(NextpeerTournamentCustomMessage message)
		{
			Log.d(TAG, "onReceiveTournamentCustomMessage");
			onReceiveTournamentCustomMessageCalled(message);
		}

		@Override
		// The game received a custom message on the unreliable protocol
		public void onReceiveUnreliableTournamentCustomMessage(NextpeerTournamentCustomMessage customMessage)
		{
			Log.d(TAG, "onReceiveUnreliableTournamentCustomMessage");
			onReceiveUnreliableTournamentCustomMessageCalled(customMessage);
		}
	};

	
	}

