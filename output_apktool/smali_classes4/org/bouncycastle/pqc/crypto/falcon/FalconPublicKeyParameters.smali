.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyParameters;
.source "FalconPublicKeyParameters.java"


# instance fields
.field private H:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B)V
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;
    .param p2, "H"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "H"
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V

    .line 13
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->H:[B

    .line 14
    return-void
.end method


# virtual methods
.method public getH()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->H:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
