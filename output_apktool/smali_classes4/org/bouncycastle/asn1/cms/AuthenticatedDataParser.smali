.class public Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;
.super Ljava/lang/Object;
.source "AuthenticatedDataParser.java"


# instance fields
.field private nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private originatorInfoCalled:Z

.field private seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 1
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 49
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 50
    return-void
.end method


# virtual methods
.method public getAuthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    .line 164
    .local v0, "o":Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 165
    const/4 v1, 0x0

    const/16 v2, 0x11

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/ASN1Util;->parseContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v1

    .line 168
    .end local v0    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    :cond_1
    return-object v1
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 128
    .local v0, "obj":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 129
    return-object v0

    .line 132
    .end local v0    # "obj":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_1
    return-object v1
.end method

.method public getEncapsulatedContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 146
    .local v0, "o":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 147
    new-instance v1, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v1

    .line 150
    .end local v0    # "o":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    :cond_1
    return-object v1
.end method

.method public getMac()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 180
    .local v0, "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 182
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    return-object v1
.end method

.method public getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 110
    .local v0, "o":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 111
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    return-object v1

    .line 114
    .end local v0    # "o":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    :cond_1
    return-object v1
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->originatorInfoCalled:Z

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    .line 70
    .local v0, "o":Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasContextTag(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    const/16 v3, 0x10

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 73
    .local v2, "originatorInfo":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 74
    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    return-object v1

    .line 78
    .end local v0    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .end local v2    # "originatorInfo":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    :cond_1
    return-object v1
.end method

.method public getRecipientInfos()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->originatorInfoCalled:Z

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    .line 95
    .local v0, "recipientInfos":Lorg/bouncycastle/asn1/ASN1SetParser;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 96
    return-object v0
.end method

.method public getUnauthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 196
    .local v0, "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 197
    const/4 v1, 0x0

    const/16 v2, 0x11

    const/4 v3, 0x3

    invoke-static {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/ASN1Util;->parseContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v1

    .line 200
    .end local v0    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    return-object v1
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method
