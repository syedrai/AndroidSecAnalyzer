.class Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;
.super Ljava/lang/Object;
.source "OWCPADecryptResult.java"


# instance fields
.field final fail:I

.field final rm:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .param p1, "rm"    # [B
    .param p2, "fail"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rm",
            "fail"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;->rm:[B

    .line 14
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;->fail:I

    .line 15
    return-void
.end method
