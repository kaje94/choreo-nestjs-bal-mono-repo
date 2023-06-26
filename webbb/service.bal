import ballerinax/trigger.asb;

listener asb:Listener webhookListener = new ();

@display {
    label: "MessageService",
    id: "MessageService"
}
service asb:MessageService on webhookListener {
    remote function onMessage(asb:Message message, asb:Caller caller) returns error? {
        // Not Implemented
    }
}

