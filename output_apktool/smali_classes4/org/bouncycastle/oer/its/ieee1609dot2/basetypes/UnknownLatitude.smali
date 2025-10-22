.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;
.super Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;
.source "UnknownLatitude.java"


# static fields
.field public static INSTANCE:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;-><init>()V

    sput-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;->INSTANCE:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 14
    const-wide/32 v0, 0x35a4e901

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;-><init>(J)V

    .line 15
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 19
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    if-eqz v0, :cond_0

    .line 21
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    return-object v0

    .line 23
    :cond_0
    if-eqz p0, :cond_2

    .line 25
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    .line 26
    .local v0, "integer":Lorg/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    const v2, 0x35a4e901

    if-ne v1, v2, :cond_1

    .line 30
    sget-object v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;->INSTANCE:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    return-object v1

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not unknown value of 900000001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    .end local v0    # "integer":Lorg/bouncycastle/asn1/ASN1Integer;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
