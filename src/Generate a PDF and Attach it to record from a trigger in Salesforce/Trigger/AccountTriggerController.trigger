trigger accountAfterInsert on Account (after insert) {

     list<id> accId = new list<id>();
     for(id acc: trigger.newMap.keySet()){
         accId.add(acc);
      }
		//You would need to send the session id to the future method as the you cannot use the userInfo.getSessionID() method in the future method because it is asynchronous and doesn't run in the user context.
        AccountTriggerController.addPDFAttach(userInfo.getSessionId(), accId);
     
}