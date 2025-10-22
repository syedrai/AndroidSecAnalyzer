.class public Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;
.super Ljava/lang/Object;
.source "ElGamalParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "g"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;->p:Ljava/math/BigInteger;

    .line 24
    iput-object p2, p0, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;->g:Ljava/math/BigInteger;

    .line 25
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method
