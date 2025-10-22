.class Lorg/bouncycastle/pqc/crypto/lms/HSS$PlaceholderLMSPrivateKey;
.super Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;
.source "HSS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/lms/HSS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaceholderLMSPrivateKey"
.end annotation


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[BI[B)V
    .locals 0
    .param p1, "lmsParameter"    # Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .param p2, "otsParameters"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .param p3, "q"    # I
    .param p4, "I"    # [B
    .param p5, "maxQ"    # I
    .param p6, "masterSecret"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lmsParameter",
            "otsParameters",
            "q",
            "I",
            "maxQ",
            "masterSecret"
        }
    .end annotation

    .line 221
    invoke-direct/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[BI[B)V

    .line 222
    return-void
.end method


# virtual methods
.method getNextOtsPrivateKey()Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "placeholder only"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "placeholder only"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
