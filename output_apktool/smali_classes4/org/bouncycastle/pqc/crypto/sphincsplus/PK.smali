.class Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;
.super Ljava/lang/Object;
.source "PK.java"


# instance fields
.field final root:[B

.field final seed:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0
    .param p1, "seed"    # [B
    .param p2, "root"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "root"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    .line 11
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    .line 12
    return-void
.end method
