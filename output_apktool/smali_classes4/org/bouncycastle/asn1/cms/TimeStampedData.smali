.class public Lorg/bouncycastle/asn1/cms/TimeStampedData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "TimeStampedData.java"


# instance fields
.field private content:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

.field private metaData:Lorg/bouncycastle/asn1/cms/MetaData;

.field private temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1IA5String;Lorg/bouncycastle/asn1/cms/MetaData;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/cms/Evidence;)V
    .locals 3
    .param p1, "dataUri"    # Lorg/bouncycastle/asn1/ASN1IA5String;
    .param p2, "metaData"    # Lorg/bouncycastle/asn1/cms/MetaData;
    .param p3, "content"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p4, "temporalEvidence"    # Lorg/bouncycastle/asn1/cms/Evidence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataUri",
            "metaData",
            "content",
            "temporalEvidence"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    .line 41
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->content:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 42
    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

    .line 43
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v1, :cond_0

    .line 52
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    move v0, v1

    .line 54
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/cms/MetaData;

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 56
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/MetaData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    move v0, v1

    .line 58
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_2
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_3

    .line 60
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->content:Lorg/bouncycastle/asn1/ASN1OctetString;

    move v0, v1

    .line 62
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_3
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/Evidence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Evidence;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

    .line 63
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampedData;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 80
    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/TimeStampedData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/TimeStampedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 82
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/TimeStampedData;

    return-object v0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->content:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getDataUri()Lorg/bouncycastle/asn1/DERIA5String;
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERIA5String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    check-cast v0, Lorg/bouncycastle/asn1/DERIA5String;

    .line 92
    :goto_1
    return-object v0
.end method

.method public getDataUriIA5()Lorg/bouncycastle/asn1/ASN1IA5String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    return-object v0
.end method

.method public getMetaData()Lorg/bouncycastle/asn1/cms/MetaData;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    return-object v0
.end method

.method public getTemporalEvidence()Lorg/bouncycastle/asn1/cms/Evidence;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 119
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 121
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 123
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 128
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 133
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->content:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->content:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 138
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedData;->temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 140
    new-instance v1, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
