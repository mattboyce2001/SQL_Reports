**1464696** - An Alert must be sent to IAM Service Delivery when an account is onboarded to Delinea manually - SQL Report 

Email based alert can be sent with Healthcheck functionality. Event Subscription can also be deployed

SIEM - Event is also sent

USER	1	CREATE	1	A user was created

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/394c32b0-9bf6-467e-a310-a1a877a20e39)
![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/f65ab3b3-c190-428d-bcc0-4c59188966e6)
![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/4a8d426f-3d7d-4e78-b3ac-1c12da6f599d)


**1464699** - Folder Activity with permission changes

Modification of SQL Report 18

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/044c1ba6-5e37-44ce-bfa3-253364dbcabe)

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/3c357c89-de2f-4427-bcb2-eb51efc78b5e)

**1464695** - An alert must be sent to IAM service Delivery if a secret exists in more than one folder 

3 SQL Reports

Duplicate Secret Names

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/a2628fb9-00e5-4ed2-ba04-8fa7d40b728f)

Duplicate Secret Name Count
![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/df6d05a7-e360-44ad-bb62-250e2cb19bea)


Duplicate Usernames - Work in Progress, requires Usernames to be exposed for display. 

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/98ed4c74-3a16-4ce5-afc6-10e8768c9b33)
![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/60aee0db-8fed-44cf-b61a-b957dcc2d9ee)

**1464668** An alert must be sent to IAM Service Delivery if a user is manually configured without 2FA

2 SQL Reports

Possible options

Status Changed today
Changed from this MFA to this MFA

Audit Report (who did it)

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/c2e81f5b-7d42-4e8a-8193-03cb489d9037)

Users without MFA

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/a3655bdf-7fa4-4a0e-9395-fd4ce75b0afd)

Event Subscription, will show changed. No event for Removed.

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/bcbfa7d0-fb16-4c4d-8c29-f07c54e305c4)

SIEM - Two Factor Changed

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/f16b9b38-7d41-452c-9e61-d3dc300b50c9)

Event Pipeline

Typically, filter on domain (there may be users that intentionally don't have MFA)

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/39583c8d-98c8-4a51-8c18-31b137b2cf27)
![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/308be55c-69d4-4a44-b219-31ddc42fcc22)
![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/8a35fd26-43a9-4f22-b790-fd1a24dea320)

Pipeline JSON available for import

https://github.com/mattboyce2001/SQL_Reports/blob/main/1464668%09An%20alert%20must%20be%20sent%20to%20IAM%20Service%20Delivery%20if%20a%20user%20is%20manually%20configured%20without%202FA%20-%20Event%20Pipeline


**1464347** An alert must be sent to IAM service Delivery if a secret policy is added to a Folder or secret manually (Work in Progress)

SQL Report - Work in Progress, combination of folder and secret audit. May need clarification if something needs to denote the actual change

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/c22e5224-3a87-48f6-96cd-83c6ff8ee5c2)

Event Subscription (Folder)

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/6b87b86c-3d5a-41d7-b832-c8ce2a282a64)

Event Subscription (Secret)

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/fcd7c1d2-5e1e-475f-adb8-0f7e8a638d17)

**1464345	** An alert must be sent to IAM service Delivery when a user is manually added to a group - Work in Progress

SQL Report - Shows membership and last change. Can filter this down to todays change. If a user is not in the group it shouldn't appear (in theory). To be configured.

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/bd9c34ec-8bd5-48d2-8910-aa2b0150c064)

**1464718** An alert must be sent to IAM Service Delivery if a secret does not have a onboarding ServiceNow ticket logged

This displays the secrets missing the field Servicenowreference. This is across all templates but could be set to target specific templates.

Report will reduce in size as onboarding references are added. As previous, the subscription to the SQL report can be used with the health check to only produce a report when there is an exception (If all secrets in scope have service now references it will not trigger). 

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/e7569185-b0cc-40cc-8f4a-83dfc645aa3c)
![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/759090eb-ba70-498e-b175-edbee0e75115)
![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/c922ab91-4a5e-43f6-b48c-e65d35108350)

**1464318**	An alert must be sent to IAM Service Delivery when manual changes are made to event subscriptions

Edited the Standard "Event Subscriptions Activity" report to allow a duplicate in the instance. Added a "Today" filter with the intention of using a subscription and health check to show exceptions.


![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/3a6f9c62-7137-41b1-971d-8e44dc6f611b)
![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/4a3ddae8-9106-41a8-ad20-c0dbcf6a750c)
![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/621be921-9263-49ce-aa1d-2ea1f7faa58a)

1464673 Part 2 An alert must be sent to IAM Service Delivery when the maximum release duration of an account is manually changed - Audit Report

Report will log the policy being changed to no policy or the the check out time being disabled. TBC possibility of showing more detail (time changed for 2 hours to 8 hours etc).

![image](https://github.com/mattboyce2001/SQL_Reports/assets/90758673/8198244e-e3fc-4952-8941-8598f2972807)


