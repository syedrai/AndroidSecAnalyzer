.class public Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;
.super Ljava/lang/Object;
.source "X509CertificateHolderSelector.java"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private serialNumber:Ljava/math/BigInteger;

.field private subjectKeyId:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuer",
            "serialNumber"
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V
    .locals 0
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "subjectKeyId"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "issuer",
            "serialNumber",
            "subjectKeyId"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 57
    iput-object p2, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    .line 58
    iput-object p3, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "subjectKeyId"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subjectKeyId"
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    .line 32
    return-void
.end method

.method private equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 150
    new-instance v0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    iget-object v1, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 96
    instance-of v0, p1, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    return v1

    .line 101
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    .line 103
    .local v0, "id":Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    iget-object v3, v0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iget-object v3, v0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    .line 104
    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v3, v0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 105
    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 103
    :goto_0
    return v1
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSubjectKeyIdentifier()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    .line 80
    .local v0, "code":I
    iget-object v1, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 85
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 90
    :cond_1
    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 115
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 117
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 119
    .local v0, "certHldr":Lorg/bouncycastle/cert/X509CertificateHolder;
    invoke-virtual {p0}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 121
    new-instance v2, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    .line 123
    .local v2, "iAndS":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 123
    :goto_0
    return v1

    .line 126
    .end local v2    # "iAndS":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    if-eqz v2, :cond_3

    .line 128
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 130
    .local v1, "ext":Lorg/bouncycastle/asn1/x509/Extension;
    if-nez v1, :cond_2

    .line 132
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;->calculateKeyId(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    return v2

    .line 135
    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 137
    .local v2, "subKeyID":[B
    iget-object v3, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v3, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    return v3

    .line 139
    .end local v0    # "certHldr":Lorg/bouncycastle/cert/X509CertificateHolder;
    .end local v1    # "ext":Lorg/bouncycastle/asn1/x509/Extension;
    .end local v2    # "subKeyID":[B
    :cond_3
    goto :goto_1

    .line 140
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    .line 145
    :cond_5
    :goto_1
    return v1
.end method
