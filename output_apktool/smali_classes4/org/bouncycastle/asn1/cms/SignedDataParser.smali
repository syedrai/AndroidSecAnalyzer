.class public Lorg/bouncycastle/asn1/cms/SignedDataParser;
.super Ljava/lang/Object;
.source "SignedDataParser.java"


# instance fields
.field private _certsCalled:Z

.field private _crlsCalled:Z

.field private _nextObject:Ljava/lang/Object;

.field private _seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

.field private _version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 56
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 57
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedDataParser;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignedDataParser;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->parser()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/SignedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0

    .line 43
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignedDataParser;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/SignedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown object encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCertificates()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_certsCalled:Z

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    .line 92
    .local v0, "o":Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasContextTag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    const/16 v3, 0x11

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1SetParser;

    .line 95
    .local v2, "certs":Lorg/bouncycastle/asn1/ASN1SetParser;
    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    .line 96
    return-object v2

    .line 100
    .end local v0    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .end local v2    # "certs":Lorg/bouncycastle/asn1/ASN1SetParser;
    :cond_0
    return-object v1
.end method

.method public getCrls()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_certsCalled:Z

    if-eqz v0, :cond_2

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_crlsCalled:Z

    .line 113
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    .line 118
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    .line 121
    .local v1, "o":Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    invoke-interface {v1, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasContextTag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x0

    const/16 v3, 0x11

    invoke-interface {v1, v0, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    .line 124
    .local v0, "crls":Lorg/bouncycastle/asn1/ASN1SetParser;
    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    .line 125
    return-object v0

    .line 129
    .end local v0    # "crls":Lorg/bouncycastle/asn1/ASN1SetParser;
    .end local v1    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    :cond_1
    return-object v2

    .line 108
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getCerts() has not been called."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 69
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 71
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->parser()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v1

    return-object v1

    .line 74
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v1
.end method

.method public getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0
.end method

.method public getSignerInfos()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_certsCalled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_crlsCalled:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0

    .line 137
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getCerts() and/or getCrls() has not been called."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method
