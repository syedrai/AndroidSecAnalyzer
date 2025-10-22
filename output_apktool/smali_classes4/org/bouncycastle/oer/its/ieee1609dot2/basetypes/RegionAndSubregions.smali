.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RegionAndSubregions.java"

# interfaces
.implements Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions$Builder;
    }
.end annotation


# instance fields
.field private final region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

.field private final subregions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;


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

    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;->subregions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;

    .line 37
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;)V
    .locals 0
    .param p1, "region"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;
    .param p2, "subRegions"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "region",
            "subRegions"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    .line 25
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;->subregions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;

    .line 26
    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions$Builder;
    .locals 1

    .line 72
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;
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

    .line 51
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;

    return-object v0

    .line 56
    :cond_0
    if-eqz p0, :cond_1

    .line 58
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getRegion()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    return-object v0
.end method

.method public getSubregions()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;->subregions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;->subregions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ItsUtils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
