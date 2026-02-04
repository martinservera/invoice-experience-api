%dw 2.0
output application/json

var sender = vars.sender default {}
var receiver = vars.receiver default {}
---
{
    Sender: sender,
    Receiver: receiver,
    UltimateReceiver: vars.ultimateReceiver default receiver,
    MessageType: vars.operation,
    Arguments: {
        TransactionID: correlationId,
        IntegrationName: vars.operation
    }
}