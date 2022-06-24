// ASSIGNMENT: Create a new Program for Create User using Post Method 
// o Class Name PostMethodforUsercreation 
// o Create Remote site settings for the below End Point. 
// o Access Endpoint https://reqres.in/api/users 
// o Set body in module is  
//  “{  "name": "Testing",   "job": "Software"}” 
// o setMethod as Post 
// o Response we receive is Map<string, object> results = (Map<string, 
// object>)JSON.deserializeUntyped(response.getBody()); 
// o Display the Name field from the Results map from the above step.

public with sharing class PostMethodforUsercreation {
   public static HttpResponse userCreation(){
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://reqres.in/api/users');
        request.setMethod('POST');
        string jsonReq = '{"name":"Testing",   "job": "Software"}';
        request.setBody(jsonReq);
        request.setHeader('Content-Type', 'application/json');

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 201) {
            string namesJSON = response.getBody();
            system.debug(namesJSON);
            system.debug('response ' + namesJSON);

            Object ob = JSON.deserializeUntyped(namesJSON);
            Map<string, object> results = (Map<string,object>) ob;
            system.debug('Results = ' + results);
            system.debug(results.get('name'));
            system.debug(results.get('job'));
          

        } else {
            string result = 'failed';
            system.debug('something went wrong people');
        }

        return response;
    } 
}