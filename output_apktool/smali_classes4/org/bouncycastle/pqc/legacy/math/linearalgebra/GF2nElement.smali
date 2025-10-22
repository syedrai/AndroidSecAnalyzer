.class public abstract Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
.super Ljava/lang/Object;
.source "GF2nElement.java"

# interfaces
.implements Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;


# instance fields
.field protected mDegree:I

.field protected mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract assignOne()V
.end method

.method abstract assignZero()V
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public final convert(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 1
    .param p1, "basis"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "basis"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->convert(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-result-object v0

    return-object v0
.end method

.method public final getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    return-object v0
.end method

.method public abstract increase()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
.end method

.method public abstract increaseThis()V
.end method

.method public abstract solveQuadraticEquation()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public abstract square()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
.end method

.method public abstract squareRoot()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
.end method

.method public abstract squareRootThis()V
.end method

.method public abstract squareThis()V
.end method

.method public final subtract(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .locals 1
    .param p1, "minuend"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minuend"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v0

    return-object v0
.end method

.method public final subtractFromThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V
    .locals 0
    .param p1, "minuend"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minuend"
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 123
    return-void
.end method

.method abstract testBit(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract testRightmostBit()Z
.end method

.method public abstract trace()I
.end method
