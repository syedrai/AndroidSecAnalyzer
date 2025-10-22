.class public Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;
.super Ljava/lang/Object;
.source "X509AttributeCertStoreSelector.java"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

.field private attributeCertificateValid:Ljava/util/Date;

.field private holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

.field private issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

.field private serialNumber:Ljava/math/BigInteger;

.field private targetGroups:Ljava/util/Collection;

.field private targetNames:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    .line 55
    return-void
.end method

.method private extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .param p1, "names"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "names"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 469
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 470
    .local v0, "temp":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 473
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v3, :cond_1

    .line 475
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 479
    :cond_1
    move-object v3, v2

    check-cast v3, [B

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 481
    .end local v2    # "o":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 482
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2
    return-object v0

    .line 467
    .end local v0    # "temp":Ljava/util/Set;
    :cond_3
    :goto_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addTargetGroup(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "group"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 410
    return-void
.end method

.method public addTargetGroup([B)V
    .locals 1
    .param p1, "name"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->addTargetGroup(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 428
    return-void
.end method

.method public addTargetName(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "name"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method public addTargetName([B)V
    .locals 1
    .param p1, "name"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->addTargetName(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 362
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 200
    new-instance v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 201
    .local v0, "sel":Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;
    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    .line 202
    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCertificateValid()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    .line 203
    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    .line 204
    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    .line 205
    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    .line 206
    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getTargetGroups()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    .line 207
    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getTargetNames()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    .line 208
    return-object v0
.end method

.method public getAttributeCert()Lorg/bouncycastle/x509/X509AttributeCertificate;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public getAttributeCertificateValid()Ljava/util/Date;
    .locals 3

    .line 239
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTargetGroups()Ljava/util/Collection;
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTargetNames()Ljava/util/Collection;
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 66
    instance-of v0, p1, Lorg/bouncycastle/x509/X509AttributeCertificate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    return v1

    .line 71
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/x509/X509AttributeCertificate;

    .line 73
    .local v0, "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    return v1

    .line 80
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    .line 82
    invoke-interface {v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    return v1

    .line 87
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    if-eqz v2, :cond_3

    .line 89
    invoke-interface {v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 91
    return v1

    .line 94
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    if-eqz v2, :cond_4

    .line 96
    invoke-interface {v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 98
    return v1

    .line 102
    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v2, :cond_5

    .line 106
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-interface {v0, v2}, Lorg/bouncycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 112
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/security/cert/CertificateNotYetValidException;
    return v1

    .line 108
    .end local v2    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_1
    move-exception v2

    .line 110
    .local v2, "e":Ljava/security/cert/CertificateExpiredException;
    return v1

    .line 117
    .end local v2    # "e":Ljava/security/cert/CertificateExpiredException;
    :cond_5
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 120
    :cond_6
    sget-object v2, Lorg/bouncycastle/asn1/x509/Extension;->targetInformation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 121
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 122
    .local v2, "targetInfoExt":[B
    if-eqz v2, :cond_e

    .line 127
    :try_start_1
    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    .line 130
    invoke-static {v2}, Lorg/bouncycastle/asn1/DEROctetString;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 131
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 128
    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TargetInformation;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 140
    .local v3, "targetinfo":Lorg/bouncycastle/asn1/x509/TargetInformation;
    nop

    .line 141
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/TargetInformation;->getTargetsObjects()[Lorg/bouncycastle/asn1/x509/Targets;

    move-result-object v4

    .line 142
    .local v4, "targetss":[Lorg/bouncycastle/asn1/x509/Targets;
    iget-object v5, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 144
    const/4 v5, 0x0

    .line 146
    .local v5, "found":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_9

    .line 148
    aget-object v7, v4, v6

    .line 149
    .local v7, "t":Lorg/bouncycastle/asn1/x509/Targets;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lorg/bouncycastle/asn1/x509/Target;

    move-result-object v8

    .line 150
    .local v8, "targets":[Lorg/bouncycastle/asn1/x509/Target;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    array-length v10, v8

    if-ge v9, v10, :cond_8

    .line 152
    iget-object v10, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    aget-object v11, v8, v9

    .line 153
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/Target;->getTargetName()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v11

    .line 152
    invoke-static {v11}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 155
    const/4 v5, 0x1

    .line 156
    goto :goto_3

    .line 150
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 146
    .end local v7    # "t":Lorg/bouncycastle/asn1/x509/Targets;
    .end local v8    # "targets":[Lorg/bouncycastle/asn1/x509/Target;
    .end local v9    # "j":I
    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 160
    .end local v6    # "i":I
    :cond_9
    if-nez v5, :cond_a

    .line 162
    return v1

    .line 165
    .end local v5    # "found":Z
    :cond_a
    iget-object v5, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 167
    const/4 v5, 0x0

    .line 169
    .restart local v5    # "found":Z
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    array-length v7, v4

    if-ge v6, v7, :cond_d

    .line 171
    aget-object v7, v4, v6

    .line 172
    .restart local v7    # "t":Lorg/bouncycastle/asn1/x509/Targets;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lorg/bouncycastle/asn1/x509/Target;

    move-result-object v8

    .line 173
    .restart local v8    # "targets":[Lorg/bouncycastle/asn1/x509/Target;
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_5
    array-length v10, v8

    if-ge v9, v10, :cond_c

    .line 175
    iget-object v10, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    aget-object v11, v8, v9

    .line 176
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/Target;->getTargetGroup()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v11

    .line 175
    invoke-static {v11}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 178
    const/4 v5, 0x1

    .line 179
    goto :goto_6

    .line 173
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 169
    .end local v7    # "t":Lorg/bouncycastle/asn1/x509/Targets;
    .end local v8    # "targets":[Lorg/bouncycastle/asn1/x509/Target;
    .end local v9    # "j":I
    :cond_c
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 183
    .end local v6    # "i":I
    :cond_d
    if-nez v5, :cond_e

    .line 185
    return v1

    .line 137
    .end local v3    # "targetinfo":Lorg/bouncycastle/asn1/x509/TargetInformation;
    .end local v4    # "targetss":[Lorg/bouncycastle/asn1/x509/Targets;
    .end local v5    # "found":Z
    :catch_2
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 133
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 135
    .local v3, "e":Ljava/io/IOException;
    return v1

    .line 190
    .end local v2    # "targetInfoExt":[B
    .end local v3    # "e":Ljava/io/IOException;
    :cond_e
    const/4 v1, 0x1

    return v1
.end method

.method public setAttributeCert(Lorg/bouncycastle/x509/X509AttributeCertificate;)V
    .locals 0
    .param p1, "attributeCert"    # Lorg/bouncycastle/x509/X509AttributeCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeCert"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    .line 230
    return-void
.end method

.method public setAttributeCertificateValid(Ljava/util/Date;)V
    .locals 3
    .param p1, "attributeCertificateValid"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeCertificateValid"
        }
    .end annotation

    .line 256
    if-eqz p1, :cond_0

    .line 258
    new-instance v0, Ljava/util/Date;

    .line 259
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    goto :goto_0

    .line 263
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    .line 265
    :goto_0
    return-void
.end method

.method public setHolder(Lorg/bouncycastle/x509/AttributeCertificateHolder;)V
    .locals 0
    .param p1, "holder"    # Lorg/bouncycastle/x509/AttributeCertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    .line 285
    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/x509/AttributeCertificateIssuer;)V
    .locals 0
    .param p1, "issuer"    # Lorg/bouncycastle/x509/AttributeCertificateIssuer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuer"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    .line 306
    return-void
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialNumber"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    .line 327
    return-void
.end method

.method public setTargetGroups(Ljava/util/Collection;)V
    .locals 1
    .param p1, "names"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "names"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    .line 445
    return-void
.end method

.method public setTargetNames(Ljava/util/Collection;)V
    .locals 1
    .param p1, "names"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "names"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    .line 379
    return-void
.end method
