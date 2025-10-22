.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;
.super Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT64;
.source "Time64.java"


# static fields
.field public static etsiEpochMicros:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    sget-wide v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;->etsiEpochMillis:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    sput-wide v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;->etsiEpochMicros:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;-><init>(Ljava/math/BigInteger;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT64;-><init>(Ljava/math/BigInteger;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT64;)V
    .locals 1
    .param p1, "uint64"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT64;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uint64"
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT64;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;-><init>(Ljava/math/BigInteger;)V

    .line 33
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;
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

    .line 58
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT64;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT64;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT64;)V

    return-object v0

    .line 63
    :cond_0
    if-eqz p0, :cond_1

    .line 65
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 68
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static now()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;
    .locals 5

    .line 40
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    const-wide/16 v1, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-long v3, v3, v1

    sget-wide v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;->etsiEpochMicros:J

    sub-long/2addr v3, v1

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;-><init>(J)V

    return-object v0
.end method

.method public static ofUnixMillis(J)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;
    .locals 5
    .param p0, "unixMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unixMillis"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    const-wide/16 v1, 0x3e8

    mul-long v1, v1, p0

    sget-wide v3, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;->etsiEpochMicros:J

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public toUnixMillis()J
    .locals 4

    .line 74
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    move-result-wide v0

    sget-wide v2, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;->etsiEpochMicros:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
