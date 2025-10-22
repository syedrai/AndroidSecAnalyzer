.class Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
.super Ljava/lang/Object;
.source "SamplerCtx.java"


# instance fields
.field p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

.field sigma_min:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->sigma_min:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 12
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    .line 13
    return-void
.end method
