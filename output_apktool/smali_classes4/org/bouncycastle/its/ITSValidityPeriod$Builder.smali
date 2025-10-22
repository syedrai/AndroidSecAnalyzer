.class public Lorg/bouncycastle/its/ITSValidityPeriod$Builder;
.super Ljava/lang/Object;
.source "ITSValidityPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/ITSValidityPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final startDate:J


# direct methods
.method constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "startDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startDate"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/its/ITSValidityPeriod$Builder;->startDate:J

    .line 38
    return-void
.end method


# virtual methods
.method public plusSixtyHours(I)Lorg/bouncycastle/its/ITSValidityPeriod;
    .locals 5
    .param p1, "periods"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "periods"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod;

    iget-wide v1, p0, Lorg/bouncycastle/its/ITSValidityPeriod$Builder;->startDate:J

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;->valueOf(I)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->sixtyHours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/its/ITSValidityPeriod;-><init>(JLorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;Lorg/bouncycastle/its/ITSValidityPeriod$Unit;)V

    return-object v0
.end method

.method public plusYears(I)Lorg/bouncycastle/its/ITSValidityPeriod;
    .locals 5
    .param p1, "years"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "years"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod;

    iget-wide v1, p0, Lorg/bouncycastle/its/ITSValidityPeriod$Builder;->startDate:J

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;->valueOf(I)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->years:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/its/ITSValidityPeriod;-><init>(JLorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;Lorg/bouncycastle/its/ITSValidityPeriod$Unit;)V

    return-object v0
.end method
