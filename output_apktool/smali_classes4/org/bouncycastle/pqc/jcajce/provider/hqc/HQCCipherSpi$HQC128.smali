.class public Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCCipherSpi$HQC128;
.super Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCCipherSpi;
.source "HQCCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HQC128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 338
    sget-object v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->hqc128:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCCipherSpi;-><init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)V

    .line 339
    return-void
.end method
