.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions$Builder;
.super Ljava/lang/Object;
.source "CountryAndRegions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private countryOnly:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;

.field private regionList:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint8;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method


# virtual methods
.method public createCountryAndRegions()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions;
    .locals 3

    .line 101
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions$Builder;->countryOnly:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions$Builder;->regionList:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint8;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint8;)V

    return-object v0
.end method

.method public setCountryOnly(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions$Builder;
    .locals 0
    .param p1, "countryOnly"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countryOnly"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions$Builder;->countryOnly:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;

    .line 90
    return-object p0
.end method

.method public setRegions(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint8;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions$Builder;
    .locals 0
    .param p1, "regionList"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "regionList"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndRegions$Builder;->regionList:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint8;

    .line 96
    return-object p0
.end method
