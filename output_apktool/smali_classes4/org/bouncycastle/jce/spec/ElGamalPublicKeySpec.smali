.class public Lorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;
.super Lorg/bouncycastle/jce/spec/ElGamalKeySpec;
.source "ElGamalPublicKeySpec.java"


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;)V
    .locals 0
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "spec"    # Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "y",
            "spec"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p2}, Lorg/bouncycastle/jce/spec/ElGamalKeySpec;-><init>(Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;)V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;->y:Ljava/math/BigInteger;

    .line 22
    return-void
.end method


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;->y:Ljava/math/BigInteger;

    return-object v0
.end method
