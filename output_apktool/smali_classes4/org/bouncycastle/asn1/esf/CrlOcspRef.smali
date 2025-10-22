.class public Lorg/bouncycastle/asn1/esf/CrlOcspRef;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CrlOcspRef.java"


# instance fields
.field private crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

.field private ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

.field private otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
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
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 48
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 51
    .local v1, "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :pswitch_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/esf/OtherRevRefs;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    .line 61
    goto :goto_1

    .line 57
    :pswitch_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/esf/OcspListID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OcspListID;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    .line 58
    goto :goto_1

    .line 54
    :pswitch_2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/esf/CrlListID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlListID;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    .line 55
    nop

    .line 65
    .end local v1    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    goto :goto_0

    .line 66
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/esf/CrlListID;Lorg/bouncycastle/asn1/esf/OcspListID;Lorg/bouncycastle/asn1/esf/OtherRevRefs;)V
    .locals 0
    .param p1, "crlids"    # Lorg/bouncycastle/asn1/esf/CrlListID;
    .param p2, "ocspids"    # Lorg/bouncycastle/asn1/esf/OcspListID;
    .param p3, "otherRev"    # Lorg/bouncycastle/asn1/esf/OtherRevRefs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "crlids",
            "ocspids",
            "otherRev"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    .line 72
    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    .line 73
    iput-object p3, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    .line 74
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlOcspRef;
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

    .line 33
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    return-object v0

    .line 37
    :cond_0
    if-eqz p0, :cond_1

    .line 39
    new-instance v0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/CrlOcspRef;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCrlids()Lorg/bouncycastle/asn1/esf/CrlListID;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    return-object v0
.end method

.method public getOcspids()Lorg/bouncycastle/asn1/esf/OcspListID;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    return-object v0
.end method

.method public getOtherRev()Lorg/bouncycastle/asn1/esf/OtherRevRefs;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 93
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 94
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 96
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/esf/CrlListID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 98
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/esf/OcspListID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 102
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    if-eqz v1, :cond_2

    .line 104
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/esf/OtherRevRefs;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 106
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
