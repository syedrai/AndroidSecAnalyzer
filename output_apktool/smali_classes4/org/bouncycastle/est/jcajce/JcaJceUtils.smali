.class public Lorg/bouncycastle/est/jcajce/JcaJceUtils;
.super Ljava/lang/Object;
.source "JcaJceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKeyManagerFactory(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;[C)Ljavax/net/ssl/KeyManagerFactory;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "clientKeyStore"    # Ljava/security/KeyStore;
    .param p3, "clientKeyStorePass"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "provider",
            "clientKeyStore",
            "clientKeyStorePass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 205
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_0
    if-nez p1, :cond_1

    .line 209
    invoke-static {p0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {p0, p1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 215
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 216
    return-object v0
.end method

.method public static getCertPathTrustManager(Ljava/util/Set;[Ljava/security/cert/CRL;)[Ljavax/net/ssl/X509TrustManager;
    .locals 6
    .param p1, "revocationLists"    # [Ljava/security/cert/CRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "anchors",
            "revocationLists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;[",
            "Ljava/security/cert/CRL;",
            ")[",
            "Ljavax/net/ssl/X509TrustManager;"
        }
    .end annotation

    .line 70
    .local p0, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 71
    .local v0, "x509CertificateTrustAnchors":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 72
    .local v1, "c":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 76
    .local v3, "ta":Ljava/security/cert/TrustAnchor;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "c":I
    .local v4, "c":I
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    aput-object v5, v0, v1

    .line 77
    .end local v3    # "ta":Ljava/security/cert/TrustAnchor;
    move v1, v4

    goto :goto_0

    .line 79
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "c":I
    .restart local v1    # "c":I
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    new-instance v3, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;

    invoke-direct {v3, p0, p1, v0}, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;-><init>(Ljava/util/Set;[Ljava/security/cert/CRL;[Ljava/security/cert/X509Certificate;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    return-object v2
.end method

.method public static getTrustAllTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 46
    new-instance v0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$1;

    invoke-direct {v0}, Lorg/bouncycastle/est/jcajce/JcaJceUtils$1;-><init>()V

    return-object v0
.end method

.method public static validateServerCertUsage(Ljava/security/cert/X509Certificate;)V
    .locals 5
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x509Certificate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 151
    :try_start_0
    new-instance v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    .line 153
    .local v0, "cert":Lorg/bouncycastle/cert/X509CertificateHolder;
    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/KeyUsage;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/KeyUsage;

    move-result-object v1

    .line 155
    .local v1, "keyUsage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    if-eqz v1, :cond_2

    .line 157
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/KeyUsage;->hasUsages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/KeyUsage;->hasUsages(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/KeyUsage;->hasUsages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Key usage must be none, digitalSignature or keyEncipherment"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "x509Certificate":Ljava/security/cert/X509Certificate;
    throw v2

    .line 159
    .restart local p0    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_1
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Key usage must not contain keyCertSign"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "x509Certificate":Ljava/security/cert/X509Certificate;
    throw v2

    .line 171
    .restart local p0    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;

    move-result-object v2

    .line 173
    .local v2, "extendedKeyUsage":Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;
    if-eqz v2, :cond_4

    .line 175
    sget-object v3, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->hasKeyPurposeId(Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_msSGC:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 176
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->hasKeyPurposeId(Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_nsSGC:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 177
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->hasKeyPurposeId(Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 179
    :cond_3
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "Certificate extended key usage must include serverAuth, msSGC or nsSGC"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "x509Certificate":Ljava/security/cert/X509Certificate;
    throw v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0    # "cert":Lorg/bouncycastle/cert/X509CertificateHolder;
    .end local v1    # "keyUsage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    .end local v2    # "extendedKeyUsage":Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;
    .restart local p0    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_4
    :goto_1
    nop

    .line 192
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "c":Ljava/security/cert/CertificateException;
    throw v0
.end method
