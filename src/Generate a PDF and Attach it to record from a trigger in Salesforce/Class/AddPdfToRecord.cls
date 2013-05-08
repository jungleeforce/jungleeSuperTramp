global class AddPdfToRecord{
    
    webservice static void addPDF(list<id> accountIds){
		//Instantiate a list of attachment object
        list<attachment> insertAttachment = new list<attachment>();
        for(Id accId: accountIds){
			//create a pageReference instance of the VF page.
            pageReference pdf = Page.pdfRenderPage;
			//pass the Account Id parameter to the class.
            pdf.getParameters().put('id',accId);
            Attachment attach = new Attachment();
            Blob body;
            body = pdf.getContent();
            attach.Body = body;
            attach.Name = 'pdfName'+accId+'.pdf';
            attach.IsPrivate = false;
            attach.ParentId = accId;//This is the record to which the pdf will be attached
            insertAttachment.add(attach);
         }
		 //insert the list
         insert insertAttachment;
    }
}