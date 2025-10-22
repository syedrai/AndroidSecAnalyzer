.class public Lorg/bouncycastle/tsp/TimeStampResponseGenerator;
.super Ljava/lang/Object;
.source "TimeStampResponseGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tsp/TimeStampResponseGenerator$FailInfo;
    }
.end annotation


# instance fields
.field private acceptedAlgorithms:Ljava/util/Set;

.field private acceptedExtensions:Ljava/util/Set;

.field private acceptedPolicies:Ljava/util/Set;

.field failInfo:I

.field status:I

.field statusStrings:Lorg/bouncycastle/asn1/ASN1EncodableVector;

.field private tokenGenerator:Lorg/bouncycastle/tsp/TimeStampTokenGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Ljava/util/Set;)V
    .locals 1
    .param p1, "tokenGenerator"    # Lorg/bouncycastle/tsp/TimeStampTokenGenerator;
    .param p2, "acceptedAlgorithms"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenGenerator",
            "acceptedAlgorithms"
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;-><init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "tokenGenerator"    # Lorg/bouncycastle/tsp/TimeStampTokenGenerator;
    .param p2, "acceptedAlgorithms"    # Ljava/util/Set;
    .param p3, "acceptedPolicies"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenGenerator",
            "acceptedAlgorithms",
            "acceptedPolicies"
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;-><init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "tokenGenerator"    # Lorg/bouncycastle/tsp/TimeStampTokenGenerator;
    .param p2, "acceptedAlgorithms"    # Ljava/util/Set;
    .param p3, "acceptedPolicies"    # Ljava/util/Set;
    .param p4, "acceptedExtensions"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenGenerator",
            "acceptedAlgorithms",
            "acceptedPolicies",
            "acceptedExtensions"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->tokenGenerator:Lorg/bouncycastle/tsp/TimeStampTokenGenerator;

    .line 104
    invoke-direct {p0, p2}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->acceptedAlgorithms:Ljava/util/Set;

    .line 105
    invoke-direct {p0, p3}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->acceptedPolicies:Ljava/util/Set;

    .line 106
    invoke-direct {p0, p4}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->acceptedExtensions:Ljava/util/Set;

    .line 108
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->statusStrings:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 109
    return-void
.end method

.method private addStatusString(Ljava/lang/String;)V
    .locals 2
    .param p1, "statusString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statusString"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->statusStrings:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v1, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    return-void
.end method

.method private convert(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .param p1, "orig"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orig"
        }
    .end annotation

    .line 347
    if-nez p1, :cond_0

    .line 349
    return-object p1

    .line 352
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 354
    .local v0, "con":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 358
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 360
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 364
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v2    # "o":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 368
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method private getPKIStatusInfo()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .locals 4

    .line 123
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 125
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->status:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 127
    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->statusStrings:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->statusStrings:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 132
    :cond_0
    iget v1, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->failInfo:I

    if-eqz v1, :cond_1

    .line 134
    new-instance v1, Lorg/bouncycastle/tsp/TimeStampResponseGenerator$FailInfo;

    iget v2, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->failInfo:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator$FailInfo;-><init>(I)V

    .line 135
    .local v1, "failInfoBitString":Lorg/bouncycastle/asn1/DERBitString;
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 138
    .end local v1    # "failInfoBitString":Lorg/bouncycastle/asn1/DERBitString;
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v1

    return-object v1
.end method

.method private setFailInfoField(I)V
    .locals 1
    .param p1, "field"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 118
    iget v0, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->failInfo:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->failInfo:I

    .line 119
    return-void
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;)Lorg/bouncycastle/tsp/TimeStampResponse;
    .locals 2
    .param p1, "request"    # Lorg/bouncycastle/tsp/TimeStampRequest;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "genTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "serialNumber",
            "genTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 172
    :try_start_0
    const-string v0, "Operation Okay"

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->generateGrantedResponse(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Ljava/lang/String;)Lorg/bouncycastle/tsp/TimeStampResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 174
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->generateRejectedResponse(Ljava/lang/Exception;)Lorg/bouncycastle/tsp/TimeStampResponse;

    move-result-object v1

    return-object v1
.end method

