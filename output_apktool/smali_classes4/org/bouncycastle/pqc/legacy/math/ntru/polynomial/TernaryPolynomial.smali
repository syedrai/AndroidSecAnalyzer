.class public interface abstract Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;
.super Ljava/lang/Object;
.source "TernaryPolynomial.java"

# interfaces
.implements Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getNegOnes()[I
.end method

.method public abstract getOnes()[I
.end method

.method public abstract mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poly2"
        }
    .end annotation
.end method

.method public abstract size()I
.end method
