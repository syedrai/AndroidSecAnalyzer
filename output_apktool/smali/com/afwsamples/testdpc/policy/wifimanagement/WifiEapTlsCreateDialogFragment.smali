.class public Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;
.super Landroid/app/DialogFragment;
.source "WifiEapTlsCreateDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;
    }
.end annotation


# static fields
.field private static final ARG_CONFIG:Ljava/lang/String; = "config"

.field private static final REQUEST_CA_CERT:I = 0x1

.field private static final REQUEST_USER_CERT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "wifi_eap_tls"


# instance fields
.field private mAltSubjectMatchEditText:Landroid/widget/EditText;

.field private mCaCertTextView:Landroid/widget/TextView;

.field private mCaCertUri:Landroid/net/Uri;

.field private mCertPasswordEditText:Landroid/widget/EditText;

.field private mDomainEditText:Landroid/widget/EditText;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mIdentityEditText:Landroid/widget/EditText;

.field private mSsidEditText:Landroid/widget/EditText;

.field private mUserCertAlias:Ljava/lang/String;

.field private mUserCertTextView:Landroid/widget/TextView;

.field private mUserCertUri:Landroid/net/Uri;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public static synthetic $r8$lambda$RLhK7z9CRm_69K0Ln3X6Nif_V5s(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->lambda$onSelectClientCertClicked$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ZGZG3aiNBwCt5PgWrRyZb5Q6aQ(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->onSelectClientCertClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cIhQBLaKqbCKzBY7n5mWlpL6nco(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->lambda$onSelectClientCertClicked$1(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mextractInputDataAndSave(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->extractInputDataAndSave()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private extractEnterpriseConfig()Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 10

    .line 215
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 216
    .local v0, "config":Landroid/net/wifi/WifiEnterpriseConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 217
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mIdentityEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "identity":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mDomainEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "domain":Ljava/lang/String;
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mAltSubjectMatchEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "altSubjectMatch":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 225
    :cond_0
    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v5, 0x1f

    const/4 v6, 0x0

    if-lt v4, v5, :cond_1

    .line 226
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    sget v4, Lcom/afwsamples/testdpc/R$string;->error_domain_and_alt_subject_match_both_unset:I

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    .line 229
    return-object v6

    .line 232
    :cond_1
    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_3

    .line 233
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 234
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 237
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 238
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAltSubjectMatch(Ljava/lang/String;)V

    .line 242
    :cond_3
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertUri:Landroid/net/Uri;

    if-nez v4, :cond_4

    .line 243
    sget v4, Lcom/afwsamples/testdpc/R$string;->error_missing_ca_cert:I

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    .line 244
    return-object v6

    .line 246
    :cond_4
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->parseX509Certificate(Landroid/net/Uri;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 248
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertUri:Landroid/net/Uri;

    if-eqz v4, :cond_6

    .line 249
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCertPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "certPassword":Ljava/lang/String;
    const/4 v5, 0x0

    .line 252
    .local v5, "parseInfo":Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
    nop

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertUri:Landroid/net/Uri;

    .line 253
    invoke-static {v7, v8, v4}, Lcom/afwsamples/testdpc/common/CertificateUtil;->parsePKCS12Certificate(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;

    move-result-object v7
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    .line 261
    goto :goto_1

    .line 255
    :catch_0
    move-exception v7

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_0

    :catch_2
    move-exception v7

    goto :goto_0

    :catch_3
    move-exception v7

    goto :goto_0

    :catch_4
    move-exception v7

    .line 260
    .local v7, "e":Ljava/lang/Exception;
    :goto_0
    const-string/jumbo v8, "wifi_eap_tls"

    const-string v9, "Fail to parse the input certificate: "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    if-nez v5, :cond_5

    .line 263
    sget v7, Lcom/afwsamples/testdpc/R$string;->error_missing_client_cert:I

    invoke-direct {p0, v7}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    .line 264
    return-object v6

    .line 266
    :cond_5
    iget-object v6, v5, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->privateKey:Ljava/security/PrivateKey;

    iget-object v7, v5, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientKeyEntry(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V

    .line 267
    .end local v4    # "certPassword":Ljava/lang/String;
    .end local v5    # "parseInfo":Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertAlias:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 268
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertAlias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->grantKeyPairToWifiAuth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 269
    sget v4, Lcom/afwsamples/testdpc/R$string;->error_cannot_grant_to_wifi:I

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    .line 270
    return-object v6

    .line 272
    :cond_7
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertAlias:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientKeyPairAlias(Ljava/lang/String;)V

    .line 278
    :goto_2
    return-object v0

    .line 274
    :cond_8
    sget v4, Lcom/afwsamples/testdpc/R$string;->error_missing_client_cert:I

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    .line 275
    return-object v6
.end method

.method private extractInputDataAndSave()Z
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mSsidEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "ssid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mSsidEditText:Landroid/widget/EditText;

    sget v3, Lcom/afwsamples/testdpc/R$string;->error_missing_ssid:I

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 185
    return v2

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mSsidEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 192
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 194
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->extractEnterpriseConfig()Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 196
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v1, :cond_1

    .line 197
    return v2

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1, v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;->saveWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    .line 201
    .local v1, "success":Z
    if-eqz v1, :cond_2

    .line 202
    sget v2, Lcom/afwsamples/testdpc/R$string;->wifi_configs_header:I

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    .line 203
    const/4 v2, 0x1

    return v2

    .line 205
    :cond_2
    sget v3, Lcom/afwsamples/testdpc/R$string;->wifi_config_fail:I

    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    .line 207
    return v2
.end method

.method private getQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onSelectClientCertClicked$0(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 148
    if-nez p1, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertAlias:Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertUri:Landroid/net/Uri;

    .line 155
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method private synthetic lambda$onSelectClientCertClicked$1(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->updateSelectedCert(Landroid/widget/TextView;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Landroid/net/wifi/WifiConfiguration;)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "config"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    new-instance v1, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;-><init>()V

    .line 70
    .local v1, "fragment":Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v1
.end method

.method private onSelectClientCertClicked(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 145
    nop

    .line 146
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;)V

    .line 145
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method private parseX509Certificate(Landroid/net/Uri;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 287
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 288
    .local v0, "factory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 289
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 290
    .end local v0    # "factory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 291
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    const-string/jumbo v1, "wifi_eap_tls"

    const-string v2, "parseX509Certificate: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const/4 v1, 0x0

    return-object v1
.end method

.method private populateUi()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mSsidEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mIdentityEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->updateSelectedCert(Landroid/widget/TextView;Landroid/net/Uri;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->updateSelectedCert(Landroid/widget/TextView;Landroid/net/Uri;Ljava/lang/String;)V

    .line 175
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 176
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mDomainEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mAltSubjectMatchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getAltSubjectMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_2
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "message"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    return-void
.end method

.method private updateSelectedCert(Landroid/widget/TextView;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 11
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textView",
            "uri",
            "alias"
        }
    .end annotation

    .line 319
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, "displayName":Ljava/lang/String;
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "_display_name"

    aput-object v4, v3, v1

    move-object v7, v3

    .line 322
    .local v7, "projection":[Ljava/lang/String;
    nop

    .line 323
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    .end local p2    # "uri":Landroid/net/Uri;
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 324
    .local p2, "cursor":Landroid/database/Cursor;
    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    goto :goto_1

    .line 322
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz p2, :cond_0

    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 327
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 328
    .end local p2    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 329
    sget p2, Lcom/afwsamples/testdpc/R$string;->wifi_unknown_cert:I

    invoke-virtual {p0, p2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    :cond_3
    sget p2, Lcom/afwsamples/testdpc/R$string;->selected_certificate:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 332
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v7    # "projection":[Ljava/lang/String;
    .local p2, "selectedText":Ljava/lang/String;
    goto :goto_2

    .end local v6    # "uri":Landroid/net/Uri;
    .local p2, "uri":Landroid/net/Uri;
    :cond_4
    move-object v6, p2

    .end local p2    # "uri":Landroid/net/Uri;
    .restart local v6    # "uri":Landroid/net/Uri;
    if-eqz p3, :cond_5

    .line 333
    sget p2, Lcom/afwsamples/testdpc/R$string;->selected_keychain_certificate:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .local p2, "selectedText":Ljava/lang/String;
    goto :goto_2

    .line 335
    .end local p2    # "selectedText":Ljava/lang/String;
    :cond_5
    sget p2, Lcom/afwsamples/testdpc/R$string;->selected_certificate_none:I

    invoke-virtual {p0, p2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 337
    .restart local p2    # "selectedText":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "intent"
        }
    .end annotation

    .line 346
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 347
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 353
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertUri:Landroid/net/Uri;

    .line 354
    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertAlias:Ljava/lang/String;

    .line 355
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->updateSelectedCert(Landroid/widget/TextView;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertUri:Landroid/net/Uri;

    .line 350
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->updateSelectedCert(Landroid/widget/TextView;Landroid/net/Uri;Ljava/lang/String;)V

    .line 351
    nop

    .line 359
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 76
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 78
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 79
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 82
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/afwsamples/testdpc/R$layout;->eap_tls_wifi_config_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "rootView":Landroid/view/View;
    sget v3, Lcom/afwsamples/testdpc/R$id;->import_ca_cert:I

    .line 90
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;

    const-string v5, "application/x-x509-ca-cert"

    const/4 v6, 0x1

    invoke-direct {v4, p0, v6, v5}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;ILjava/lang/String;)V

    .line 91
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget v3, Lcom/afwsamples/testdpc/R$id;->import_user_cert:I

    .line 94
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;

    const/4 v5, 0x2

    const-string v7, "application/x-pkcs12"

    invoke-direct {v4, p0, v5, v7}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;ILjava/lang/String;)V

    .line 95
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget v3, Lcom/afwsamples/testdpc/R$id;->select_user_cert:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 99
    .local v3, "selectUserCertButton":Landroid/widget/Button;
    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_0

    .line 100
    new-instance v4, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 103
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    :goto_0
    sget v4, Lcom/afwsamples/testdpc/R$id;->selected_ca_cert:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertTextView:Landroid/widget/TextView;

    .line 106
    sget v4, Lcom/afwsamples/testdpc/R$id;->selected_user_cert:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertTextView:Landroid/widget/TextView;

    .line 107
    sget v4, Lcom/afwsamples/testdpc/R$id;->ssid:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mSsidEditText:Landroid/widget/EditText;

    .line 108
    sget v4, Lcom/afwsamples/testdpc/R$id;->wifi_client_cert_password:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCertPasswordEditText:Landroid/widget/EditText;

    .line 109
    sget v4, Lcom/afwsamples/testdpc/R$id;->wifi_identity:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mIdentityEditText:Landroid/widget/EditText;

    .line 110
    sget v4, Lcom/afwsamples/testdpc/R$id;->wifi_domain:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mDomainEditText:Landroid/widget/EditText;

    .line 111
    sget v4, Lcom/afwsamples/testdpc/R$id;->wifi_alt_subject_match:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mAltSubjectMatchEditText:Landroid/widget/EditText;

    .line 113
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mDomainEditText:Landroid/widget/EditText;

    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/4 v7, 0x0

    const/16 v8, 0x17

    if-lt v5, v8, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 114
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mAltSubjectMatchEditText:Landroid/widget/EditText;

    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-lt v5, v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 115
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->populateUi()V

    .line 116
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/afwsamples/testdpc/R$string;->create_eap_tls_wifi_configuration:I

    .line 118
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 119
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/afwsamples/testdpc/R$string;->wifi_save:I

    .line 120
    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/afwsamples/testdpc/R$string;->wifi_cancel:I

    .line 121
    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 123
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;

    invoke-direct {v4, p0, v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 141
    return-object v2
.end method
