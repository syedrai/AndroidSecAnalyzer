.class Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;
.super Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;
.source "ISAPEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISAPAEAD_A_128A"
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

    .line 272
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    .line 273
    const-wide v0, 0x18040010c01060cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;->ISAP_IV1_64:J

    .line 274
    const-wide v0, 0x28040010c01060cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;->ISAP_IV2_64:J

    .line 275
    const-wide v0, 0x38040010c01060cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;->ISAP_IV3_64:J

    .line 276
    return-void
.end method


# virtual methods
.method protected PX1()V
    .locals 0

    .line 280
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;->P6()V

    .line 281
    return-void
.end method

.method protected PX2()V
    .locals 2

    .line 285
    const-wide/16 v0, 0x4b

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;->ROUND(J)V

    .line 286
    return-void
.end method
