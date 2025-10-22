.class Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;
.super Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;
.source "ISAPEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISAPAEAD_A_128"
.end annotation


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    .line 294
    const-wide v0, 0x18040010c0c0c0cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;->ISAP_IV1_64:J

    .line 295
    const-wide v0, 0x28040010c0c0c0cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;->ISAP_IV2_64:J

    .line 296
    const-wide v0, 0x38040010c0c0c0cL    # 8.14194196761063E-292

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;->ISAP_IV3_64:J

    .line 297
    return-void
.end method


# virtual methods
.method protected PX1()V
    .locals 0

    .line 301
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;->P12()V

    .line 302
    return-void
.end method

.method protected PX2()V
    .locals 0

    .line 306
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;->P12()V

    .line 307
    return-void
.end method
