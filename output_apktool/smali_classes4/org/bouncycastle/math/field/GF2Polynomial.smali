.class Lorg/bouncycastle/math/field/GF2Polynomial;
.super Ljava/lang/Object;
.source "GF2Polynomial.java"

# interfaces
.implements Lorg/bouncycastle/math/field/Polynomial;


# instance fields
.field protected final exponents:[I


# direct methods
.method constructor <init>([I)V
    .locals 1
    .param p1, "exponents"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exponents"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 26
    if-ne p0, p1, :cond_0

    .line 28
    const/4 v0, 0x1

    return v0

    .line 30
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/field/GF2Polynomial;

    if-nez v0, :cond_1

    .line 32
    const/4 v0, 0x0

    return v0

    .line 34
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/math/field/GF2Polynomial;

    .line 35
    .local v0, "other":Lorg/bouncycastle/math/field/GF2Polynomial;
    iget-object v1, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    iget-object v2, v0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v1

    return v1
.end method

.method public getDegree()I
    .locals 2

    .line 16
    iget-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    iget-object v1, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getExponentsPresent()[I
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
