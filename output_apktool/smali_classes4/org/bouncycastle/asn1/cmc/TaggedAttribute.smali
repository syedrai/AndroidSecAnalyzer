.class public Lorg/bouncycastle/asn1/cmc/TaggedAttribute;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "TaggedAttribute.java"


# instance fields
.field private final attrType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final attrValues:Lorg/bouncycastle/asn1/ASN1Set;

.field private final bodyPartID:Lorg/bouncycastle/asn1/cmc/BodyPartID;


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

    .line 44
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/BodyPartID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->bodyPartID:Lorg/bouncycastle/asn1/cmc/BodyPartID;

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->attrType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 51
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    .line 52
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/BodyPartID;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "bodyPartID"    # Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .param p2, "attrType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "attrValues"    # Lorg/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bodyPartID",
            "attrType",
            "attrValues"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->bodyPartID:Lorg/bouncycastle/asn1/cmc/BodyPartID;

    .line 57
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->attrType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    .line 59
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/TaggedAttribute;
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

    .line 30
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    return-object v0

    .line 35
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    new-instance v0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 40
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->attrType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getBodyPartID()Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->bodyPartID:Lorg/bouncycastle/asn1/cmc/BodyPartID;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 78
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->bodyPartID:Lorg/bouncycastle/asn1/cmc/BodyPartID;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->attrType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
