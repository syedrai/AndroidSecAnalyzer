.class Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
.super Ljava/lang/Object;
.source "FalconFPR.java"


# instance fields
.field v:D


# direct methods
.method constructor <init>(D)V
    .locals 0
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    .line 10
    return-void
.end method
