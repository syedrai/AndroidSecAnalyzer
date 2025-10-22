.class Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;
.super Ljava/security/cert/X509CertSelector;
.source "X509CertStoreSelector.java"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/security/cert/X509CertSelector;)Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;
    .locals 6
    .param p0, "selector"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation

    .line 52
    if-eqz p0, :cond_0

    .line 56
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;-><init>()V

    .line 57
    .local v0, "cs":Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getAuthorityKeyIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setAuthorityKeyIdentifier([B)V

    .line 58
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setBasicConstraints(I)V

    .line 59
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 60
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificateValid()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setCertificateValid(Ljava/util/Date;)V

    .line 61
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getMatchAllSubjectAltNames()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setMatchAllSubjectAltNames(Z)V

    .line 64
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPathToNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setPathToNames(Ljava/util/Collection;)V

    .line 65
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getExtendedKeyUsage()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setExtendedKeyUsage(Ljava/util/Set;)V

    .line 66
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getNameConstraints()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setNameConstraints([B)V

    .line 67
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPolicy()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setPolicy(Ljava/util/Set;)V

    .line 68
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKeyAlgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setSubjectPublicKeyAlgID(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setSubjectAlternativeNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .line 75
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 76
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getKeyUsage()[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setKeyUsage([Z)V

    .line 77
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPrivateKeyValid()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setPrivateKeyValid(Ljava/util/Date;)V

    .line 78
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 79
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 80
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectKeyIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setSubjectKeyIdentifier([B)V

    .line 81
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->setSubjectPublicKey(Ljava/security/PublicKey;)V

    .line 82
    return-object v0

    .line 71
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in passed in selector: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    .end local v0    # "cs":Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot create from null selector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;

    .line 40
    .local v0, "selector":Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;
    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 21
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    return v0

    .line 26
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 28
    .local v0, "other":Ljava/security/cert/X509Certificate;
    invoke-super {p0, v0}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    return v1
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cert"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
