.class public Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi$BIKE192;
.super Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;
.source "BIKECipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BIKE192"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 349
    sget-object v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->bike192:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;-><init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)V

    .line 350
    return-void
.end method
