public with sharing class DummyPostCallout {
    private static string GET_DUMMYPOST_ENDPOINT = CalloutInfo__mdt.getInstance('GET_DUMMYPOST').Endpoint__c;
    private static string HTTP_GET = 'GET';
    private static string HTTP_POST = 'POST';

   public static void postCallout() {
       //1. create request
       HttpRequest request = new HttpRequest();
       //request.setEndpoint('https://dummyjson.com/posts');
       //request.setMethod('GET');
       request.setEndpoint(GET_DUMMYPOST_ENDPOINT);
        request.setMethod(HTTP_GET);

       //2. prepare http
       http http = new http();

       //3. send request, get response
       HttpResponse response = http.send(request);

       system.debug(response);
       if(response.getStatusCode() == 200){
           system.debug(response.getBody());
           DummyPostResponseWrapper dummywrapper = (DummyPostResponseWrapper)JSON.deserialize(response.getBody(), DummyPostResponseWrapper.class);
            system.debug('dummy wrapper = '+dummywrapper);
            //List<Post__c>
            system.debug('dummywrapper = ' +dummywrapper.posts);
            List<Post__c> listPosts = new list<Post__c>();
            List<DummyPostResponseWrapper.Cls_Post> listClsPost = dummywrapper.posts;
            for (DummyPostResponseWrapper.Cls_Post dpost : listClsPost){
                Post__c p = new Post__c();
                p.id__c = dpost.id;
                p.title__c = dpost.title;
                p.body__c = dpost.body;
                p.UserId__c = dpost.userId;
                p.Tags__c = dpost.tags.toString();
                listPosts.add(p); 
            }
            //Database.insert(listPosts, false);
            //insert + update
            //if Id is found --> update
            //if ID NOT found --> insert
            //upsert listPosts id__c;

            insert listPosts;

            //for each loop on list<post> from wrapper class
                //Post__c p = new Post__c();
                //map all fields of wrapper post to Post__c object fields
                //add in list<Post__c>
            //database.insert(list of post__c
       } else {
           system.debug(response.getStatus());
       }
   }
}