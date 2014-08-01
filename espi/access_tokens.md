---
title: Access Tokens
layout: page
---
# Access Tokens
The following OAuth2 access_tokens are defined for use within the interoperable Green Button Connect My Data messages:
<dl>
<dt>access_token</dt>
<dd>allocated by datacustodian for individual account authorizations. This is the normal access token used for accessing individual subscriptions.</dd>
<dt>refresh_token</dt>
<dd>allocated at the time of authoriztion and used to renew an access_token. When the given OAuth2 access token expires, you may use the refresh_token to obtain an new OAuth2 access token</dd>
<dt>datacustodian_access_token</dt>
<dd>access token used by trusted administrative accounts. This access token is allocated through administrative action by the DataCustodian.</dd>
<dt>client_access_token</dt>
<dd>used by thirdparty applications to access bulk or multiple authorization subscriptions. This access token is allocated at the time the ThirdParty registers with the DataCustodian and the DataCustodian will be providing Bulk data transfers.</dd>
<dt>upload_access_token</dt>
<dd>used by MeterDataManagement (backend) systems to upload/import data into a datacustodian. This access token is, like the datacustodian_access_token, allocated through administrative action by the DataCustodian.</dd>
<dt>registration_access_token</dt>
<dd>reserved for future use in dynamic registration patterns. The IETF OAuth2 Dynamic Registration working draft is being used in Green Button dynamic registration.</dd>
</dl>
