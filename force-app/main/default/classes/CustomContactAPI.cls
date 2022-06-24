@RestResource(urlMapping='/ContactCustom/*')
global class CustomContactAPI {
    //return contact details and account name
    @httpGet 
    global static Contact getContactId() {
        system.debug('custom contact api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //Fetch contact ID from URI
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contactId: ' + contactId);
        //Fetch contact details from contact ID
        //contact c = new contact();
        //id contactid = '';
        contact c = [select name, phone from contact where id = :contactId];
        //contact c = [select name, phone from account.name where id = :contactId];
        return c;
    }
    @httpPost 
    global static Id createContact(
        string fName, string lName, string emailId, string phoneNumber, string accountId
    ){
        Contact c = new contact();
        c.FirstName = fName;
        c.LastName = lName;
        c.Email = emailId;
        c.Phone = phoneNumber;
        c.AccountId = accountId;
        insert c;
        return c.id;
    }
    @httpDelete 
    global static String deleteContactId() {
        system.debug('custom contact api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //Fetch contact  Id from URI
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contactId: ' + contactId);
        contact c = new contact();
        c.id = contactId;
        delete c;
        return 'Contact deleted with id: ' + contactId;
    }
    @httpPatch 
    global static String updateContactId(
        string emailId, string phoneNumber
    ) {
        system.debug('custom contact api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //Fetch contact  Id from URI
        //    /
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contactId: ' + contactId);
        contact c = new contact();
        c.id = contactId;
        c.Email = emailId;
        c.Phone = phoneNumber;
        update c;
        return 'Contact update with id: ' + contactId;
    }
    // @httpPut 
    // global static String upsertContact(Contact con){
    //     String returnString;
    //     if(con.Id == null){
    //         returnString = 'Contact created with id: ';
    //     } else {
    //         returnString = 'Contact update with id: ';
    //     }

    //     upsert con;
    //     return returnString + con.id;
    // }

    @httpPut 
    global static List<id> upsertContact(List<Contact> cons){

        upsert cons;

        list<id> ids = new list<id>();
        for (contact con : cons) {
            ids.add(con.id);
        }
        return ids;
    }
}