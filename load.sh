var_delete="-X DELETE http://localhost:5984/mot";
curl $var_delete >> delete.log

var_create="-X PUT http://localhost:5984/mot";
curl $var_create >> create.log

curl -d @BBY_DI_FULL1.json -X POST http://localhost:5984/mot/_bulk_docs -H"Content-Type: application/json" >> load.log

curl -d @views.json -X PUT http://localhost:5984/mot/_design/render >> views.log
