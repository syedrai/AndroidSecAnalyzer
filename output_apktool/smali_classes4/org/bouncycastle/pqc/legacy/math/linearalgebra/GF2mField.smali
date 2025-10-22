.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
.super Ljava/lang/Object;
.source "GF2mField.java"


# instance fields
.field private degree:I

.field private polynomial:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "degree"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degree"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    .line 38
    const/16 v0, 0x20

    if-ge p1, v0, :cond_1

    .line 43
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 48
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    .line 49
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    .line 50
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: the degree of field is non-positive "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: the degree of field is too large "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "degree"    # I
    .param p2, "poly"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "degree",
            "poly"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    .line 60
    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 65
    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    .line 71
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    .line 73
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: given polynomial is reducible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: the degree is not correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;)V
    .locals 1
    .param p1, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    .line 94
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    .line 95
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    .line 96
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "enc"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enc"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    .line 77
    array-length v0, p1

    const/4 v1, 0x4

    const-string v2, "byte array is not an encoded finite field"

    if-ne v0, v1, :cond_1

    .line 82
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([B)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    .line 83
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    .line 90
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static polyToString(I)Ljava/lang/String;
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

    .line 343
    const-string v0, ""

    .line 344
    .local v0, "str":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 346
    const-string v0, "0"

    goto :goto_1

    .line 350
    :cond_0
    and-int/lit8 v1, p0, 0x1

    int-to-byte v1, v1

    .line 351
    .local v1, "b":B
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 353
    const-string v0, "1"

    .line 355
    :cond_1
    ushr-int/lit8 p0, p0, 0x1

    .line 356
    const/4 v3, 0x1

    .line 357
    .local v3, "i":I
    :goto_0
    if-eqz p0, :cond_3

    .line 359
    and-int/lit8 v4, p0, 0x1

    int-to-byte v1, v4

    .line 360
    if-ne v1, v2, :cond_2

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+x^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    :cond_2
    ushr-int/lit8 p0, p0, 0x1

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "b":B
    .end local v3    # "i":I
    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public add(II)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 137
    xor-int v0, p1, p2

    return v0
.end method

.method public elementToStr(I)Ljava/lang/String;
    .locals 4
    .param p1, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 282
    const-string v0, ""

    .line 283
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    if-ge v1, v2, :cond_1

    .line 285
    int-to-byte v2, p1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 291
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_1
    ushr-int/lit8 p1, p1, 0x1

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    if-nez v1, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 315
    .local v1, "otherField":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    iget v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    iget v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    if-ne v2, v3, :cond_1

    .line 318
    const/4 v0, 0x1

    return v0

    .line 321
    :cond_1
    return v0

    .line 310
    .end local v1    # "otherField":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    :cond_2
    :goto_0
    return v0
.end method

.method public exp(II)I
    .locals 3
    .param p1, "a"    # I
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "k"
        }
    .end annotation

    .line 161
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 163
    return v0

    .line 165
    :cond_0
    if-nez p1, :cond_1

    .line 167
    const/4 v0, 0x0

    return v0

    .line 169
    :cond_1
    if-ne p1, v0, :cond_2

    .line 171
    return v0

    .line 173
    :cond_2
    const/4 v1, 0x1

    .line 174
    .local v1, "result":I
    if-gez p2, :cond_3

    .line 176
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result p1

    .line 177
    neg-int p2, p2

    .line 179
    :cond_3
    :goto_0
    if-eqz p2, :cond_5

    .line 181
    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_4

    .line 183
    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v1

    .line 185
    :cond_4
    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result p1

    .line 186
    ushr-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 188
    :cond_5
    return v1
.end method

.method public getDegree()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    return v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 125
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getPolynomial()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    return v0
.end method

.method public getRandomElement(Ljava/security/SecureRandom;)I
    .locals 2
    .param p1, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sr"
        }
    .end annotation

    .line 227
    const/4 v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    shl-int/2addr v0, v1

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v0

    .line 228
    .local v0, "result":I
    return v0
.end method

.method public getRandomNonZeroElement()I
    .locals 1

    .line 238
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getRandomNonZeroElement(Ljava/security/SecureRandom;)I

    move-result v0

    return v0
.end method

.method public getRandomNonZeroElement(Ljava/security/SecureRandom;)I
    .locals 5
    .param p1, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sr"
        }
    .end annotation

    .line 249
    const/high16 v0, 0x100000

    .line 250
    .local v0, "controltime":I
    const/4 v1, 0x0

    .line 251
    .local v1, "count":I
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v2

    .line 252
    .local v2, "result":I
    :goto_0
    if-nez v2, :cond_0

    if-ge v1, v0, :cond_0

    .line 254
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    shl-int v4, v3, v4

    invoke-static {p1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v2

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    if-ne v1, v0, :cond_1

    .line 259
    const/4 v2, 0x1

    .line 261
    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 326
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    return v0
.end method

.method public inverse(I)I
    .locals 2
    .param p1, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 199
    const/4 v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    .line 201
    .local v0, "d":I
    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->exp(II)I

    move-result v1

    return v1
.end method

.method public isElementOfThisField(I)Z
    .locals 4
    .param p1, "e"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 270
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 272
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 274
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    shl-int v0, v3, v0

    if-ge p1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public mult(II)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 149
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v0

    return v0
.end method

.method public sqRoot(I)I
    .locals 2
    .param p1, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 212
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    if-ge v0, v1, :cond_0

    .line 214
    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result p1

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "i":I
    :cond_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 336
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    .line 337
    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polyToString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finite Field GF(2^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") = GF(2)[X]/<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method
