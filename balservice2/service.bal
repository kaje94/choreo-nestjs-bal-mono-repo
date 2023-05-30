import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "balservice2",
	id: "balservice2-a003bb6e-23f0-4368-9ebd-0eb8e98f3ec2"
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
