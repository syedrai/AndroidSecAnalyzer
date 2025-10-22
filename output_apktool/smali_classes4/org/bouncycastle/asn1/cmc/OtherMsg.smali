.class public Lorg/bouncycastle/asn1/cmc/OtherMsg;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "OtherMsg.java"


# instance fields
.field private final bodyPartID:Lorg/bouncycastle/asn1/cmc/BodyPartID;

.field private final otherMsgType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final otherMsgValue:Lorg/bouncycastle/asn1/ASN1Encodable;


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

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/BodyPartID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;->bodyPartID:Lorg/bouncycastle/asn1/cmc/BodyPartID;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;->otherMsgType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;->otherMsgValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 43
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/BodyPartID;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "bodyPartID"    # Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .param p2, "otherMsgType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "otherMsgValue"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bodyPartID",
            "otherMsgType",
            "otherMsgValue"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;->bodyPartID:Lorg/bouncycastle/asn1/cmc/BodyPartID;

    .line 30
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;->otherMsgType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;->otherMsgValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 32
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/OtherMsg;
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

    .line 47
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/OtherMsg;

    return-object v0

    .line 52
    :cond_0
    if-eqz p0, :cond_1

    .line 54
    new-instance v0, Lorg/bouncycastle/asn1/cmc/OtherMsg;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/OtherMsg;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmc/OtherMsg;
    .locals 1
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "explicit"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/OtherMsg;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/OtherMsg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBodyPartID()Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;->bodyPartID:Lorg/bouncycastle/asn1/cmc/BodyPartID;

    return-object v0
.end method

.method public getOtherMsgType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;->otherMsgType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getOtherMsgValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;->otherMsgValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 71
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;->bodyPartID:Lorg/bouncycastle/asn1/cmc/BodyPartID;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 72
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;->otherMsgType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 73
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/OtherMsg;->otherMsgValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 75
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
