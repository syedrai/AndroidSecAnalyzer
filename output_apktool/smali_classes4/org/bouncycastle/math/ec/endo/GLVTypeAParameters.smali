.class public Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;
.super Ljava/lang/Object;
.source "GLVTypeAParameters.java"


# instance fields
.field protected final i:Ljava/math/BigInteger;

.field protected final lambda:Ljava/math/BigInteger;

.field protected final splitParams:Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;)V
    .locals 0
    .param p1, "i"    # Ljava/math/BigInteger;
    .param p2, "lambda"    # Ljava/math/BigInteger;
    .param p3, "splitParams"    # Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "lambda",
            "splitParams"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;->i:Ljava/math/BigInteger;

    .line 13
    iput-object p2, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;->lambda:Ljava/math/BigInteger;

    .line 14
    iput-object p3, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;->splitParams:Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;

    .line 15
    return-void
.end method


# virtual methods
.method public getI()Ljava/math/BigInteger;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;->i:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getLambda()Ljava/math/BigInteger;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;->lambda:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSplitParams()Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;->splitParams:Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;

    return-object v0
.end method
