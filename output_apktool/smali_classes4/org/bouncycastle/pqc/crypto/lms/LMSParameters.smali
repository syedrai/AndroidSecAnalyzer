.class public Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;
.super Ljava/lang/Object;
.source "LMSParameters.java"


# instance fields
.field private final lmOTSParam:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field private final lmSigParam:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)V
    .locals 0
    .param p1, "lmSigParam"    # Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .param p2, "lmOTSParam"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lmSigParam",
            "lmOTSParam"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->lmSigParam:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 11
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->lmOTSParam:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 12
    return-void
.end method


# virtual methods
.method public getLMOTSParam()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->lmOTSParam:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    return-object v0
.end method

.method public getLMSigParam()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->lmSigParam:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    return-object v0
.end method
