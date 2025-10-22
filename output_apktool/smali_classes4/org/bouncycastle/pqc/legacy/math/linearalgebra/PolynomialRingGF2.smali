.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;
.super Ljava/lang/Object;
.source "PolynomialRingGF2.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static add(II)I
    .locals 1
    .param p0, "p"    # I
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    .line 34
    xor-int v0, p0, p1

    return v0
.end method

.method public static degree(I)I
    .locals 1
    .param p0, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 111
    const/4 v0, -0x1

    .line 112
    .local v0, "result":I
    :goto_0
    if-eqz p0, :cond_0

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return v0
.end method

.method public static degree(J)I
    .locals 4
    .param p0, "p"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "result":I
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_0

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    const/4 v1, 0x1

    ushr-long/2addr p0, v1

    goto :goto_0

    .line 135
    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method public static gcd(II)I
    .locals 3
    .param p0, "p"    # I
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    .line 207
    move v0, p0

    .line 208
    .local v0, "a":I
    move v1, p1

    .line 209
    .local v1, "b":I
    :goto_0
    if-eqz v1, :cond_0

    .line 211
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v2

    .line 212
    .local v2, "c":I
    move v0, v1

    .line 213
    move v1, v2

    goto :goto_0

    .line 216
    .end local v2    # "c":I
    :cond_0
    return v0
.end method

.method public static getIrreduciblePolynomial(I)I
    .locals 5
    .param p0, "deg"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deg"
        }
    .end annotation

    .line 253
    const/4 v0, 0x0

    if-gez p0, :cond_0

    .line 256
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The Degree is negative"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    return v0

    .line 259
    :cond_0
    const/16 v1, 0x1f

    if-le p0, v1, :cond_1

    .line 262
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The Degree is more then 31"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    return v0

    .line 265
    :cond_1
    const/4 v1, 0x1

    if-nez p0, :cond_2

    .line 267
    return v1

    .line 269
    :cond_2
    shl-int v2, v1, p0

    .line 270
    .local v2, "a":I
    add-int/2addr v2, v1

    .line 271
    add-int/lit8 v3, p0, 0x1

    shl-int/2addr v1, v3

    .line 272
    .local v1, "b":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 274
    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 276
    return v3

    .line 272
    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 279
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public static isIrreducible(I)Z
    .locals 6
    .param p0, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 230
    return v0

    .line 232
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    .line 233
    .local v1, "d":I
    const/4 v3, 0x2

    .line 234
    .local v3, "u":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 236
    invoke-static {v3, v3, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v3

    .line 237
    xor-int/lit8 v5, v3, 0x2

    invoke-static {v5, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->gcd(II)I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 239
    return v0

    .line 234
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    .end local v4    # "i":I
    :cond_2
    return v2
.end method

.method public static modMultiply(III)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "r"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "r"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "result":I
    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v1

    .line 79
    .local v1, "p":I
    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v2

    .line 80
    .local v2, "q":I
    if-eqz v2, :cond_2

    .line 82
    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 84
    .local v3, "d":I
    :goto_0
    if-eqz v1, :cond_2

    .line 86
    and-int/lit8 v5, v1, 0x1

    int-to-byte v5, v5

    .line 87
    .local v5, "pMod2":B
    if-ne v5, v4, :cond_0

    .line 89
    xor-int/2addr v0, v2

    .line 91
    :cond_0
    ushr-int/lit8 v1, v1, 0x1

    .line 92
    shl-int/lit8 v2, v2, 0x1

    .line 93
    if-lt v2, v3, :cond_1

    .line 95
    xor-int/2addr v2, p2

    .line 97
    .end local v5    # "pMod2":B
    :cond_1
    goto :goto_0

    .line 99
    .end local v3    # "d":I
    :cond_2
    return v0
.end method

.method public static multiply(II)J
    .locals 6
    .param p0, "p"    # I
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    .line 47
    const-wide/16 v0, 0x0

    .line 48
    .local v0, "result":J
    if-eqz p1, :cond_1

    .line 50
    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 52
    .local v2, "q1":J
    :goto_0
    if-eqz p0, :cond_1

    .line 54
    and-int/lit8 v4, p0, 0x1

    int-to-byte v4, v4

    .line 55
    .local v4, "b":B
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 57
    xor-long/2addr v0, v2

    .line 59
    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    .line 60
    shl-long/2addr v2, v5

    .line 62
    .end local v4    # "b":B
    goto :goto_0

    .line 64
    .end local v2    # "q1":J
    :cond_1
    return-wide v0
.end method

.method public static remainder(II)I
    .locals 3
    .param p0, "p"    # I
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    .line 147
    move v0, p0

    .line 149
    .local v0, "result":I
    if-nez p1, :cond_0

    .line 152
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: to be divided by 0"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    const/4 v1, 0x0

    return v1

    .line 156
    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 158
    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v2

    sub-int/2addr v1, v2

    shl-int v1, p1, v1

    xor-int/2addr v0, v1

    goto :goto_0

    .line 161
    :cond_1
    return v0
.end method

.method public static rest(JI)I
    .locals 9
    .param p0, "p"    # J
    .param p2, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    .line 174
    move-wide v0, p0

    .line 175
    .local v0, "p1":J
    if-nez p2, :cond_0

    .line 178
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: to be divided by 0"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    const/4 v2, 0x0

    return v2

    .line 181
    :cond_0
    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 182
    .local v2, "q1":J
    :goto_0
    const/16 v4, 0x20

    ushr-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 184
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(J)I

    move-result v4

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(J)I

    move-result v5

    sub-int/2addr v4, v5

    shl-long v4, v2, v4

    xor-long/2addr v0, v4

    goto :goto_0

    .line 187
    :cond_1
    const-wide/16 v4, -0x1

    and-long/2addr v4, v0

    long-to-int v5, v4

    .line 188
    .local v5, "result":I
    :goto_1
    invoke-static {v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v4

    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 190
    invoke-static {v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v4

    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v6

    sub-int/2addr v4, v6

    shl-int v4, p2, v4

    xor-int/2addr v5, v4

    goto :goto_1

    .line 193
    :cond_2
    return v5
.end method
