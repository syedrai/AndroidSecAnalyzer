.class public Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;
.super Ljava/lang/Object;
.source "X509AttributeCertificateHolderSelector.java"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private final attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

.field private final attributeCertificateValid:Ljava/util/Date;

.field private final holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

.field private final issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

.field private final serialNumber:Ljava/math/BigInteger;

.field private final targetGroups:Ljava/util/Collection;

.field private final targetNames:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cert/AttributeCertificateHolder;Lorg/bouncycastle/cert/AttributeCertificateIssuer;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/cert/X509AttributeCertificateHolder;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p1, "holder"    # Lorg/bouncycastle/cert/AttributeCertificateHolder;
    .param p2, "issuer"    # Lorg/bouncycastle/cert/AttributeCertificateIssuer;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;
    .param p4, "attributeCertificateValid"    # Ljava/util/Date;
    .param p5, "attributeCert"    # Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    .param p6, "targetNames"    # Ljava/util/Collection;
    .param p7, "targetGroups"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "issuer",
            "serialNumber",
            "attributeCertificateValid",
            "attributeCert",
            "targetNames",
            "targetGroups"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    .line 51
    iput-object p2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    .line 52
    iput-object p3, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    .line 53
    iput-object p4, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    .line 54
    iput-object p5, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    .line 55
    iput-object p6, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    .line 56
    iput-object p7, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 8

    .line 184
    new-instance v0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;

    iget-object v1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    iget-object v3, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    iget-object v5, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    iget-object v6, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    iget-object v7, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;-><init>(Lorg/bouncycastle/cert/AttributeCertificateHolder;Lorg/bouncycastle/cert/AttributeCertificateIssuer;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/cert/X509AttributeCertificateHolder;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 187
    .local v0, "sel":Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;
    return-object v0
.end method

.method public getAttributeCert()Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    return-object v0
.end method

.method public getAttributeCertificateValid()Ljava/util/Date;
    .locals 3

    .line 207
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 212
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHolder()Lorg/bouncycastle/cert/AttributeCertificateHolder;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/cert/AttributeCertificateIssuer;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTargetGroups()Ljava/util/Collection;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/Collection;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

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

    .line 68
    instance-of v0, p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 70
    return v1

    .line 73
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    .line 75
    .local v0, "attrCert":Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    return v1

    .line 82
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    return v1

    .line 89
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    if-eqz v2, :cond_3

    .line 91
    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getHolder()Lorg/bouncycastle/cert/AttributeCertificateHolder;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/cert/AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    return v1

    .line 96
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getIssuer()Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 100
    return v1

    .line 104
    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v2, :cond_5

    .line 106
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 108
    return v1

    .line 111
    :cond_5
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 113
    :cond_6
    sget-object v2, Lorg/bouncycastle/asn1/x509/Extension;->targetInformation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v2

    .line 114
    .local v2, "targetInfoExt":Lorg/bouncycastle/asn1/x509/Extension;
    if-eqz v2, :cond_e

    .line 119
    :try_start_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TargetInformation;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .local v3, "targetinfo":Lorg/bouncycastle/asn1/x509/TargetInformation;
    nop

    .line 125
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/TargetInformation;->getTargetsObjects()[Lorg/bouncycastle/asn1/x509/Targets;

    move-result-object v4

    .line 126
    .local v4, "targetss":[Lorg/bouncycastle/asn1/x509/Targets;
    iget-object v5, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 128
    const/4 v5, 0x0

    .line 130
    .local v5, "found":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_9

    .line 132
    aget-object v7, v4, v6

    .line 133
    .local v7, "t":Lorg/bouncycastle/asn1/x509/Targets;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lorg/bouncycastle/asn1/x509/Target;

    move-result-object v8

    .line 134
    .local v8, "targets":[Lorg/bouncycastle/asn1/x509/Target;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_8

    .line 136
    iget-object v10, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    aget-object v11, v8, v9

    .line 137
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/Target;->getTargetName()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v11

    .line 136
    invoke-static {v11}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 139
    const/4 v5, 0x1

    .line 140
    goto :goto_2

    .line 134
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 130
    .end local v7    # "t":Lorg/bouncycastle/asn1/x509/Targets;
    .end local v8    # "targets":[Lorg/bouncycastle/asn1/x509/Target;
    .end local v9    # "j":I
    :cond_8
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 144
    .end local v6    # "i":I
    :cond_9
    if-nez v5, :cond_a

    .line 146
    return v1

    .line 149
    .end local v5    # "found":Z
    :cond_a
    iget-object v5, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 151
    const/4 v5, 0x0

    .line 153
    .restart local v5    # "found":Z
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    array-length v7, v4

    if-ge v6, v7, :cond_d

    .line 155
    aget-object v7, v4, v6

    .line 156
    .restart local v7    # "t":Lorg/bouncycastle/asn1/x509/Targets;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lorg/bouncycastle/asn1/x509/Target;

    move-result-object v8

    .line 157
    .restart local v8    # "targets":[Lorg/bouncycastle/asn1/x509/Target;
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_4
    array-length v10, v8

    if-ge v9, v10, :cond_c

    .line 159
    iget-object v10, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    aget-object v11, v8, v9

    .line 160
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/Target;->getTargetGroup()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v11

    .line 159
    invoke-static {v11}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 162
    const/4 v5, 0x1

    .line 163
    goto :goto_5

    .line 157
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 153
    .end local v7    # "t":Lorg/bouncycastle/asn1/x509/Targets;
    .end local v8    # "targets":[Lorg/bouncycastle/asn1/x509/Target;
    .end local v9    # "j":I
    :cond_c
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 167
    .end local v6    # "i":I
    :cond_d
    if-nez v5, :cond_e

    .line 169
    return v1

    .line 121
    .end local v3    # "targetinfo":Lorg/bouncycastle/asn1/x509/TargetInformation;
    .end local v4    # "targetss":[Lorg/bouncycastle/asn1/x509/Targets;
    .end local v5    # "found":Z
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 174
    .end local v2    # "targetInfoExt":Lorg/bouncycastle/asn1/x509/Extension;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    const/4 v1, 0x1

    return v1
.end method
