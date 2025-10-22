.class public Lorg/bouncycastle/util/test/FixedSecureRandom$Data;
.super Lorg/bouncycastle/util/test/FixedSecureRandom$Source;
.source "FixedSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/util/test/FixedSecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lorg/bouncycastle/util/test/FixedSecureRandom$Source;-><init>([B)V

    .line 60
    return-void
.end method
