.class public Lorg/bouncycastle/asn1/cms/Attribute;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Attribute.java"


# instance fields
.field private attrType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private attrValues:Lorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "attrType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attrValues"    # Lorg/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attrType",
            "attrValues"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Attribute;->attrType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/Attribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    .line 81
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/Attribute;->attrType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/Attribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    .line 73
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;
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

    .line 55
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/Attribute;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/Attribute;

    return-object v0

    .line 60
    :cond_0
    if-eqz p0, :cond_1

    .line 62
    new-instance v0, Lorg/bouncycastle/asn1/cms/Attribute;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Attribute;->attrType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Attribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getAttributeValues()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Attribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->toArray()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 103
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 105
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/Attribute;->attrType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 106
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/Attribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 108
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
