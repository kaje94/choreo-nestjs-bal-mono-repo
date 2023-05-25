import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "bal_service_1",
	id: "bal_service_1-04c87f61-65ca-40d4-93ab-8baf9d8ad076"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
