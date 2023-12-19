import ballerina/http;

@http:ServiceConfig {
    cors: {
        allowOrigins: ["http://localhost:5173"]
    }
}

service / on new http:Listener(8080) {

    isolated resource function get offenses/[string nic_number]() returns (Offense[]|error)? {
        return getOffenses(nic_number);
    }

    isolated resource function post offenses(@http:Payload Offense offense) returns error? {
        return addOffense(offense);
    }
}
