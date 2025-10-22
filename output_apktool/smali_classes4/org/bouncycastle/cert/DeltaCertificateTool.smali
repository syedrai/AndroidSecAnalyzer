.class public Lorg/bouncycastle/cert/DeltaCertificateTool;
.super Ljava/lang/Object;
.source "DeltaCertificateTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractDeltaCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 17
    .param p0, "originCert"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originCert"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    .local v0, "deltaExtOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v2

    .line 55
    .local v2, "deltaExt":Lorg/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 66
    .local v3, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    .line 67
    .local v4, "originTbs":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    .line 68
    .local v5, "idx":I
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->toArray()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    .line 70
    .local v6, "extracted":[Lorg/bouncycastle/asn1/ASN1Encodable;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    aput-object v8, v6, v7

    .line 71
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "idx":I
    .local v8, "idx":I
    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v6, v9

    .line 73
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "idx":I
    .restart local v5    # "idx":I
    invoke-virtual {v3, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    .line 74
    .local v8, "next":Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    instance-of v10, v8, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x3

    if-eqz v10, :cond_0

    .line 76
    invoke-static {v8}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v10

    .line 77
    .local v10, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    goto :goto_1

    .line 89
    :pswitch_0
    move-object v12, v8

    check-cast v12, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v12, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v12

    aput-object v12, v6, v11

    goto :goto_1

    .line 86
    :pswitch_1
    invoke-static {v10, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    aput-object v11, v6, v12

    .line 87
    goto :goto_1

    .line 83
    :pswitch_2
    invoke-static {v10, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    aput-object v11, v6, v14

    .line 84
    goto :goto_1

    .line 80
    :pswitch_3
    invoke-static {v10, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    aput-object v11, v6, v13

    .line 81
    nop

    .line 92
    :goto_1
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "idx":I
    .local v11, "idx":I
    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    .line 93
    .end local v10    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    move v5, v11

    goto :goto_0

    .line 95
    .end local v11    # "idx":I
    .restart local v5    # "idx":I
    :cond_0
    const/4 v10, 0x6

    aput-object v8, v6, v10

    .line 97
    aget-object v10, v6, v13

    if-nez v10, :cond_1

    .line 99
    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    aput-object v10, v6, v13

    .line 102
    :cond_1
    aget-object v10, v6, v14

    if-nez v10, :cond_2

    .line 104
    invoke-virtual {v4, v14}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    aput-object v10, v6, v14

    .line 107
    :cond_2
    aget-object v10, v6, v12

    if-nez v10, :cond_3

    .line 109
    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    aput-object v10, v6, v12

    .line 112
    :cond_3
    aget-object v10, v6, v11

    if-nez v10, :cond_4

    .line 114
    invoke-virtual {v4, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    aput-object v10, v6, v11

    .line 117
    :cond_4
    invoke-static {v4}, Lorg/bouncycastle/cert/DeltaCertificateTool;->extractExtensions(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v10

    .line 119
    .local v10, "extGen":Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    sub-int/2addr v11, v9

    const/4 v15, 0x7

    if-ge v5, v11, :cond_7

    .line 121
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "idx":I
    .restart local v11    # "idx":I
    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    .line 122
    invoke-static {v8}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v5

    .line 123
    .local v5, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    const/16 v16, 0x1

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v9

    if-ne v9, v12, :cond_6

    .line 128
    invoke-static {v5, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 130
    .local v7, "deltaExts":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    if-eq v9, v12, :cond_5

    .line 132
    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v12

    .line 134
    .local v12, "ext":Lorg/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v10, v12}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->replaceExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    .line 130
    .end local v12    # "ext":Lorg/bouncycastle/asn1/x509/Extension;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 137
    .end local v9    # "i":I
    :cond_5
    new-instance v9, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v12

    invoke-direct {v9, v14, v12}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v9, v6, v15

    .line 138
    .end local v5    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v7    # "deltaExts":Lorg/bouncycastle/asn1/ASN1Sequence;
    move v5, v11

    goto :goto_3

    .line 125
    .restart local v5    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "malformed delta extension"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 141
    .end local v11    # "idx":I
    .local v5, "idx":I
    :cond_7
    const/16 v16, 0x1

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 143
    new-instance v7, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v9

    invoke-direct {v7, v14, v9}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v7, v6, v15

    goto :goto_3

    .line 147
    :cond_8
    const/4 v7, 0x0

    aput-object v7, v6, v15

    .line 151
    :goto_3
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 152
    .local v7, "tbsDeltaCertV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    array-length v11, v6

    if-eq v9, v11, :cond_a

    .line 154
    aget-object v11, v6, v9

    if-eqz v11, :cond_9

    .line 156
    aget-object v11, v6, v9

    invoke-virtual {v7, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 160
    .end local v9    # "i":I
    :cond_a
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 161
    .local v9, "certV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v11, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 162
    aget-object v11, v6, v13

    invoke-static {v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 163
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 165
    new-instance v11, Lorg/bouncycastle/cert/X509CertificateHolder;

    new-instance v12, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v12}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static extractExtensions(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    .locals 6
    .param p0, "originTbs"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originTbs"
        }
    .end annotation

    .line 170
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 171
    .local v0, "deltaExtOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 172
    .local v1, "originExt":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v2, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 174
    .local v2, "extGen":Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 176
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 177
    .local v4, "ext":Lorg/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 179
    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    .line 174
    .end local v4    # "ext":Lorg/bouncycastle/asn1/x509/Extension;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static makeDeltaCertificateExtension(ZLorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 6
    .param p0, "isCritical"    # Z
    .param p1, "deltaCert"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isCritical",
            "deltaCert"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 30
    .local v0, "deltaV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 31
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 32
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 34
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 35
    .local v1, "validity":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/Certificate;->getStartDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 36
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/Certificate;->getEndDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 38
    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v4, v3, v2, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 39
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x3

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 40
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 41
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x4

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 45
    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSignature()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 47
    new-instance v2, Lorg/bouncycastle/asn1/x509/Extension;

    sget-object v3, Lorg/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v3, p0, v4}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-object v2
.end method
