public class HttpCalloutSample {
      public String getCalloutResponseContents(String url) {
          // Instantiate a new http object
Http h = new Http();
// Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
HttpRequest req = new HttpRequest();
req.setEndpoint('https://kcs-dev-ed.my.salesforce.com/00P0K00001fGAsp');
req.setTimeout(60000);//sets maximum timeout
req.setMethod('GET');
// Send the request, and return a response
HttpResponse res = h.send(req);
Blob body = res.getBodyAsBlob();
//then you can attach this body wherever you want
// Attachment att = new Attachment(Name = 'SET A NAME', Body = body, ContentType = 'SET A VALID CONTENT TYPE', ParentId='PARENT_OBJ_ID');
// insert att;
 return null; 
      }
}