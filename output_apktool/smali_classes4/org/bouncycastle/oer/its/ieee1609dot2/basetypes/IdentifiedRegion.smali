.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "IdentifiedRegion.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;
.implements Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionInterface;


# static fields
.field public static final countryAndRegions:I = 0x1

.field public static final countryAndSubregions:I = 0x2

.field public static final countryOnly:I


# instance fields
.field private final choice:I

.field private final identifiedRegion:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "choice"    # I
    .param p2, "region"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "choice",
            "region"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;->choice:I

    .line 35
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;->identifiedRegion:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 36
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "ato"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ato"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;->choice:I

    .line 42
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;->choice:I

    packed-switch v0, :pswitch_data_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;->choice:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid choice value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;->identifiedRegion:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 52
    goto :goto_0

    .line 48
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;->identifiedRegion:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 49
    goto :goto_0

    .line 45
    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;->identifiedRegion:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 46
    nop

    .line 56
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static countryAndRegions(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;
    .locals 2
    .param p0, "value"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static countryAndSubregions(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;
    .locals 2
    .param p0, "countryAndSubregions"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countryAndSubregions"
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static countryOnly(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;
    .locals 2
    .param p0, "only"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "only"
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;
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

    .line 76
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;

    return-object v0

    .line 80
    :cond_0
    if-eqz p0, :cond_1

    .line 82
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 85
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;->choice:I

    return v0
.end method

.method public getIdentifiedRegion()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;->identifiedRegion:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 100
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IdentifiedRegion;->identifiedRegion:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
