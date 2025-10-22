.class public Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;
.super Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;
.source "CMSAuthenticatedDataGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/MacCalculator;)Lorg/bouncycastle/cms/CMSAuthenticatedData;
    .locals 1
    .param p1, "typedData"    # Lorg/bouncycastle/cms/CMSTypedData;
    .param p2, "macCalculator"    # Lorg/bouncycastle/operator/MacCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typedData",
            "macCalculator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;)Lorg/bouncycastle/cms/CMSAuthenticatedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;)Lorg/bouncycastle/cms/CMSAuthenticatedData;
    .locals 19
    .param p1, "typedData"    # Lorg/bouncycastle/cms/CMSTypedData;
    .param p2, "macCalculator"    # Lorg/bouncycastle/operator/MacCalculator;
    .param p3, "digestCalculator"    # Lorg/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "typedData",
            "macCalculator",
            "digestCalculator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 79
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v0

    iget-object v4, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-static {v0, v4}, Lorg/bouncycastle/cms/CMSUtils;->getRecipentInfos(Lorg/bouncycastle/operator/GenericKey;Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v4

    .line 83
    .local v4, "recipientInfos":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const-string/jumbo v5, "unable to perform MAC calculation: "

    if-eqz v3, :cond_1

    .line 87
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 90
    .local v6, "out":Ljava/io/OutputStream;
    invoke-interface {v2, v6}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    .line 92
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 94
    new-instance v7, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "encContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 101
    invoke-interface {v2}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v9

    invoke-virtual {v1, v0, v6, v8, v9}, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->getBaseParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 103
    .local v6, "parameters":Ljava/util/Map;
    iget-object v0, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/bouncycastle/cms/DefaultAuthenticatedAttributeTableGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/DefaultAuthenticatedAttributeTableGenerator;-><init>()V

    iput-object v0, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 107
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    iget-object v8, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-interface {v8, v6}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v15, v0

    .line 111
    .local v15, "authed":Lorg/bouncycastle/asn1/ASN1Set;
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 113
    .local v0, "mOut":Ljava/io/OutputStream;
    const-string v8, "DER"

    invoke-virtual {v15, v8}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 115
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 117
    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v8

    .line 122
    .end local v0    # "mOut":Ljava/io/OutputStream;
    .local v16, "macResult":Lorg/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 123
    iget-object v0, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->unauthGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->getAttrBERSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v17

    .line 125
    .local v17, "unauthed":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v14, Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 126
    invoke-interface {v2}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v14, v0, v7}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 129
    .local v14, "eci":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v9, Lorg/bouncycastle/asn1/cms/AuthenticatedData;

    iget-object v10, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v11, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v11, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v12

    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v13

    invoke-direct/range {v9 .. v17}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 130
    .end local v6    # "parameters":Ljava/util/Map;
    .end local v14    # "eci":Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v15    # "authed":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v17    # "unauthed":Lorg/bouncycastle/asn1/ASN1Set;
    .local v9, "authData":Lorg/bouncycastle/asn1/cms/AuthenticatedData;
    goto/16 :goto_0

    .line 119
    .end local v9    # "authData":Lorg/bouncycastle/asn1/cms/AuthenticatedData;
    .end local v16    # "macResult":Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v6    # "parameters":Ljava/util/Map;
    .restart local v15    # "authed":Lorg/bouncycastle/asn1/ASN1Set;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "parameters":Ljava/util/Map;
    .end local v7    # "encContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v15    # "authed":Lorg/bouncycastle/asn1/ASN1Set;
    :catch_1
    move-exception v0

    .line 98
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v5, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to perform digest calculation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 138
    .local v6, "mOut":Ljava/io/OutputStream;
    invoke-interface {v2, v6}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    .line 140
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 142
    new-instance v7, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 144
    .restart local v7    # "encContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v8

    .line 149
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "mOut":Ljava/io/OutputStream;
    .local v17, "macResult":Lorg/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 151
    iget-object v0, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->unauthGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->getAttrBERSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v18

    .line 153
    .local v18, "unauthed":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v15, Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 154
    invoke-interface {v2}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v15, v0, v7}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 157
    .local v15, "eci":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v10, Lorg/bouncycastle/asn1/cms/AuthenticatedData;

    iget-object v11, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v12, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v12, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v18}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    move-object v9, v10

    move-object/from16 v16, v17

    .line 160
    .end local v15    # "eci":Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v17    # "macResult":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v18    # "unauthed":Lorg/bouncycastle/asn1/ASN1Set;
    .restart local v9    # "authData":Lorg/bouncycastle/asn1/cms/AuthenticatedData;
    .restart local v16    # "macResult":Lorg/bouncycastle/asn1/ASN1OctetString;
    :goto_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v5, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authenticatedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v5, v9}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 163
    .local v0, "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v5, Lorg/bouncycastle/cms/CMSAuthenticatedData;

    new-instance v6, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator$1;

    invoke-direct {v6, v1, v3}, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator$1;-><init>(Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;Lorg/bouncycastle/operator/DigestCalculator;)V

    invoke-direct {v5, v0, v6}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v5

    .line 146
    .end local v0    # "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v7    # "encContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v9    # "authData":Lorg/bouncycastle/asn1/cms/AuthenticatedData;
    .end local v16    # "macResult":Lorg/bouncycastle/asn1/ASN1OctetString;
    :catch_2
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method
