import ballerina/http;
import ballerina/io;


public function main() returns error? {
    http:Client clientEndpoint = check new ("https://api.eu.onfido.com");
    
    // Network data == program data
    json prs = check clientEndpoint->post("/v3.6/applicants",
    {
        "first_name": "Jane",
        "last_name": "Smith"
    },
    headers = {
        "Accept": "application/json",
        "Authorization": "Token token=api_live.p3twKh-jOVI.bCtxfF5828xOq37cRTQ7HelReiOjpw_3"
    }
    );
    io:println(prs);
}