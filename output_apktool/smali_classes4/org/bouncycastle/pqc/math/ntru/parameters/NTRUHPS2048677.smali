.class public Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPS2048677;
.super Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;
.source "NTRUHPS2048677.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 14
    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v1, 0x2a5

    const/16 v2, 0xb

    const/16 v3, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;-><init>(IIIII)V

    .line 21
    return-void
.end method
