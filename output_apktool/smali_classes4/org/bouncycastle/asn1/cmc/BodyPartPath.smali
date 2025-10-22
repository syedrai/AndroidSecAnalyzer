.class public Lorg/bouncycastle/asn1/cmc/BodyPartPath;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "BodyPartPath.java"


# instance fields
.field private final bodyPartIDs:[Lorg/bouncycastle/asn1/cmc/BodyPartID;


# direct methods
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

    .line 62
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmc/Utils;->toBodyPartIDArray(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/BodyPartPath;->bodyPartIDs:[Lorg/bouncycastle/asn1/cmc/BodyPartID;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/BodyPartID;)V
    .locals 2
    .param p1, "bodyPartID"    # Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bodyPartID"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmc/BodyPartID;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/BodyPartPath;->bodyPartIDs:[Lorg/bouncycastle/asn1/cmc/BodyPartID;

    .line 51
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/cmc/BodyPartID;)V
    .locals 1
    .param p1, "bodyPartIDs"    # [Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bodyPartIDs"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmc/Utils;->clone([Lorg/bouncycastle/asn1/cmc/BodyPartID;)[Lorg/bouncycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/BodyPartPath;->bodyPartIDs:[Lorg/bouncycastle/asn1/cmc/BodyPartID;

    .line 58
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/BodyPartPath;
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

    .line 22
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    if-eqz v0, :cond_0

    .line 24
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    return-object v0

    .line 27
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    new-instance v0, Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/BodyPartPath;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmc/BodyPartPath;
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

    .line 39
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/BodyPartPath;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBodyPartIDs()[Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/BodyPartPath;->bodyPartIDs:[Lorg/bouncycastle/asn1/cmc/BodyPartID;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/Utils;->clone([Lorg/bouncycastle/asn1/cmc/BodyPartID;)[Lorg/bouncycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 73
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/BodyPartPath;->bodyPartIDs:[Lorg/bouncycastle/asn1/cmc/BodyPartID;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
