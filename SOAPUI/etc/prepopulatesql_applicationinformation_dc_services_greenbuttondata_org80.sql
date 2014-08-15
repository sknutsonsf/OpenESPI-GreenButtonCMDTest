/* Add application_information */ 
INSERT INTO application_information (id, kind, description, published, self_link_href, self_link_rel, up_link_href, up_link_rel, updated, uuid, authorizationServerAuthorizationEndpoint, authorizationServerRegistrationEndpoint, authorizationServerTokenEndpoint, authorizationServerUri, clientId, clientIdIssuedAt , clientName, clientSecret, clientSecretExpiresAt, clientUri, contacts, dataCustodianApplicationStatus, dataCustodianBulkRequestURI, dataCustodianDefaultBatchResource, dataCustodianDefaultSubscriptionResource, dataCustodianId, dataCustodianResourceEndpoint, dataCustodianThirdPartySelectionScreenURI, grantTypes, logoUri, policyUri, redirectUri, registrationAccessToken, registrationClientUri, responseTypes, softwareId, softwareVersion, thirdPartyApplicationDescription, thirdPartyApplicationName, thirdPartyApplicationStatus, thirdPartyApplicationType, thirdPartyApplicationUse, thirdPartyDataCustodianSelectionScreenURI, thirdPartyLoginScreenURI, thirdPartyNotifyUri, thirdPartyPhone, thirdPartyScopeSelectionScreenURI, thirdPartyUserPortalScreenURI, tokenEndpointAuthMethod, tosUri, dataCustodianScopeSelectionScreenURI) 
VALUES (1,'DATA_CUSTODIAN_ADMIN','GreenButtonData.org  Data Custodian Admin Application','2014-01-02 05:00:00','/espi/1_1/resource/DataCustodian/ApplicationInformation/1','self','/espi/1_1/resource/DataCustodian/ApplicationInformation','up','2014-01-02 05:00:00','185C9C3F-5B4A-44A9-8959-3AE79E60A9F5',NULL,NULL,NULL,NULL,'data_custodian_admin',NULL,NULL,'secret',NULL,NULL,NULL,'1','',NULL,NULL,'data_custodian','https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource',NULL,'client_credentials',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Data Custodian Admin (localhost)',NULL,NULL,NULL,NULL,NULL,'https://services.greenbuttondata.org/ThirdParty/espi/1_1/Notification',NULL,NULL,NULL,'client_secret_basic',NULL,NULL);
INSERT INTO application_information (id, kind, description, published, self_link_href, self_link_rel, up_link_href, up_link_rel, updated, uuid, authorizationServerAuthorizationEndpoint, authorizationServerRegistrationEndpoint, authorizationServerTokenEndpoint, authorizationServerUri, clientId, clientIdIssuedAt , clientName, clientSecret, clientSecretExpiresAt, clientUri, contacts, dataCustodianApplicationStatus, dataCustodianBulkRequestURI, dataCustodianDefaultBatchResource, dataCustodianDefaultSubscriptionResource, dataCustodianId, dataCustodianResourceEndpoint, dataCustodianThirdPartySelectionScreenURI, grantTypes, logoUri, policyUri, redirectUri, registrationAccessToken, registrationClientUri, responseTypes, softwareId, softwareVersion, thirdPartyApplicationDescription, thirdPartyApplicationName, thirdPartyApplicationStatus, thirdPartyApplicationType, thirdPartyApplicationUse, thirdPartyDataCustodianSelectionScreenURI, thirdPartyLoginScreenURI, thirdPartyNotifyUri, thirdPartyPhone, thirdPartyScopeSelectionScreenURI, thirdPartyUserPortalScreenURI, tokenEndpointAuthMethod, tosUri, dataCustodianScopeSelectionScreenURI) 
VALUES (2,'THIRD_PARTY','GreenButtonData.org  ThirdParty Application','2014-01-02 05:00:00','/espi/1_1/resource/DataCustodian/ApplicationInformation/2','self','/espi/1_1/resource/DataCustodian/ApplicationInformation','up','2014-01-02 05:00:00','AF6E8B03-0299-467E-972A-A883ECDCC575',NULL,NULL,NULL,NULL,'third_party',NULL,NULL,'secret',NULL,NULL,NULL,'1','',NULL,NULL,'data_custodian','https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource',NULL,'authorization_code,refresh_token',NULL,NULL,'https://services.greenbuttondata.org/ThirdParty/espi/1_1/OAuthCallBack',NULL,NULL,NULL,NULL,NULL,NULL,'Third Party (localhost)',NULL,NULL,NULL,NULL,NULL,'https://services.greenbuttondata.org/ThirdParty/espi/1_1/Notification',NULL,'https://services.greenbuttondata.org/ThirdParty/RetailCustomer/ScopeSelection',NULL,'client_secret_basic',NULL,'https://services.greenbuttondata.org/DataCustodian/RetailCustomer/ScopeSelectionList');
INSERT INTO application_information (id, kind, description, published, self_link_href, self_link_rel, up_link_href, up_link_rel, updated, uuid, authorizationServerAuthorizationEndpoint, authorizationServerRegistrationEndpoint, authorizationServerTokenEndpoint, authorizationServerUri, clientId, clientIdIssuedAt , clientName, clientSecret, clientSecretExpiresAt, clientUri, contacts, dataCustodianApplicationStatus, dataCustodianBulkRequestURI, dataCustodianDefaultBatchResource, dataCustodianDefaultSubscriptionResource, dataCustodianId, dataCustodianResourceEndpoint, dataCustodianThirdPartySelectionScreenURI, grantTypes, logoUri, policyUri, redirectUri, registrationAccessToken, registrationClientUri, responseTypes, softwareId, softwareVersion, thirdPartyApplicationDescription, thirdPartyApplicationName, thirdPartyApplicationStatus, thirdPartyApplicationType, thirdPartyApplicationUse, thirdPartyDataCustodianSelectionScreenURI, thirdPartyLoginScreenURI, thirdPartyNotifyUri, thirdPartyPhone, thirdPartyScopeSelectionScreenURI, thirdPartyUserPortalScreenURI, tokenEndpointAuthMethod, tosUri, dataCustodianScopeSelectionScreenURI) 
VALUES (3,'UPLOAD_ADMIN','GreenButtonData.org  MDM Upload Application','2014-01-02 05:00:00','/espi/1_1/resource/DataCustodian/ApplicationInformation/3','self','/espi/1_1/resource/DataCustodian/ApplicationInformation','up','2014-01-02 05:00:00','185C9C3F-5B4A-44A9-8959-3AE79E60A9F7',NULL,NULL,NULL,NULL,'upload_admin',NULL,NULL,'secret',NULL,NULL,NULL,'1','',NULL,NULL,'data_custodian','https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource',NULL,'client_credentials',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MDM Upload (localhost)',NULL,NULL,NULL,NULL,NULL,'https://services.greenbuttondata.org/ThirdParty/espi/1_1/Notification',NULL,NULL,NULL,'client_secret_basic',NULL,NULL);

/* Add application_information_scopes */ 
INSERT INTO application_information_scopes (application_information_id, scope) VALUES (1, 'FB=3_19_32_33_34_35_36_37_38_41_44_45');
INSERT INTO application_information_scopes (application_information_id, scope) VALUES (2, 'FB=4_5_15;IntervalDuration=3600;BlockDuration=monthly;HistoryLength=13');
INSERT INTO application_information_scopes (application_information_id, scope) VALUES (2, 'FB=4_5_15;IntervalDuration=900;BlockDuration=monthly;HistoryLength=13');
INSERT INTO application_information_scopes (application_information_id, scope) VALUES (2, 'FB=4_5_12_15_16;IntervalDuration=3600;BlockDuration=monthly;HistoryLength=13');
INSERT INTO application_information_scopes (application_information_id, scope) VALUES (2, 'FB=4_5_15;IntervalDuration=3600;BlockDuration=monthly;HistoryLength=13');
INSERT INTO application_information_scopes (application_information_id, scope) VALUES (3, 'FB=45');

/* Add predefined authorizations */
INSERT INTO authorizations (id, description, published, self_link_href, self_link_rel, up_link_href, up_link_rel, updated, uuid, access_token, authorization_uri, ap_duration, ap_start, code, error, errorDescription, errorUri, expiresIn, grantType, pp_duration, pp_start, refreshToken, resourceURI, responseType, scope, state, status, third_party, tokenType, application_information_id, retail_customer_id, subscription_id) 
VALUES (1,NULL,'2014-05-12 09:02:03',NULL,'self',NULL,'up','2014-05-12 09:02:03','558EBD17-FD1D-435D-8F8D-1D9A129EE1A6','688b026c-665f-4994-9139-6b21b13fbeee','https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/1',0,0,NULL,NULL,NULL,NULL,31536000,NULL,0,0,NULL,'https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/',NULL,'DataCustodian_Admin_Access',NULL,'1','data_custodian_admin',0,1,NULL,NULL);
INSERT INTO authorizations (id, description, published, self_link_href, self_link_rel, up_link_href, up_link_rel, updated, uuid, access_token, authorization_uri, ap_duration, ap_start, code, error, errorDescription, errorUri, expiresIn, grantType, pp_duration, pp_start, refreshToken, resourceURI, responseType, scope, state, status, third_party, tokenType, application_information_id, retail_customer_id, subscription_id) 
VALUES (2,NULL,'2014-05-12 09:02:03',NULL,'self',NULL,'up','2014-05-12 09:02:03','0BA247E0-87F0-41E1-BB50-271468B00DC0','75dd9c46-becf-48b5-9cb5-9c3233d718d0','https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/2',0,0,NULL,NULL,NULL,NULL,31536000,NULL,0,0,NULL,'https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Subscription',NULL,'ThirdParty_Admin_Access',NULL,'1','third_party_admin',0,2,NULL,NULL);
INSERT INTO authorizations (id, description, published, self_link_href, self_link_rel, up_link_href, up_link_rel, updated, uuid, access_token, authorization_uri, ap_duration, ap_start, code, error, errorDescription, errorUri, expiresIn, grantType, pp_duration, pp_start, refreshToken, resourceURI, responseType, scope, state, status, third_party, tokenType, application_information_id, retail_customer_id, subscription_id) 
VALUES (3,NULL,'2014-05-12 09:02:03',NULL,'self',NULL,'up','2014-05-12 09:02:03','4229F25A-FEED-4538-B6B9-9793C02515F2','809caf03-612e-4e89-94b1-6f86d83b1ef8','https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/3',0,0,NULL,NULL,NULL,NULL,31536000,NULL,0,0,NULL,'https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/RetailCustomer/{retailCustomerId}/UsagePoint',NULL,'Upload_Admin_Access',NULL,'1','upload_admin',0,1,NULL,NULL);
INSERT INTO authorizations (id, description, published, self_link_href, self_link_rel, up_link_href, up_link_rel, updated, uuid, access_token, authorization_uri, ap_duration, ap_start, code, error, errorDescription, errorUri, expiresIn, grantType, pp_duration, pp_start, refreshToken, resourceURI, responseType, scope, state, status, third_party, tokenType, application_information_id, retail_customer_id, subscription_id) 
VALUES (4,NULL,'2014-05-12 09:02:03',NULL,'self',NULL,'up','2014-05-12 09:02:03','2BBCC436-E545-459F-90E9-99113C11FFD4','d89bb056-0f02-4d47-9fd2-ec6a19ba8d0c','https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/4',0,0,NULL,NULL,NULL,NULL,31536000,NULL,0,0,NULL,'https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation/2',NULL,'ThirdParty_Registration_Access',NULL,'1','REGISTRATION_third_party',0,2,NULL,NULL);
