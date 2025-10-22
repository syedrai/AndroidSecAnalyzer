.class public Lorg/bouncycastle/cert/AttributeCertificateIssuer;
.super Ljava/lang/Object;
.source "AttributeCertificateIssuer.java"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field final form:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 3
    .param p1, "principal"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "principal"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/bouncycastle/asn1/x509/V2Form;

    new-instance v1, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v2, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/V2Form;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V
    .locals 1
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x509/AttCertIssuer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuer"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AttCertIssuer;->getIssuer()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 30
    return-void
.end method

.method private matchesDN(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 5
    .param p1, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "targets"    # Lorg/bouncycastle/asn1/x509/GeneralNames;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subject",
            "targets"
        }
    .end annotation

    .line 67
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    .line 69
    .local v0, "names":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 71
    aget-object v2, v0, v1

    .line 73
    .local v2, "gn":Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 75
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const/4 v3, 0x1

    return v3

    .line 69
    .end local v2    # "gn":Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 87
    new-instance v0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    iget-object v1, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/AttributeCertificateIssuer;-><init>(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 92
    if-ne p1, p0, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    if-nez v0, :cond_1

    .line 99
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    .line 104
    .local v0, "other":Lorg/bouncycastle/cert/AttributeCertificateIssuer;
    iget-object v1, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, v0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getNames()[Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 6

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    .local v0, "name":Lorg/bouncycastle/asn1/x509/GeneralNames;
    goto :goto_0

    .line 47
    .end local v0    # "name":Lorg/bouncycastle/asn1/x509/GeneralNames;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 50
    .restart local v0    # "name":Lorg/bouncycastle/asn1/x509/GeneralNames;
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 52
    .local v1, "names":[Lorg/bouncycastle/asn1/x509/GeneralName;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .local v2, "l":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-eq v3, v4, :cond_2

    .line 56
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 58
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v3    # "i":I
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v3
.end method

.method public hashCode()I
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 114
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 116
    return v1

    .line 119
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 121
    .local v0, "x509Cert":Lorg/bouncycastle/cert/X509CertificateHolder;
    iget-object v2, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v2, v2, Lorg/bouncycastle/asn1/x509/V2Form;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 123
    iget-object v2, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v2, Lorg/bouncycastle/asn1/x509/V2Form;

    .line 124
    .local v2, "issuer":Lorg/bouncycastle/asn1/x509/V2Form;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 126
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->matchesDN(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 126
    :goto_0
    return v1

    .line 130
    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    .line 131
    .local v4, "name":Lorg/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->matchesDN(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    return v3

    .line 135
    .end local v2    # "issuer":Lorg/bouncycastle/asn1/x509/V2Form;
    .end local v4    # "name":Lorg/bouncycastle/asn1/x509/GeneralNames;
    :cond_3
    goto :goto_1

    .line 138
    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v2, Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 139
    .local v2, "name":Lorg/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->matchesDN(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 141
    return v3

    .line 145
    .end local v2    # "name":Lorg/bouncycastle/asn1/x509/GeneralNames;
    :cond_5
    :goto_1
    return v1
.end method
