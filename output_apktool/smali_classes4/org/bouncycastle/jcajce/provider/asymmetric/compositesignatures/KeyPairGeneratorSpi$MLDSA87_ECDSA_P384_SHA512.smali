.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi$MLDSA87_ECDSA_P384_SHA512;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;
.source "KeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MLDSA87_ECDSA_P384_SHA512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 334
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;->MLDSA87_ECDSA_P384_SHA512:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;)V

    .line 335
    return-void
.end method
