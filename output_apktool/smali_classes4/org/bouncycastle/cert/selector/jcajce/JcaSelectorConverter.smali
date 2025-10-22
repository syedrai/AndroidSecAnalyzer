.class public Lorg/bouncycastle/cert/selector/jcajce/JcaSelectorConverter;
.super Ljava/lang/Object;
.source "JcaSelectorConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getCertificateHolderSelector(Ljava/security/cert/X509CertSelector;)Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;
    .locals 5
    .param p1, "certSelector"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certSelector"
        }
    .end annotation

    .line 22
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getIssuerAsBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 23
    .local v0, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    .line 24
    .local v1, "serialNumber":Ljava/math/BigInteger;
    const/4 v2, 0x0

    .line 26
    .local v2, "subjectKeyId":[B
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectKeyIdentifier()[B

    move-result-object v3

    .line 27
    .local v3, "subjectKeyIdentifier":[B
    if-eqz v3, :cond_0

    .line 29
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    move-object v2, v4

    .line 32
    :cond_0
    new-instance v4, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-direct {v4, v0, v1, v2}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 34
    .end local v0    # "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v1    # "serialNumber":Ljava/math/BigInteger;
    .end local v2    # "subjectKeyId":[B
    .end local v3    # "subjectKeyIdentifier":[B
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to convert issuer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
