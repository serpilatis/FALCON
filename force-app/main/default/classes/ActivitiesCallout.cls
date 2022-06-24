// Assignment POST and GET
// • Write a Program to fetch data from other system 
// o Create a remote site setting for link given below 
// ▪ https://fakerestapi.azurewebsites.net/api/v1/Activities 
// o Write a program to get data from the  same link 
// o Use deserializeduntyped  to get the  response 
// o Display the  object data using system.debug 
 
// • Create a new Program for Create User using Post  Method  Class Name 
// PostMethodforUsercreation   
// ▪ Access Endpoint 
// https://fakerestapi.azurewebsites.net/api/v1/Activities 
// o Set Boy in module as “{ 
//   "id":  0, 
//  "title":  "string", 
//  "dueDate":  "2022-06-14T09:38:35.481Z", 
//  "completed":  true 
//  }” 
// o SetMethod  as Post   
// o Response  we receive is Map<string, object> results = (Map<string, 
// object>)JSON.deserializeUntyped(response.getBody());  
// o Display the  Name field from the Results map from the above  step.
public with sharing class ActivitiesCallout {
    private  static string GET_ACTIVITIES_ENDPOINT = CalloutInfo__mdt.getInstance('GET_ACTIVITIES').Endpoint__c;
        private static string HTTP_GET = 'GET';
        
        public static HttpResponse getActivities(){
            //1.prepare request
            HttpRequest request = new HttpRequest();
            request.setEndPoint(GET_ACTIVITIES_ENDPOINT);
            request.setMethod(HTTP_GET);
            //2.prepare http
            Http http = new Http();
            //3. send request, receive response 
            HttpResponse response = http.send(request);
            system.debug('status ' + response.getStatus());
            system.debug('status code ' + response.getStatusCode());
    
            //4.process the response
            if((response.getStatusCode())==200){
                string activitiesJSON = response.getBody();
                system.debug(activitiesJSON);
    
                Object ob = JSON.deserializeUntyped(activitiesJSON); //type casting!!
                system.debug(ob);

                List<Object> results = (List<Object>)ob;

                for(object eachACT: results){
                    system.debug(eachACT);
                }
            }else{
                //NOT SUCCESS
                system.debug('something went wrong people');
            }
            return response;
        }
}