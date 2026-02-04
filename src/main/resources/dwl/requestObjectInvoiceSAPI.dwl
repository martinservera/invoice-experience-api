%dw 2.0
output application/json
---
{
    host: "${zuul::system.Servo.invoice.sapi.host}",
    port: "${zuul::system.Servo.invoice.sapi.port}" as Number,
    protocol: "HTTPS",
    basePath: "/erp-servo-invoice-system/api/v1",
    requestType: "RestAPI"
}