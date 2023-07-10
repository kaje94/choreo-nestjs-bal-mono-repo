import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
<<<<<<<< HEAD:comp1/service.bal
	label: "comp1",
	id: "comp1-037407db-5a76-4786-944b-e17c126768ce"
========
	label: "component2",
	id: "component2-dbaee02b-4dcf-447d-9b20-c416838b7fe0"
>>>>>>>> 5e55ca607456d734866c5c53a3d1ae93fb75c13c:component2/service.bal
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
