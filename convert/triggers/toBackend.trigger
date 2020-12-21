trigger toBackend on survey_response__c (after insert,after update, after delete) {
        String data = '{hello:world2}';
        String method = 'POST';
    	data = Json.serialize(Trigger.new);

    if(Trigger.isInsert){
        method = 'POST';
        
    } 
    if(Trigger.isUpdate){
        	method = 'PATCH';

   } 
    
        if(Trigger.isDelete){
        	data = Json.serialize(Trigger.OLD);
        	method = 'DELETE';

        
    } 

    CalloutClass.makeCallout(method = method, data = data);

}