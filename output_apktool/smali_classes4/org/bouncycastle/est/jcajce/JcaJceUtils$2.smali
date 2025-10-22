.class Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;
.super Ljava/lang/Object;
.source "JcaJceUtils.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/jcajce/JcaJceUtils;->getCertPathTrustManager(Ljava/util/Set;[Ljava/security/cert/CRL;)[Ljavax/net/ssl/X509TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$anchors:Ljava/util/Set;

.field final synthetic val$revocationLists:[Ljava/security/cert/CRL;

.field final synthetic val$x509CertificateTrustAnchors:[Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Ljava/util/Set;[Ljava/security/cert/CRL;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$anchors",
            "val$revocationLists",
            "val$x509CertificateTrustAnchors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$anchors:Ljava/util/Set;

    iput-object p2, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$revocationLists:[Ljava/security/cert/CRL;

    iput-object p3, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$x509CertificateTrustAnchors:[Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x509Certificates",
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to authenticate client connection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 8
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x509Certificates",
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 92
    const-string v0, "BC"

    const-string v1, "Collection"

    :try_start_0
    new-instance v2, Ljava/security/cert/CollectionCertStoreParameters;

    .line 93
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-static {v1, v2, v0}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;

    move-result-object v2

    .line 95
    .local v2, "certStore":Ljava/security/cert/CertStore;
    const-string v3, "PKIX"

    invoke-static {v3, v0}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v0

    .line 97
    .local v0, "pathBuilder":Ljava/security/cert/CertPathBuilder;
    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 99
    .local v3, "constraints":Ljava/security/cert/X509CertSelector;
    const/4 v4, 0x0

    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 102
    new-instance v5, Ljava/security/cert/PKIXBuilderParameters;

    iget-object v6, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$anchors:Ljava/util/Set;

    invoke-direct {v5, v6, v3}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V

    .line 103
    .local v5, "param":Ljava/security/cert/PKIXBuilderParameters;
    invoke-virtual {v5, v2}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 104
    iget-object v6, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$revocationLists:[Ljava/security/cert/CRL;

    if-eqz v6, :cond_0

    .line 106
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 107
    new-instance v6, Ljava/security/cert/CollectionCertStoreParameters;

    iget-object v7, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$revocationLists:[Ljava/security/cert/CRL;

    .line 110
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 108
    invoke-static {v1, v6}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v1

    .line 107
    invoke-virtual {v5, v1}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v5, v4}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 119
    :goto_0
    invoke-virtual {v0, v5}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathValidatorResult;

    .line 121
    .local v1, "ignored":Ljava/security/cert/PKIXCertPathValidatorResult;
    aget-object v4, p1, v4

    invoke-static {v4}, Lorg/bouncycastle/est/jcajce/JcaJceUtils;->validateServerCertUsage(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "pathBuilder":Ljava/security/cert/CertPathBuilder;
    .end local v1    # "ignored":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v2    # "certStore":Ljava/security/cert/CertStore;
    .end local v3    # "constraints":Ljava/security/cert/X509CertSelector;
    .end local v5    # "param":Ljava/security/cert/PKIXBuilderParameters;
    nop

    .line 132
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to process certificates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 124
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/security/cert/CertificateException;
    throw v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 4

    .line 136
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$x509CertificateTrustAnchors:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 138
    .local v0, "rv":[Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$x509CertificateTrustAnchors:[Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    return-object v0
.end method
