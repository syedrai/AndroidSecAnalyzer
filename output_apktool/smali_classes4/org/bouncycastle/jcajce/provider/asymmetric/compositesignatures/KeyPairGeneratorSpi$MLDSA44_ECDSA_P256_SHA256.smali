.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi$MLDSA44_ECDSA_P256_SHA256;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;
.source "KeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MLDSA44_ECDSA_P256_SHA256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 298
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;->MLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;)V

    .line 299
    return-void
.end method
