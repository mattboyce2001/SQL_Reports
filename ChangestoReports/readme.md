Reports previously created for HSBC had an exception for the application accounts as per the requirements of "Manually Created". To fit new requirements, I have created the CUSTOMTEXT field to allow for ad-hoc exclusion of a particular account used for automation. 
![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/8831c5fc-cdc9-4aee-9a27-f2bbcec61679)

https://github.com/mattboyce2001/SQL_Reports/blob/main/1464696%20-%20An%20Alert%20must%20be%20sent%20to%20IAM%20Service%20Delivery%20when%20an%20account%20is%20onboarded%20to%20Delinea%20manually 

If Automation Accounts in General need to be excluded the clause below can be used:

a.[Action] LIKE '%CreateUser%' AND u2.IsApplicationAccount = '0'

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/0a29d679-88f5-4390-a657-1599c7a99afb)

Otherwise, if a specific automation account will always be used change the clause to the example shown below:

AND u2.displayname = 'insertexactuserdisplaynamehere'