.method public generateFailResponse(IILjava/lang/String;)Lorg/bouncycastle/tsp/TimeStampResponse;
    .locals 5
    .param p1, "status"    # I
    .param p2, "failInfoField"    # I
    .param p3, "statusString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "failInfoField",
            "statusString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 321
    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->status:I

    .line 322
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->statusStrings:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 324
    invoke-direct {p0, p2}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->setFailInfoField(I)V

    .line 326
    if-eqz p3, :cond_0

    .line 328
    invoke-direct {p0, p3}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->addStatusString(Ljava/lang/String;)V

    .line 331
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->getPKIStatusInfo()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    .line 333
    .local v0, "pkiStatusInfo":Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    new-instance v1, Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;-><init>(Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 337
    .local v1, "resp":Lorg/bouncycastle/asn1/tsp/TimeStampResp;
    :try_start_0
    new-instance v2, Lorg/bouncycastle/tsp/TimeStampResponse;

    invoke-direct {v2, v1}, Lorg/bouncycastle/tsp/TimeStampResponse;-><init>(Lorg/bouncycastle/asn1/tsp/TimeStampResp;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 339
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/tsp/TSPException;

    const-string v4, "created badly formatted response!"

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public generateGrantedResponse(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;)Lorg/bouncycastle/tsp/TimeStampResponse;
    .locals 1
    .param p1, "request"    # Lorg/bouncycastle/tsp/TimeStampRequest;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "genTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "serialNumber",
            "genTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->generateGrantedResponse(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Ljava/lang/String;)Lorg/bouncycastle/tsp/TimeStampResponse;

    move-result-object v0

    return-object v0
.end method

.method public generateGrantedResponse(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Ljava/lang/String;)Lorg/bouncycastle/tsp/TimeStampResponse;
    .locals 6
    .param p1, "request"    # Lorg/bouncycastle/tsp/TimeStampRequest;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "genTime"    # Ljava/util/Date;
    .param p4, "statusString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "serialNumber",
            "genTime",
            "statusString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 220
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    .end local p2    # "serialNumber":Ljava/math/BigInteger;
    .end local p3    # "genTime":Ljava/util/Date;
    .end local p4    # "statusString":Ljava/lang/String;
    .local v1, "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    .local v2, "serialNumber":Ljava/math/BigInteger;
    .local v3, "genTime":Ljava/util/Date;
    .local v4, "statusString":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->generateGrantedResponse(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Ljava/lang/String;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/tsp/TimeStampResponse;

    move-result-object p1

    return-object p1
.end method

.method public generateGrantedResponse(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Ljava/lang/String;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/tsp/TimeStampResponse;
    .locals 7
    .param p1, "request"    # Lorg/bouncycastle/tsp/TimeStampRequest;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "genTime"    # Ljava/util/Date;
    .param p4, "statusString"    # Ljava/lang/String;
    .param p5, "additionalExtensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "serialNumber",
            "genTime",
            "statusString",
            "additionalExtensions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 244
    if-eqz p3, :cond_1

    .line 249
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->acceptedAlgorithms:Ljava/util/Set;

    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->acceptedPolicies:Ljava/util/Set;

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->acceptedExtensions:Ljava/util/Set;

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/tsp/TimeStampRequest;->validate(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->status:I

    .line 252
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->statusStrings:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 254
    if-eqz p4, :cond_0

    .line 256
    invoke-direct {p0, p4}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->addStatusString(Ljava/lang/String;)V

    .line 259
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->getPKIStatusInfo()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v1

    .line 264
    .local v1, "pkiStatusInfo":Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->tokenGenerator:Lorg/bouncycastle/tsp/TimeStampTokenGenerator;

    invoke-virtual {v2, p1, p2, p3, p5}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->generate(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2
    :try_end_0
    .catch Lorg/bouncycastle/tsp/TSPException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    .local v2, "tstTokenContentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    nop

    .line 278
    :try_start_1
    new-instance v3, Lorg/bouncycastle/tsp/TimeStampResponse;

    new-instance v4, Lorg/bouncycastle/asn1/DLSequence;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DLSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/TimeStampResponse;-><init>(Lorg/bouncycastle/asn1/DLSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/tsp/TSPException;

    const-string v4, "created badly formatted response!"

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 270
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "tstTokenContentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    :catch_1
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/tsp/TSPException;

    const-string v3, "Timestamp token received cannot be converted to ContentInfo"

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 268
    .local v0, "e":Lorg/bouncycastle/tsp/TSPException;
    throw v0

    .line 246
    .end local v0    # "e":Lorg/bouncycastle/tsp/TSPException;
    .end local v1    # "pkiStatusInfo":Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    :cond_1
    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "The time source is not available."

    const/16 v2, 0x200

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public generateRejectedResponse(Ljava/lang/Exception;)Lorg/bouncycastle/tsp/TimeStampResponse;
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 299
    instance-of v0, p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 301
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/tsp/TSPValidationException;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TSPValidationException;->getFailureCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->generateFailResponse(IILjava/lang/String;)Lorg/bouncycastle/tsp/TimeStampResponse;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator;->generateFailResponse(IILjava/lang/String;)Lorg/bouncycastle/tsp/TimeStampResponse;

    move-result-object v0

    return-object v0
.end method
