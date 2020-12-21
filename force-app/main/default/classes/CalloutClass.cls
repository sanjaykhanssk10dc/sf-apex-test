public class CalloutClass {
    @future(callout=true)
    public static void makeCallout(String method,
                                   String data)
    {
        HttpRequest request = new HttpRequest();
        // Set the endpoint URL.
        String endpoint = 'https://f311d4d57dbf.ngrok.io/user/curd';
        request.setEndPoint(endpoint);
        request.setMethod(method);
        request.setBody(data);
        // Send the HTTP request and get the response.
        HttpResponse response = new HTTP().send(request);
    }
}