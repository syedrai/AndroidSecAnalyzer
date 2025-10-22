.class public Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "OtherKeyAttribute.java"


# instance fields
.field private keyAttr:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private keyAttrId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "keyAttrId"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "keyAttr"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyAttrId",
            "keyAttr"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttrId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttr:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 69
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

    .line 58
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttrId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttr:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 61
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;
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

    .line 43
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    return-object v0

    .line 48
    :cond_0
    if-eqz p0, :cond_1

    .line 50
    new-instance v0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getKeyAttr()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttr:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getKeyAttrId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttrId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 86
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 88
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttrId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 89
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttr:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 91
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
