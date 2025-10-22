.class Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
.super Ljava/lang/Object;
.source "ComplexNumberWrapper.java"


# instance fields
.field im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V
    .locals 0
    .param p1, "re"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "im"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "re",
            "im"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 11
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 12
    return-void
.end method
