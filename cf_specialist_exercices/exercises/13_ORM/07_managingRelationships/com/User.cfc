component persistent="true" table="tUsers" {
    //Identifier
    property name="userId" fieldType="id" generator="native" setter="false";
    //other properties
    property name="lastName" ormtype="text";
    property name="firstName" ormtype="text";
    property name="email" ormtype="text";
    property name="password" ormtype="text";
    property name="headshotFileName" ormtype="text";
    //one use can write many articles
}