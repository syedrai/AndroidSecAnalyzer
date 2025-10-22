.class public abstract Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# instance fields
.field protected length:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addend"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation
.end method

.method public abstract getEncoded()[B
.end method

.method public final getLength()I
    .locals 1

    .line 19
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public abstract isZero()Z
.end method

.method public abstract multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
