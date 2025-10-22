.class public Lorg/bouncycastle/cert/X509CRLHolder;
.super Ljava/lang/Object;
.source "X509CRLHolder.java"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4b244cad1L


# instance fields
.field private transient extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private transient isIndirect:Z

.field private transient issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private transient x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "crlStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crlStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->parseStream(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/X509CRLHolder;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V
    .locals 0
    .param p1, "x509CRL"    # Lorg/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x509CRL"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CRLHolder;->init(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    .line 121
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "crlEncoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crlEncoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/cert/X509CRLHolder;->parseStream(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/X509CRLHolder;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    .line 99
    return-void
.end method

.method private init(Lorg/bouncycastle/asn1/x509/CertificateList;)V
    .locals 3
    .param p1, "x509CRL"    # Lorg/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x509CRL"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    .line 126
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirectCRL(Lorg/bouncycastle/asn1/x509/Extensions;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirect:Z

    .line 128
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v1, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 129
    return-void
.end method

.method private static isIndirectCRL(Lorg/bouncycastle/asn1/x509/Extensions;)Z
    .locals 3
    .param p0, "extensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensions"
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 81
    return v0

    .line 84
    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 86
    .local v1, "ext":Lorg/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static parseStream(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/x509/CertificateList;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const-string v0, "malformed data: "

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;Z)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 61
    .local v1, "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-eqz v1, :cond_0

    .line 65
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "no content found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "stream":Ljava/io/InputStream;
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local p0    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/bouncycastle/cert/CertIOException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 67
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/bouncycastle/cert/CertIOException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 407
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 409
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/X509CRLHolder;->init(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    .line 410
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 418
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CRLHolder;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 419
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 383
    if-ne p1, p0, :cond_0

    .line 385
    const/4 v0, 0x1

    return v0

    .line 388
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CRLHolder;

    if-nez v0, :cond_1

    .line 390
    const/4 v0, 0x0

    return v0

    .line 393
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/X509CRLHolder;

    .line 395
    .local v0, "other":Lorg/bouncycastle/cert/X509CRLHolder;
    iget-object v1, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    iget-object v2, v0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/CertificateList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/CertUtils;->getCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionOIDs()Ljava/util/List;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/CertUtils;->getExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    .line 162
    .local v0, "update":Lorg/bouncycastle/asn1/x509/Time;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 167
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/CertUtils;->getNonCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Lorg/bouncycastle/cert/X509CRLEntryHolder;
    .locals 5
    .param p1, "serialNumber"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialNumber"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 173
    .local v0, "currentCA":Lorg/bouncycastle/asn1/x509/GeneralNames;
    iget-object v1, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 177
    .local v2, "entry":Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    new-instance v3, Lorg/bouncycastle/cert/X509CRLEntryHolder;

    iget-boolean v4, p0, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirect:Z

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/cert/X509CRLEntryHolder;-><init>(Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLorg/bouncycastle/asn1/x509/GeneralNames;)V

    return-object v3

    .line 182
    :cond_0
    iget-boolean v3, p0, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirect:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    .line 186
    .local v3, "currentCaName":Lorg/bouncycastle/asn1/x509/Extension;
    if-eqz v3, :cond_1

    .line 188
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    .line 191
    .end local v2    # "entry":Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .end local v3    # "currentCaName":Lorg/bouncycastle/asn1/x509/Extension;
    :cond_1
    goto :goto_0

    .line 193
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRevokedCertificates()Ljava/util/Collection;
    .locals 7

    .line 204
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificates()[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    .line 205
    .local v0, "entries":[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v1, "l":Ljava/util/List;
    iget-object v2, p0, Lorg/bouncycastle/cert/X509CRLHolder;->issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 208
    .local v2, "currentCA":Lorg/bouncycastle/asn1/x509/GeneralNames;
    iget-object v3, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 211
    .local v4, "entry":Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    new-instance v5, Lorg/bouncycastle/cert/X509CRLEntryHolder;

    iget-boolean v6, p0, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirect:Z

    invoke-direct {v5, v4, v6, v2}, Lorg/bouncycastle/cert/X509CRLEntryHolder;-><init>(Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLorg/bouncycastle/asn1/x509/GeneralNames;)V

    .line 213
    .local v5, "crlEntry":Lorg/bouncycastle/cert/X509CRLEntryHolder;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v5}, Lorg/bouncycastle/cert/X509CRLEntryHolder;->getCertificateIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    .line 216
    .end local v4    # "entry":Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .end local v5    # "crlEntry":Lorg/bouncycastle/cert/X509CRLEntryHolder;
    goto :goto_0

    .line 218
    .end local v3    # "en":Ljava/util/Enumeration;
    :cond_0
    return-object v1
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getThisUpdate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 400
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAlternativeSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 11
    .param p1, "verifierProvider"    # Lorg/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifierProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    .line 339
    .local v0, "tbsCrList":Lorg/bouncycastle/asn1/x509/TBSCertList;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AltSignatureAlgorithm;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/AltSignatureAlgorithm;

    move-result-object v1

    .line 340
    .local v1, "altSigAlg":Lorg/bouncycastle/asn1/x509/AltSignatureAlgorithm;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AltSignatureValue;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/AltSignatureValue;

    move-result-object v2

    .line 346
    .local v2, "altSigValue":Lorg/bouncycastle/asn1/x509/AltSignatureValue;
    :try_start_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AltSignatureAlgorithm;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v3

    .line 348
    .local v3, "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    invoke-interface {v3}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 350
    .local v4, "sOut":Ljava/io/OutputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    .line 351
    .local v5, "tbsSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 353
    .local v6, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v7, 0x1

    .line 354
    .local v7, "start":I
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    instance-of v9, v9, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v9, :cond_0

    .line 356
    invoke-virtual {v5, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 357
    add-int/lit8 v7, v7, 0x1

    .line 360
    :cond_0
    move v9, v7

    .local v9, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v9, v10, :cond_1

    .line 362
    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 360
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 365
    .end local v9    # "i":I
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/bouncycastle/cert/CertUtils;->trimExtensions(ILorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 367
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v9, "DER"

    invoke-virtual {v8, v4, v9}, Lorg/bouncycastle/asn1/DERSequence;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v4    # "sOut":Ljava/io/OutputStream;
    .end local v5    # "tbsSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v6    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v7    # "start":I
    nop

    .line 376
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AltSignatureValue;->getSignature()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v4

    return v4

    .line 371
    .end local v3    # "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    :catch_0
    move-exception v3

    .line 373
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/cert/CertException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to process signature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 6
    .param p1, "verifierProvider"    # Lorg/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifierProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    .line 312
    .local v0, "tbsCRL":Lorg/bouncycastle/asn1/x509/TBSCertList;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/cert/CertUtils;->isAlgIdEqual(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v1

    .line 323
    .local v1, "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    invoke-interface {v1}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 324
    .local v2, "sOut":Ljava/io/OutputStream;
    const-string v3, "DER"

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/asn1/x509/TBSCertList;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v2    # "sOut":Ljava/io/OutputStream;
    nop

    .line 332
    iget-object v2, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/CertificateList;->getSignature()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v2

    return v2

    .line 327
    .end local v1    # "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/cert/CertException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to process signature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 314
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/bouncycastle/cert/CertException;

    const-string/jumbo v2, "signature invalid - algorithm identifier mismatch"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/x509/CertificateList;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Lorg/bouncycastle/asn1/x509/CertificateList;

    return-object v0
.end method
