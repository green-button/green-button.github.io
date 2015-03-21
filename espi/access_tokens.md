---
title: Access Tokens
layout: page
---
# Access Tokens
The following OAuth2 access_tokens are defined for use within the interoperable Green Button Connect My Data messages:
<dl>
<dt>access_token</dt>
<dd>allocated by DataCustodian for individual account authorizations. This is the normal access token used for accessing individual subscriptions.</dd>
<dt>refresh_token</dt>
<dd>allocated at the time of authorization and used to renew an access_token. When the given OAuth2 access token expires, you may use the refresh_token to obtain an new OAuth2 access token
<ul>
<li>Obtained: 	During retail customer authorization process.</li>
<li>resourceUri: https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Subscription/{SubscriptionID}</li>
<li>authorizationUri: https://services.greenbuttondata.org/DataCustodian/espi/1_1//resource/Authorization/{authorizationUri} </li>
</ul>
</dd>
<dt>datacustodian_access_token</dt>
<dd>access token used by trusted administrative accounts. This access token is allocated through administrative action by the DataCustodian.
<ul>
<li>Obtained: 	During retail customer authorization process</li>
</ul>
</dd>
<dt>client_access_token</dt>
<dd>used by ThirdParty applications to access bulk or multiple authorization subscriptions. This access token is allocated at the time the ThirdParty registers with the DataCustodian and the DataCustodian will be providing Bulk data transfers.
<ul>
<li>Obtained: 	The access token is either “Configured or obtained using the OAuth client_credentials based flow”.</li>
<li>resourceUri: https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/*</li>
<li>authorizationUri: https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/{authorizationId}</li>
</ul>
</dd>
<dt>upload_access_token</dt>
<dd>used by MeterDataManagement (backend) systems to upload/import data into a DataCustodian. This access token is, like the datacustodian_access_token, allocated through administrative action by the DataCustodian.</dd>
<dt>registration_access_token</dt>
<dd>reserved for future use in dynamic registration patterns. The IETF OAuth2 Dynamic Registration working draft is being used in Green Button dynamic registration.
<ul>
<li>Obtained: 	access token is obtained using the oauth client_credentials based flow after the Third Party has completed registration.</li>
<li>resourceUri: https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Bulk/{bulkId}</li>
<li>authorizationUri: https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/{authorizationId}</li>
</ul>
</dd>
</dl>
<h3>References</h3>
<ul>
<ul>
<li><a href="https://github.com/mitreid-connect/OpenID-Connect-Java-Spring-Server/wiki/Architecture">OpenID-Connect Wiki</a></li>
</ul>
