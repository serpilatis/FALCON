@RestResource(urlMapping='/LeadCustom/*') // instead of using standard API we are creating custom APIS
global with sharing class CustomLeadAPI {
    
        
        @httpGet
        global static Lead getLeadId(){
        
            system.debug('custom contact api call success.');
            RestRequest request = RestContext.request;
            string uri =request.requestURI;
            system.debug('URI : '+request.requestURI);
            integer idStartIndex =uri.lastIndexOf('/') +1;
            system.debug('idStartIndex: ' + idStartIndex);
            string leadId = uri.substring(idStartIndex);
            system.debug('leadId ' + leadId);
            
            lead l =[SELECT FirstName, LastName, Company, Status FROM Lead WHERE Id =: leadId];
            return l;
        }
        @httpPost
        global static Id createLead(string fName, string lName, string company, string status)
        {
        Lead l = new Lead();
        l.FirstName = fName;
        l.LastName = lName;
        l.Company = company;
        l.Status = status; 
        insert l;

        return l.Id;

        }

        @httpDelete
        global static string  deleteLead(){
            //get the request send from external recipient
            RestRequest request = RestContext.request;

            //get the URI of the request
            String uri= request.requestURI;
            system.debug('uri: '+ uri);

            integer idStartIndex =uri.lastIndexOf('/') + 1;
            system.debug('idStartIndex: ' + idStartIndex);
        
            string leadId = uri.substring(idStartIndex);
            system.debug('leadId ' + leadId);
            lead l =[Select name, id From Lead Where Id =: leadId];
            //Lead l = new Lead();
            l.id = leadId;
            delete l;
            return 'Lead deleted with id: '+ leadId;
        }

        @httpPatch
        global static string updateLead(string company, string lastname,string emailId,string phoneNumber){
            //get the request send from external recipient
            RestRequest request = RestContext.request;

            //get the URI of the request
            String uri= request.requestURI;
            system.debug('uri: '+ uri);

            integer idStartIndex =uri.lastIndexOf('/') + 1;
            system.debug('idStartIndex: ' + idStartIndex);
            string leadId = uri.substring(idStartIndex);
            system.debug('leadId ' + leadId);

            Lead l = new Lead();
            l.id = leadId;
            l.Company = company;
            l.LastName = lastname;
            l.Email = emailId;
            l.phone= phoneNumber;
            lead ld = new lead(id=leadId, Email= emailId, phone= phoneNumber);
            update ld;
            return 'leadId updated with id: '+ leadId;

        }

        @httpPut
        global static list<id> upsertLead(list<Lead> Leads){
        upsert Leads;
        list<id> returnstr =new list<id>();
        string str;
        for (Lead l : Leads) {
            returnstr.add(l.id);
        }
        return returnstr;
    }
    }

