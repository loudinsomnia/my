CREATE
USER autotest;
CREATE SCHEMA PAY_API;
CREATE SCHEMA PAY_USER_SECRET;
CREATE SCHEMA PAY_USER_APIKey;
CREATE SCHEMA PAY_USER_Transactions;
CREATE SCHEMA PAY_USER_Merchant;
CREATE SCHEMA PAY_USER_Assets;
CREATE SCHEMA PAY_USER_AdminMethods;
CREATE SCHEMA PAY_USER_InternalWallet;
CREATE SCHEMA PAY_USER_NoneLoginData;
CREATE SCHEMA PAY_USER_Blocked;
CREATE SCHEMA PAY_USER_UserAPIKey;
CREATE SCHEMA PAY_USER_Billing;
CREATE SCHEMA OPT;

CREATE SCHEMA PAY_ADMIN;
GRANT ALL PRIVILEGES ON SCHEMA
PAY_API, PAY_USER_SECRET, PAY_USER_APIKey,
    PAY_USER_Transactions,
    PAY_USER_Merchant,
    PAY_USER_Assets,
    PAY_USER_AdminMethods,
    PAY_USER_InternalWallet,
    PAY_USER_NoneLoginData,
    PAY_USER_Blocked,
    PAY_USER_UserAPIKey,
    PAY_USER_Billing,PAY_ADMIN,OPT to autotest;

CREATE table PAY_API.withdraw_data
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_API.payment_data
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_SECRET.putSecret
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_APIKey.createApiKey
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_APIKey.get_api
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_APIKey.deleteApiKey
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_APIKey.patchApiKey
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Transactions.createPayment
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Transactions.createWithdraw
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Transactions.createWithdrawAll
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Transactions.getTransactions
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Transactions.cancelWithdraw
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Transactions.getPendings
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Transactions.create_batch_transaction
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Transactions.checkvalid_transaction
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Transactions._createPayment
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Transactions._createPayment_none
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Transactions._createPayment_wait
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Transactions._setPayRecipient
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Merchant.createMerchant
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Merchant.create0xsingleMerchant
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Merchant.patchMerchantSettings
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Merchant.getWallets
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Merchant.delet_merchant
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Merchant.get_merchant_name
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Assets.putAssetSettings
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Assets.otp_state
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Assets.putAssetsList
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Assets.putAsetsSymbol
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Assets.deleteAssetSymbol
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Assets.change0xWallets
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_AdminMethods.login_admin
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_InternalWallet.createInternalWallet
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_InternalWallet.switchInternalWallet
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_InternalWallet.removeWallet
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_NoneLoginData.register_data
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Blocked.block_Payment
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Blocked.block_Wallet
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Blocked.block_sender
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_UserAPIKey.createMerchant_userkey
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_UserAPIKey.patchMerchantSettings_userkey
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_UserAPIKey.putAssetSettings_userkey
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_UserAPIKey.putSecret_userkey
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_UserAPIKey.createApiKey_userkey
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_UserAPIKey.deletSecret_userkey
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_UserAPIKey.createPayment_userkey
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_UserAPIKey.createWithdraw_userkey
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE table PAY_USER_Billing.getBilling
(
    id   INT PRIMARY KEY,
    type VARCHAR(30),
    data JSONB
);

CREATE TABLE OPT.options(
    id INT PRIMARY KEY,
    name varchar(30),
    uid UUID
);


INSERT INTO PAY_API.withdraw_data(id,type,data)
VALUES(1,'Valid','{"addressTo": "0x1b666f353Fa0530c2FAaDfd23CC698152FEd2dbb",
                      "amount": 0.015,
                      "code": "BNB",
                      "comment": "asdasd"}'),
    (2,'Not Valid','{"addressTo": null,
                         "amount": null,
                         "code": null,
                         "comment": null,
                         "cbUrl": null}');


INSERT INTO PAY_API.payment_data(id,type,data)
VALUES(1,'Valid','{"code": "TRX",
                     "comment": "12easd"}'),
    (2,'Not Valid','{"code": null,
                    "comment": null,
                    "cbUrl": null}');

INSERT INTO OPT.options(id, name, uid)
VALUES (1,'merch_uid','7a4f3c2d-508e-436f-8863-53716a75fcbe'),
       (2,'UID_of_enth_merchant','c95f0361-ac28-4f1d-a7fa-7bbb41cf380d'),
       (3,'merch_for_API_test','1c4bfc53-ad0d-4ca4-acb7-dd3e677ed98e');

INSERT INTO PAY_USER_SECRET.putSecret(id,type,data)
VALUES(1,'Valid','{"merchUid": null, "otpToken": null}'),
    (2,'Not Valid','{"merchUid": null, "otpToken": null}'),
    (3,'Not Valid','{"merchUid": null, "otpToken": null}'),
    (4,'Not Valid','{"merchUid": null, "otpToken": null}');
