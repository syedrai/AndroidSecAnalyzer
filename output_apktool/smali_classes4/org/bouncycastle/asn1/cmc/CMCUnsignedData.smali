.class public Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CMCUnsignedData.java"


# instance fields
.field private final bodyPartPath:Lorg/bouncycastle/asn1/cmc/BodyPartPath;

.field private final content:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final identifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
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

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/BodyPartPath;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;->bodyPartPath:Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;->identifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 45
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/BodyPartPath;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "bodyPartPath"    # Lorg/bouncycastle/asn1/cmc/BodyPartPath;
    .param p2, "identifier"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "content"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bodyPartPath",
            "identifier",
            "content"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;->bodyPartPath:Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    .line 32
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;->identifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 34
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 49
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;

    return-object v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBodyPartPath()Lorg/bouncycastle/asn1/cmc/BodyPartPath;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;->bodyPartPath:Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    return-object v0
.end method

.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;->identifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 64
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 66
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;->bodyPartPath:Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 67
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;->identifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 68
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCUnsignedData;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 70
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
