```Apex
global class AccountTriggerController{

    @Future(callout=true)
    public static void addPDFAttach(string sessionId, list<id> accountId){
        addPDFStub.SessionHeader_element sessionIdElement= new addPDFStub.SessionHeader_element();
        sessionIdElement.sessionId = sessionId;
    
        addPDFStub.AddPdfToRecord stub= new addPDFStub.AddPdfToRecord();
        stub.SessionHeader= sessionIdElement;
        stub.addPDF(accountId);
    }
}
```
