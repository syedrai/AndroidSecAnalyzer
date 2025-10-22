.class public Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
.super Lorg/bouncycastle/cms/CMSSignedGenerator;
.source "CMSSignedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;
    }
.end annotation


# instance fields
.field private _bufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedGenerator;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 0
    .param p1, "digestAlgIdFinder"    # Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digestAlgIdFinder"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSSignedGenerator;-><init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 70
    return-void
.end method

.method private calculateVersion(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 9
    .param p1, "contentOid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentOid"
        }
    .end annotation

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "otherCert":Z
    const/4 v1, 0x0

    .line 302
    .local v1, "otherCrl":Z
    const/4 v2, 0x0

    .line 303
    .local v2, "attrCertV1Found":Z
    const/4 v3, 0x0

    .line 305
    .local v3, "attrCertV2Found":Z
    iget-object v4, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->certs:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 307
    iget-object v4, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->certs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 309
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 310
    .local v5, "obj":Ljava/lang/Object;
    instance-of v6, v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_2

    .line 312
    move-object v6, v5

    check-cast v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 314
    .local v6, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 316
    const/4 v2, 0x1

    goto :goto_1

    .line 318
    :cond_0
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 320
    const/4 v3, 0x1

    goto :goto_1

    .line 322
    :cond_1
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 324
    const/4 v0, 0x1

    .line 327
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2
    :goto_1
    goto :goto_0

    .line 330
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_3
    const-wide/16 v4, 0x5

    if-eqz v0, :cond_4

    .line 332
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v6, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v6

    .line 335
    :cond_4
    iget-object v6, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->crls:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 337
    iget-object v6, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->crls:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 339
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 340
    .local v7, "obj":Ljava/lang/Object;
    instance-of v8, v7, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v8, :cond_5

    .line 342
    const/4 v1, 0x1

    .line 344
    .end local v7    # "obj":Ljava/lang/Object;
    :cond_5
    goto :goto_2

    .line 347
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_6
    if-eqz v1, :cond_7

    .line 349
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v6, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v6

    .line 352
    :cond_7
    if-eqz v3, :cond_8

    .line 354
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v5, 0x4

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v4

    .line 357
    :cond_8
    const-wide/16 v4, 0x3

    if-eqz v2, :cond_9

    .line 359
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v6, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v6

    .line 362
    :cond_9
    iget-object v6, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signers:Ljava/util/List;

    iget-object v7, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->signerGens:Ljava/util/List;

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->checkForVersion3(Ljava/util/List;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 364
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v6, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v6

    .line 367
    :cond_a
    sget-object v6, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 369
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v6, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v6

    .line 372
    :cond_b
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v5, 0x1

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v4
.end method

.method private checkForVersion3(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .param p1, "signerInfos"    # Ljava/util/List;
    .param p2, "signerInfoGens"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signerInfos",
            "signerInfoGens"
        }
    .end annotation

    .line 377
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    .line 379
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v1}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v1

    .line 381
    .local v1, "s":Lorg/bouncycastle/asn1/cms/SignerInfo;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 383
    return v2

    .line 385
    .end local v1    # "s":Lorg/bouncycastle/asn1/cms/SignerInfo;
    :cond_0
    goto :goto_0

    .line 387
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/cms/SignerInfoGenerator;

    .line 391
    .local v1, "s":Lorg/bouncycastle/cms/SignerInfoGenerator;
    invoke-virtual {v1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getGeneratedVersion()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 393
    return v2

    .line 395
    .end local v1    # "s":Lorg/bouncycastle/cms/SignerInfoGenerator;
    :cond_2
    goto :goto_1

    .line 397
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getDigestAlgorithms()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v0, "digestAlorithms":Ljava/util/List;
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cms/SignerInformation;

    .line 260
    .local v2, "signer":Lorg/bouncycastle/cms/SignerInformation;
    sget-object v3, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v2}, Lorg/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->digestAlgIdFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    .line 262
    .local v3, "digAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v2    # "signer":Lorg/bouncycastle/cms/SignerInformation;
    .end local v3    # "digAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    goto :goto_0

    .line 269
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cms/SignerInfoGenerator;

    .line 273
    .local v2, "signerGen":Lorg/bouncycastle/cms/SignerInfoGenerator;
    invoke-virtual {v2}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v2    # "signerGen":Lorg/bouncycastle/cms/SignerInfoGenerator;
    goto :goto_1

    .line 276
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public open(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
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

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encapsulate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "encapsulate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encapsulate"    # Z
    .param p3, "dataOutputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "encapsulate",
            "dataOutputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1
    .param p1, "eContentType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "encapsulate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eContentType",
            "out",
            "encapsulate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 10
    .param p1, "eContentType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "encapsulate"    # Z
    .param p4, "dataOutputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eContentType",
            "out",
            "encapsulate",
            "dataOutputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-instance v0, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v0

    .line 194
    .local v5, "sGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 199
    new-instance v6, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 201
    .local v6, "sigGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->calculateVersion(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 203
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 208
    .local v0, "digestAlgs":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    iget-object v3, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/cms/SignerInformation;

    .line 212
    .local v4, "signer":Lorg/bouncycastle/cms/SignerInformation;
    iget-object v7, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->digestAlgIdFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-static {v0, v4, v7}, Lorg/bouncycastle/cms/CMSUtils;->addDigestAlgs(Ljava/util/Set;Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 213
    .end local v4    # "signer":Lorg/bouncycastle/cms/SignerInformation;
    goto :goto_0

    .line 219
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/cms/SignerInfoGenerator;

    .line 223
    .local v4, "signerGen":Lorg/bouncycastle/cms/SignerInfoGenerator;
    invoke-virtual {v4}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v4    # "signerGen":Lorg/bouncycastle/cms/SignerInfoGenerator;
    goto :goto_1

    .line 226
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->convertToDlSet(Ljava/util/Set;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 228
    new-instance v7, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v7, v3}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 229
    .local v7, "eiGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    invoke-virtual {v7, p1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 232
    if-eqz p3, :cond_2

    .line 233
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget v4, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_bufferSize:I

    invoke-static {v3, v1, v2, v4}, Lorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object v1

    goto :goto_2

    .line 234
    :cond_2
    const/4 v1, 0x0

    :goto_2
    move-object v8, v1

    .line 237
    .local v8, "encapStream":Ljava/io/OutputStream;
    invoke-static {p4, v8}, Lorg/bouncycastle/cms/CMSUtils;->getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v9

    .line 240
    .local v9, "contentStream":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->signerGens:Ljava/util/List;

    invoke-static {v1, v9}, Lorg/bouncycastle/cms/CMSUtils;->attachSignersToOutputStream(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    .line 242
    .local v3, "sigStream":Ljava/io/OutputStream;
    new-instance v1, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;

    move-object v2, p0

    move-object v4, p1

    .end local p1    # "eContentType":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v4, "eContentType":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;-><init>(Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V

    return-object v1
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .line 80
    iput p1, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_bufferSize:I

    .line 81
    return-void
.end method
