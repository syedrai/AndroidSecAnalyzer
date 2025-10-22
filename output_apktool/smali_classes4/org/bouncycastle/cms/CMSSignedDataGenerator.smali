.class public Lorg/bouncycastle/cms/CMSSignedDataGenerator;
.super Lorg/bouncycastle/cms/CMSSignedGenerator;
.source "CMSSignedDataGenerator.java"


# instance fields
.field private isDefiniteLength:Z

.field private signerInfs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedGenerator;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 1
    .param p1, "digestAlgIdFinder"    # Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digestAlgIdFinder"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSSignedGenerator;-><init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    .line 71
    return-void
.end method

.method private static createSetFromList(Ljava/util/List;Z)Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1
    .param p0, "list"    # Ljava/util/List;
    .param p1, "isDefiniteLength"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "isDefiniteLength"
        }
    .end annotation

    .line 241
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/cms/CMSUtils;->createDlSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    :goto_0
    return-object v0

    .line 245
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 1
    .param p1, "content"    # Lorg/bouncycastle/cms/CMSTypedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 12
    .param p1, "content"    # Lorg/bouncycastle/cms/CMSTypedData;
    .param p2, "encapsulate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "encapsulate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v1, v0

    .line 144
    .local v1, "digestAlgs":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v0

    .line 146
    .local v2, "signerInfos":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 151
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->_signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/SignerInformation;

    .line 154
    .local v3, "signer":Lorg/bouncycastle/cms/SignerInformation;
    iget-object v4, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->digestAlgIdFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/cms/CMSUtils;->addDigestAlgs(Ljava/util/Set;Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 156
    invoke-virtual {v3}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 157
    .end local v3    # "signer":Lorg/bouncycastle/cms/SignerInformation;
    goto :goto_0

    .line 162
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 164
    .local v3, "contentTypeOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v4, 0x0

    .line 166
    .local v4, "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContent()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    if-eqz p2, :cond_1

    .line 172
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v5

    goto :goto_1

    .line 170
    :cond_1
    move-object v5, v0

    .line 175
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .local v5, "bOut":Ljava/io/ByteArrayOutputStream;
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-static {v0, v5}, Lorg/bouncycastle/cms/CMSUtils;->attachSignersToOutputStream(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 178
    .local v0, "cOut":Ljava/io/OutputStream;
    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v6

    .line 182
    .end local v0    # "cOut":Ljava/io/OutputStream;
    .local v6, "cOut":Ljava/io/OutputStream;
    :try_start_0
    invoke-interface {p1, v6}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    .line 184
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    nop

    .line 191
    if-eqz p2, :cond_3

    .line 193
    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    if-eqz v0, :cond_2

    .line 195
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object v4, v0

    goto :goto_2

    .line 199
    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    move-object v4, v0

    goto :goto_2

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data processing exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "cOut":Ljava/io/OutputStream;
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/cms/SignerInfoGenerator;

    .line 207
    .local v5, "sGen":Lorg/bouncycastle/cms/SignerInfoGenerator;
    invoke-virtual {v5, v3}, Lorg/bouncycastle/cms/SignerInfoGenerator;->generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v6

    .line 209
    .local v6, "inf":Lorg/bouncycastle/asn1/cms/SignerInfo;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 212
    invoke-virtual {v5}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getCalculatedDigest()[B

    move-result-object v7

    .line 214
    .local v7, "calcDigest":[B
    if-eqz v7, :cond_4

    .line 216
    iget-object v8, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v5    # "sGen":Lorg/bouncycastle/cms/SignerInfoGenerator;
    .end local v6    # "inf":Lorg/bouncycastle/asn1/cms/SignerInfo;
    .end local v7    # "calcDigest":[B
    :cond_4
    goto :goto_3

    .line 220
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->certs:Ljava/util/List;

    iget-boolean v5, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    invoke-static {v0, v5}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->createSetFromList(Ljava/util/List;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v9

    .line 222
    .local v9, "certificates":Lorg/bouncycastle/asn1/ASN1Set;
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->crls:Ljava/util/List;

    iget-boolean v5, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    invoke-static {v0, v5}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->createSetFromList(Ljava/util/List;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v10

    .line 224
    .local v10, "certrevlist":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v8, Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {v8, v3, v4}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 226
    .local v8, "encInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v6, Lorg/bouncycastle/asn1/cms/SignedData;

    .line 227
    invoke-static {v1}, Lorg/bouncycastle/cms/CMSUtils;->convertToDlSet(Ljava/util/Set;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    new-instance v11, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v11, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/asn1/cms/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 233
    .local v6, "sd":Lorg/bouncycastle/asn1/cms/SignedData;
    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v5, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 236
    .local v0, "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v5, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v5, p1, v0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v5

    .line 110
    .end local v0    # "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v1    # "digestAlgs":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    .end local v2    # "signerInfos":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "contentTypeOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "sd":Lorg/bouncycastle/asn1/cms/SignedData;
    .end local v8    # "encInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v9    # "certificates":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v10    # "certrevlist":Lorg/bouncycastle/asn1/ASN1Set;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method can only be used with SignerInfoGenerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateCounterSigners(Lorg/bouncycastle/cms/SignerInformation;)Lorg/bouncycastle/cms/SignerInformationStore;
    .locals 3
    .param p1, "signer"    # Lorg/bouncycastle/cms/SignerInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 258
    new-instance v0, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    return-object v0
.end method

.method public setDefiniteLengthEncoding(Z)V
    .locals 0
    .param p1, "isDefiniteLength"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDefiniteLength"
        }
    .end annotation

    .line 80
    iput-boolean p1, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    .line 81
    return-void
.end method
