.class public Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyPairGeneratorSpi$Sha2_256f;
.super Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyPairGeneratorSpi;
.source "SPHINCSPlusKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sha2_256f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 199
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_256f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;)V

    .line 200
    return-void
.end method
