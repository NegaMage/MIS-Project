<h1>Progress</h1>

<h2>Database</h2>

<h3>These two tables are completely independent of the other tables</h3> 

* Circular Table completed along with a basic form for it<br/>

* Register Table completed along with a basic form for it

<h3>The following tables are inter-related</h3>

* Units Table (completed ) <br/>

* Employee Table (completed)<br/>

* Audits table (completed)<br/>

* Auditors table (completed) ( IT IS A BRIDGE BETWEEN EMPLOYEE TABLE AND AUDITS TABLE BECAUSE THEY HAVE MANY-MANY RELATION)<br/>

* IR table (completed)<br/>

* Para Table (YET TO BE COMPLETED)<br/><br/>

<h3>THE REALATIONSHIP BETWEEN THE TABLES ARE AS SPECIFIED IN GOOGLE DOC</h3>

* Each unit can have various audits. But one audit pertains to only one unit. Hence many-one relationship established<br/>
  between unit and audit table.<br/>

* Each Audit can have various employees involved and one employee can be a part of many audits. Hence a many many <br/>
relationship is there. A table called auditors connects these two tables that has (audit_id , employee_id , designation_in_audit)<br/>

* Each audit has exactly one inspection report . Hence has_one relation established between audit and ir table.<br/>


<strong>

* Para and employee has many-one relation (1 employee can write many paras) .(Yet to be established as para table is pending)<br/>

* Para and IR also has many-one relation. (One IR has many paras in it) . (Yet to be established as para table is pending)<br/></strong>


