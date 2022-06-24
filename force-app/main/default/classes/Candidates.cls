public  class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;

    public void printCandidate(){
        system.debug(' Candidate name is ' + Name + '('+ Gender +')');
        system.debug('company name is ' + CompanyName);
    }
    public static void printCandidateInfoSt(){
        System.debug('company name is ' + CompanyName);
    }
   
}