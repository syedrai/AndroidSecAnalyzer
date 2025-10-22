.class public Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "OtherRevocationInfoFormat.java"


# instance fields
.field private otherRevInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private otherRevInfoFormat:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "otherRevInfoFormat"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "otherRevInfo"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "otherRevInfoFormat",
            "otherRevInfo"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfoFormat:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 33
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

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfoFormat:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 40
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;
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

    .line 74
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;

    return-object v0

    .line 79
    :cond_0
    if-eqz p0, :cond_1

    .line 81
    new-instance v0, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 84
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;
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

    .line 55
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInfo()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getInfoFormat()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfoFormat:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 102
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 104
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfoFormat:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 105
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 107
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
