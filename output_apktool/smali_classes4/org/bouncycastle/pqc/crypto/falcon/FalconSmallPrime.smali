.class Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
.super Ljava/lang/Object;
.source "FalconSmallPrime.java"


# instance fields
.field g:I

.field p:I

.field s:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "p"    # I
    .param p2, "g"    # I
    .param p3, "s"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "g",
            "s"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 12
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    .line 13
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->s:I

    .line 14
    return-void
.end method
