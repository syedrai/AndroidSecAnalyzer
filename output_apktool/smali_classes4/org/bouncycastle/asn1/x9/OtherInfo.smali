.class public Lorg/bouncycastle/asn1/x9/OtherInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "OtherInfo.java"


# instance fields
.field private keyInfo:Lorg/bouncycastle/asn1/x9/KeySpecificInfo;

.field private partyAInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private suppPubInfo:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 67
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x9/KeySpecificInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/KeySpecificInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->keyInfo:Lorg/bouncycastle/asn1/x9/KeySpecificInfo;

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 73
    .local v1, "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v2, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_1

    .line 77
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v2, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->suppPubInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 81
    .end local v1    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    :goto_1
    goto :goto_0

    .line 82
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x9/KeySpecificInfo;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "keyInfo"    # Lorg/bouncycastle/asn1/x9/KeySpecificInfo;
    .param p2, "partyAInfo"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p3, "suppPubInfo"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyInfo",
            "partyAInfo",
            "suppPubInfo"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->keyInfo:Lorg/bouncycastle/asn1/x9/KeySpecificInfo;

    .line 38
    iput-object p2, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 39
    iput-object p3, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->suppPubInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 40
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/OtherInfo;
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

    .line 50
    instance-of v0, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x9/OtherInfo;

    return-object v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/x9/OtherInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x9/OtherInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getKeyInfo()Lorg/bouncycastle/asn1/x9/KeySpecificInfo;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->keyInfo:Lorg/bouncycastle/asn1/x9/KeySpecificInfo;

    return-object v0
.end method

.method public getPartyAInfo()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSuppPubInfo()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->suppPubInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 121
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 123
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->keyInfo:Lorg/bouncycastle/asn1/x9/KeySpecificInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 125
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 130
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->suppPubInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 132
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
