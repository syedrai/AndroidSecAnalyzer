.class public Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;
.super Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
.source "JcaCertificateRequestMessageBuilder.java"


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "certReqId"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certReqId"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;-><init>(Ljava/math/BigInteger;)V

    .line 19
    return-void
.end method


# virtual methods
.method public setAuthInfoSender(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;
    .locals 2
    .param p1, "sender"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sender"
        }
    .end annotation

    .line 43
    if-eqz p1, :cond_0

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;->setAuthInfoSender(Lorg/bouncycastle/asn1/x509/GeneralName;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;

    .line 48
    :cond_0
    return-object p0
.end method

.method public setIssuer(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;
    .locals 1
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuer"
        }
    .end annotation

    .line 23
    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;->setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;

    .line 28
    :cond_0
    return-object p0
.end method

.method public setPublicKey(Ljava/security/PublicKey;)Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;
    .locals 1
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 53
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;->setPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;

    .line 55
    return-object p0
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;
    .locals 1
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subject"
        }
    .end annotation

    .line 33
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRequestMessageBuilder;->setSubject(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;

    .line 38
    :cond_0
    return-object p0
.end method
