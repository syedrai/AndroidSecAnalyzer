.class Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;
.super Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;
.source "ISAPEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISAPAEAD_K_128A"
.end annotation


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 734
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    .line 735
    const/4 p1, 0x4

    new-array v0, p1, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;->ISAP_IV1_16:[S

    .line 736
    new-array v0, p1, [S

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;->ISAP_IV2_16:[S

    .line 737
    new-array p1, p1, [S

    fill-array-data p1, :array_2

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;->ISAP_IV3_16:[S

    .line 738
    return-void

    :array_0
    .array-data 2
        -0x7fffs
        0x190s
        0x110s
        0x808s
    .end array-data

    :array_1
    .array-data 2
        -0x7ffes
        0x190s
        0x110s
        0x808s
    .end array-data

    :array_2
    .array-data 2
        -0x7ffds
        0x190s
        0x110s
        0x808s
    .end array-data
.end method


# virtual methods
.method protected PermuteRoundsBX([S[S[S)V
    .locals 2
    .param p1, "SX"    # [S
    .param p2, "E"    # [S
    .param p3, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "SX",
            "E",
            "C"
        }
    .end annotation

    .line 754
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;->prepareThetaX([S[S)V

    .line 755
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    .line 756
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    return-void
.end method

.method protected PermuteRoundsHX([S[S[S)V
    .locals 0
    .param p1, "SX"    # [S
    .param p2, "E"    # [S
    .param p3, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "SX",
            "E",
            "C"
        }
    .end annotation

    .line 742
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;->prepareThetaX([S[S)V

    .line 743
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;->rounds_4_18([S[S[S)V

    .line 744
    return-void
.end method

.method protected PermuteRoundsKX([S[S[S)V
    .locals 0
    .param p1, "SX"    # [S
    .param p2, "E"    # [S
    .param p3, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "SX",
            "E",
            "C"
        }
    .end annotation

    .line 748
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;->prepareThetaX([S[S)V

    .line 749
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;->rounds_12_18([S[S[S)V

    .line 750
    return-void
.end method
