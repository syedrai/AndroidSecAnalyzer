.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
.super Ljava/lang/Object;
.source "PolynomialGF2mSmallM.java"


# static fields
.field public static final RANDOM_IRREDUCIBLE_POLYNOMIAL:C = 'I'


# instance fields
.field private coefficients:[I

.field private degree:I

.field private field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;


# direct methods
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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;I)V
    .locals 2
    .param p1, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p2, "degree"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "degree"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 123
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    .line 124
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 125
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    const/4 v1, 0x1

    aput v1, v0, p2

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;ICLjava/security/SecureRandom;)V
    .locals 3
    .param p1, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p2, "deg"    # I
    .param p3, "typeOfPolynomial"    # C
    .param p4, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "deg",
            "typeOfPolynomial",
            "sr"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 69
    packed-switch p3, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Error: type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not defined for GF2smallmPolynomial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :pswitch_0
    invoke-direct {p0, p2, p4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->createRandomIrreduciblePolynomial(ILjava/security/SecureRandom;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 73
    nop

    .line 79
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    .line 80
    return-void

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[B)V
    .locals 8
    .param p1, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p2, "enc"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "enc"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 153
    const/16 v0, 0x8

    .line 154
    .local v0, "d":I
    const/4 v1, 0x1

    .line 155
    .local v1, "count":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 158
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 161
    :cond_0
    array-length v2, p2

    rem-int/2addr v2, v1

    const-string v3, " Error: byte array is not encoded polynomial over given finite field GF2m"

    if-nez v2, :cond_6

    .line 167
    array-length v2, p2

    div-int/2addr v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 168
    const/4 v1, 0x0

    .line 169
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 171
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v0, :cond_1

    .line 173
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v6, v5, v2

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "count":I
    .local v7, "count":I
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v4

    xor-int/2addr v1, v6

    aput v1, v5, v2

    .line 171
    add-int/lit8 v4, v4, 0x8

    move v1, v7

    goto :goto_2

    .line 175
    .end local v4    # "j":I
    .end local v7    # "count":I
    .restart local v1    # "count":I
    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 182
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v2, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    aget v2, v2, v5

    if-eqz v2, :cond_4

    goto :goto_3

    .line 185
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_5
    :goto_3
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    .line 189
    return-void

    .line 163
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V
    .locals 1
    .param p1, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p2, "coeffs"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "coeffs"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 138
    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 139
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;)V
    .locals 2
    .param p1, "vect"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vect"
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->getIntArrayForm()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 1
    .param p1, "other"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 200
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    .line 201
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 202
    return-void
.end method

.method private add([I[I)[I
    .locals 6
    .param p1, "a"    # [I
    .param p2, "b"    # [I
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

    .line 358
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 360
    array-length v0, p2

    new-array v0, v0, [I

    .line 361
    .local v0, "result":[I
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    move-object v1, p1

    .local v1, "addend":[I
    goto :goto_0

    .line 366
    .end local v0    # "result":[I
    .end local v1    # "addend":[I
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    .line 367
    .restart local v0    # "result":[I
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    move-object v1, p2

    .line 371
    .restart local v1    # "addend":[I
    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 373
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget v4, v0, v2

    aget v5, v1, v2

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->add(II)I

    move-result v3

    aput v3, v0, v2

    .line 371
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 376
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private static computeDegree([I)I
    .locals 2
    .param p0, "a"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1087
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .local v0, "degree":I
    :goto_0
    if-ltz v0, :cond_0

    aget v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1091
    :cond_0
    return v0
.end method

.method private computeDegree()V
    .locals 2

    .line 1070
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    .line 1071
    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    goto :goto_0

    .line 1075
    :cond_0
    return-void
.end method

.method private createRandomIrreduciblePolynomial(ILjava/security/SecureRandom;)[I
    .locals 4
    .param p1, "deg"    # I
    .param p2, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deg",
            "sr"
        }
    .end annotation

    .line 92
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    .line 93
    .local v0, "resCoeff":[I
    const/4 v1, 0x1

    aput v1, v0, p1

    .line 94
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getRandomNonZeroElement(Ljava/security/SecureRandom;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 95
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 97
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getRandomElement(Ljava/security/SecureRandom;)I

    move-result v3

    aput v3, v0, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->isIrreducible([I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    invoke-static {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v1

    .line 102
    .local v1, "n":I
    if-nez v1, :cond_1

    .line 104
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getRandomNonZeroElement(Ljava/security/SecureRandom;)I

    move-result v3

    aput v3, v0, v2

    goto :goto_2

    .line 108
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getRandomElement(Ljava/security/SecureRandom;)I

    move-result v3

    aput v3, v0, v1

    .line 110
    .end local v1    # "n":I
    :goto_2
    goto :goto_1

    .line 111
    :cond_2
    return-object v0
.end method

.method private div([I[I)[[I
    .locals 10
    .param p1, "a"    # [I
    .param p2, "f"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "f"
        }
    .end annotation

    .line 516
    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    .line 517
    .local v0, "df":I
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 518
    .local v1, "da":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 522
    const/4 v3, 0x2

    new-array v3, v3, [[I

    .line 523
    .local v3, "result":[[I
    new-array v4, v2, [I

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 524
    new-array v4, v1, [I

    aput-object v4, v3, v2

    .line 525
    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->headCoefficient([I)I

    move-result v4

    .line 526
    .local v4, "hc":I
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v4

    .line 527
    aget-object v6, v3, v5

    aput v5, v6, v5

    .line 528
    aget-object v6, v3, v2

    aget-object v7, v3, v2

    array-length v7, v7

    invoke-static {p1, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    :goto_0
    aget-object v6, v3, v2

    invoke-static {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v6

    if-gt v0, v6, :cond_0

    .line 532
    new-array v6, v2, [I

    .line 533
    .local v6, "coeff":[I
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget-object v8, v3, v2

    invoke-static {v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->headCoefficient([I)I

    move-result v8

    invoke-virtual {v7, v8, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v7

    aput v7, v6, v5

    .line 534
    aget v7, v6, v5

    invoke-direct {p0, p2, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v7

    .line 535
    .local v7, "q":[I
    aget-object v8, v3, v2

    invoke-static {v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v8

    sub-int/2addr v8, v0

    .line 536
    .local v8, "n":I
    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v7

    .line 537
    invoke-static {v6, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v6

    .line 538
    aget-object v9, v3, v5

    invoke-direct {p0, v6, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v9

    aput-object v9, v3, v5

    .line 539
    aget-object v9, v3, v2

    invoke-direct {p0, v7, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v9

    aput-object v9, v3, v2

    .line 540
    .end local v6    # "coeff":[I
    .end local v7    # "q":[I
    .end local v8    # "n":I
    goto :goto_0

    .line 541
    :cond_0
    return-object v3

    .line 520
    .end local v3    # "result":[[I
    .end local v4    # "hc":I
    :cond_1
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Division by zero."

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private gcd([I[I)[I
    .locals 6
    .param p1, "f"    # [I
    .param p2, "g"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "f",
            "g"
        }
    .end annotation

    .line 566
    move-object v0, p1

    .line 567
    .local v0, "a":[I
    move-object v1, p2

    .line 568
    .local v1, "b":[I
    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 570
    return-object v1

    .line 572
    :cond_0
    :goto_0
    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 574
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->mod([I[I)[I

    move-result-object v2

    .line 575
    .local v2, "c":[I
    array-length v4, v1

    new-array v0, v4, [I

    .line 576
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    array-length v4, v2

    new-array v1, v4, [I

    .line 578
    array-length v4, v1

    invoke-static {v2, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    .end local v2    # "c":[I
    goto :goto_0

    .line 580
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->headCoefficient([I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v2

    .line 581
    .local v2, "coeff":I
    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v3

    return-object v3
.end method

.method private static headCoefficient([I)I
    .locals 2
    .param p0, "a"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 256
    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    .line 257
    .local v0, "degree":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 259
    const/4 v1, 0x0

    return v1

    .line 261
    :cond_0
    aget v1, p0, v0

    return v1
.end method

.method private static isEqual([I[I)Z
    .locals 6
    .param p0, "a"    # [I
    .param p1, "b"    # [I
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

    .line 1017
    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    .line 1018
    .local v0, "da":I
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v1

    .line 1019
    .local v1, "db":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1021
    return v2

    .line 1023
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, v0, :cond_2

    .line 1025
    aget v4, p0, v3

    aget v5, p1, v3

    if-eq v4, v5, :cond_1

    .line 1027
    return v2

    .line 1023
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1030
    .end local v3    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private isIrreducible([I)Z
    .locals 9
    .param p1, "a"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 689
    const/4 v0, 0x0

    aget v1, p1, v0

    if-nez v1, :cond_0

    .line 691
    return v0

    .line 693
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v1

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    .line 694
    .local v1, "d":I
    filled-new-array {v0, v2}, [I

    move-result-object v3

    .line 695
    .local v3, "u":[I
    filled-new-array {v0, v2}, [I

    move-result-object v4

    .line 696
    .local v4, "Y":[I
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v5

    .line 697
    .local v5, "fieldDegree":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_3

    .line 699
    add-int/lit8 v7, v5, -0x1

    .local v7, "j":I
    :goto_1
    if-ltz v7, :cond_1

    .line 701
    invoke-direct {p0, v3, v3, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->modMultiply([I[I[I)[I

    move-result-object v3

    .line 699
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 703
    .end local v7    # "j":I
    :cond_1
    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v3

    .line 704
    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->gcd([I[I)[I

    move-result-object v7

    .line 705
    .local v7, "g":[I
    invoke-static {v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v8

    if-eqz v8, :cond_2

    .line 707
    return v0

    .line 697
    .end local v7    # "g":[I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 710
    .end local v6    # "i":I
    :cond_3
    return v2
.end method

.method private mod([I[I)[I
    .locals 5
    .param p1, "a"    # [I
    .param p2, "f"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "f"
        }
    .end annotation

    .line 734
    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    .line 735
    .local v0, "df":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 739
    array-length v1, p1

    new-array v1, v1, [I

    .line 740
    .local v1, "result":[I
    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->headCoefficient([I)I

    move-result v2

    .line 741
    .local v2, "hc":I
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v2

    .line 742
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    :goto_0
    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v3

    if-gt v0, v3, :cond_0

    .line 746
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->headCoefficient([I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v3

    .line 747
    .local v3, "coeff":I
    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {p2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v4

    .line 748
    .local v4, "q":[I
    invoke-direct {p0, v4, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v4

    .line 749
    invoke-direct {p0, v4, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v1

    .line 750
    .end local v3    # "coeff":I
    .end local v4    # "q":[I
    goto :goto_0

    .line 751
    :cond_0
    return-object v1

    .line 737
    .end local v1    # "result":[I
    .end local v2    # "hc":I
    :cond_1
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Division by zero"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private modDiv([I[I[I)[I
    .locals 7
    .param p1, "a"    # [I
    .param p2, "b"    # [I
    .param p3, "g"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "g"
        }
    .end annotation

    .line 915
    invoke-static {p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v0

    .line 916
    .local v0, "r0":[I
    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->mod([I[I)[I

    move-result-object v1

    .line 917
    .local v1, "r1":[I
    const/4 v2, 0x0

    filled-new-array {v2}, [I

    move-result-object v3

    .line 918
    .local v3, "s0":[I
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->mod([I[I)[I

    move-result-object v4

    .line 921
    .local v4, "s1":[I
    :goto_0
    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 923
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->div([I[I)[[I

    move-result-object v5

    .line 924
    .local v5, "q":[[I
    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v0

    .line 925
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v1

    .line 926
    aget-object v6, v5, v2

    invoke-direct {p0, v6, v4, p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->modMultiply([I[I[I)[I

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v6

    .line 927
    .local v6, "s2":[I
    invoke-static {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v3

    .line 928
    invoke-static {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v4

    goto :goto_0

    .line 931
    .end local v5    # "q":[[I
    .end local v6    # "s2":[I
    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->headCoefficient([I)I

    move-result v2

    .line 932
    .local v2, "hc":I
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v5

    invoke-direct {p0, v3, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v3

    .line 933
    return-object v3
.end method

.method private modMultiply([I[I[I)[I
    .locals 1
    .param p1, "a"    # [I
    .param p2, "b"    # [I
    .param p3, "g"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "g"
        }
    .end annotation

    .line 821
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->mod([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private multWithElement([II)[I
    .locals 5
    .param p1, "a"    # [I
    .param p2, "element"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "element"
        }
    .end annotation

    .line 440
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    .line 441
    .local v0, "degree":I
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 446
    :cond_0
    if-ne p2, v2, :cond_1

    .line 448
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v1

    return-object v1

    .line 451
    :cond_1
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 452
    .local v1, "result":[I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 454
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget v4, p1, v2

    invoke-virtual {v3, v4, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v3

    aput v3, v1, v2

    .line 452
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 457
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 443
    .end local v1    # "result":[I
    :cond_3
    :goto_1
    new-array v1, v2, [I

    return-object v1
.end method

.method private static multWithMonomial([II)[I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "k"    # I
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

    .line 481
    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    .line 482
    .local v0, "d":I
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 484
    new-array v1, v2, [I

    return-object v1

    .line 486
    :cond_0
    add-int v1, v0, p1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    .line 487
    .local v1, "result":[I
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    return-object v1
.end method

.method private multiply([I[I)[I
    .locals 16
    .param p1, "a"    # [I
    .param p2, "b"    # [I
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

    .line 608
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 610
    move-object/from16 v0, p2

    .line 611
    .local v0, "mult1":[I
    move-object/from16 v2, p1

    .local v2, "mult2":[I
    goto :goto_0

    .line 615
    .end local v0    # "mult1":[I
    .end local v2    # "mult2":[I
    :cond_0
    move-object/from16 v0, p1

    .line 616
    .restart local v0    # "mult1":[I
    move-object/from16 v2, p2

    .line 619
    .restart local v2    # "mult2":[I
    :goto_0
    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v0

    .line 620
    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v2

    .line 622
    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 624
    aget v3, v2, v5

    invoke-direct {v1, v0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v3

    return-object v3

    .line 627
    :cond_1
    array-length v3, v0

    .line 628
    .local v3, "d1":I
    array-length v6, v2

    .line 629
    .local v6, "d2":I
    add-int v7, v3, v6

    sub-int/2addr v7, v4

    new-array v7, v7, [I

    .line 631
    .local v7, "result":[I
    if-eq v6, v3, :cond_2

    .line 633
    new-array v4, v6, [I

    .line 634
    .local v4, "res1":[I
    sub-int v8, v3, v6

    new-array v8, v8, [I

    .line 635
    .local v8, "res2":[I
    array-length v9, v4

    invoke-static {v0, v5, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    array-length v9, v8

    invoke-static {v0, v6, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    invoke-direct {v1, v4, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v4

    .line 638
    :try_start_0
    invoke-direct {v1, v8, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    .end local v8    # "res2":[I
    .local v5, "res2":[I
    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v5

    .line 640
    invoke-direct {v1, v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v4

    .line 641
    .end local v5    # "res2":[I
    .end local v7    # "result":[I
    .local v4, "result":[I
    goto :goto_1

    .line 638
    .end local v0    # "mult1":[I
    .end local v2    # "mult2":[I
    .end local v3    # "d1":I
    .end local v4    # "result":[I
    .end local v6    # "d2":I
    .end local p0    # "this":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .end local p1    # "a":[I
    .end local p2    # "b":[I
    :catchall_0
    move-exception v0

    throw v0

    .line 644
    .restart local v0    # "mult1":[I
    .restart local v2    # "mult2":[I
    .restart local v3    # "d1":I
    .restart local v6    # "d2":I
    .restart local v7    # "result":[I
    .restart local p1    # "a":[I
    .restart local p2    # "b":[I
    :cond_2
    add-int/lit8 v8, v3, 0x1

    ushr-int/lit8 v6, v8, 0x1

    .line 645
    sub-int v4, v3, v6

    .line 646
    .local v4, "d":I
    new-array v8, v6, [I

    .line 647
    .local v8, "firstPartMult1":[I
    new-array v9, v6, [I

    .line 648
    .local v9, "firstPartMult2":[I
    new-array v10, v4, [I

    .line 649
    .local v10, "secondPartMult1":[I
    new-array v11, v4, [I

    .line 650
    .local v11, "secondPartMult2":[I
    array-length v12, v8

    .line 651
    invoke-static {v0, v5, v8, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    array-length v12, v10

    invoke-static {v0, v6, v10, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 655
    array-length v12, v9

    .line 656
    invoke-static {v2, v5, v9, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    array-length v12, v11

    invoke-static {v2, v6, v11, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    invoke-direct {v1, v8, v10}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v5

    .line 661
    .local v5, "helpPoly1":[I
    invoke-direct {v1, v9, v11}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v12

    .line 662
    .local v12, "helpPoly2":[I
    invoke-direct {v1, v8, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v13

    .line 663
    .local v13, "res1":[I
    invoke-direct {v1, v5, v12}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v14

    .line 664
    .local v14, "res2":[I
    invoke-direct {v1, v10, v11}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v15

    .line 665
    .local v15, "res3":[I
    invoke-direct {v1, v14, v13}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v14

    .line 666
    invoke-direct {v1, v14, v15}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v14

    .line 667
    invoke-static {v15, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v15

    .line 668
    invoke-direct {v1, v14, v15}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v7

    .line 669
    invoke-static {v7, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v7

    .line 670
    invoke-direct {v1, v7, v13}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v7

    move-object v4, v7

    .line 673
    .end local v5    # "helpPoly1":[I
    .end local v7    # "result":[I
    .end local v8    # "firstPartMult1":[I
    .end local v9    # "firstPartMult2":[I
    .end local v10    # "secondPartMult1":[I
    .end local v11    # "secondPartMult2":[I
    .end local v12    # "helpPoly2":[I
    .end local v13    # "res1":[I
    .end local v14    # "res2":[I
    .end local v15    # "res3":[I
    .local v4, "result":[I
    :goto_1
    return-object v4
.end method

.method private static normalForm([I)[I
    .locals 4
    .param p0, "a"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1102
    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    .line 1105
    .local v0, "d":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1108
    const/4 v1, 0x1

    new-array v1, v1, [I

    return-object v1

    .line 1112
    :cond_0
    array-length v1, p0

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_1

    .line 1115
    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v1

    return-object v1

    .line 1119
    :cond_1
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 1120
    .local v1, "result":[I
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1121
    return-object v1
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "addend"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addend"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v0

    .line 333
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public addMonomial(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 4
    .param p1, "degree"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degree"
        }
    .end annotation

    .line 387
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    .line 388
    .local v0, "monomial":[I
    const/4 v1, 0x1

    aput v1, v0, p1

    .line 389
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v1

    .line 390
    .local v1, "resultCoeff":[I
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v2
.end method

.method public addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 2
    .param p1, "addend"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addend"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 344
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    .line 345
    return-void
.end method

.method public div(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 7
    .param p1, "f"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->div([I[I)[[I

    move-result-object v0

    .line 501
    .local v0, "resultCoeffs":[[I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-direct {v1, v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-direct {v2, v4, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    aput-object v1, v4, v3

    aput-object v2, v4, v5

    return-object v4
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

    .line 991
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    if-nez v1, :cond_0

    goto :goto_0

    .line 996
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    .line 998
    .local v1, "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    iget v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 999
    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->isEqual([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1001
    const/4 v0, 0x1

    return v0

    .line 1004
    :cond_1
    return v0

    .line 993
    .end local v1    # "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    :cond_2
    :goto_0
    return v0
.end method

.method public evaluateAt(I)I
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

    .line 316
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    aget v0, v0, v1

    .line 317
    .local v0, "result":I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 319
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v2, v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v3, v3, v1

    xor-int v0, v2, v3

    .line 317
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 321
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public gcd(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "f"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->gcd([I[I)[I

    move-result-object v0

    .line 553
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public getCoefficient(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 272
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v0, v0, p1

    return v0

    .line 274
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDegree()I
    .locals 2

    .line 228
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 229
    .local v0, "d":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 231
    const/4 v1, -0x1

    return v1

    .line 233
    :cond_0
    return v0
.end method

.method public getEncoded()[B
    .locals 7

    .line 286
    const/16 v0, 0x8

    .line 287
    .local v0, "d":I
    const/4 v1, 0x1

    .line 288
    .local v1, "count":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 290
    add-int/lit8 v1, v1, 0x1

    .line 291
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 294
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v2, v2

    mul-int v2, v2, v1

    new-array v2, v2, [B

    .line 295
    .local v2, "res":[B
    const/4 v1, 0x0

    .line 296
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 298
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v0, :cond_1

    .line 300
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "count":I
    .local v5, "count":I
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v6, v6, v3

    ushr-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v2, v1

    .line 298
    add-int/lit8 v4, v4, 0x8

    move v1, v5

    goto :goto_2

    .line 296
    .end local v4    # "j":I
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 304
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public getHeadCoefficient()I
    .locals 2

    .line 241
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 243
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1038
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    .line 1039
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1041
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1043
    .end local v1    # "j":I
    :cond_0
    return v0
.end method

.method public mod(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "f"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->mod([I[I)[I

    move-result-object v0

    .line 722
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public modDiv(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "divisor"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .param p2, "modulus"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "divisor",
            "modulus"
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v2, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->modDiv([I[I[I)[I

    move-result-object v0

    .line 901
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public modInverse(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 4
    .param p1, "a"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 944
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    .line 945
    .local v0, "unit":[I
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->modDiv([I[I[I)[I

    move-result-object v1

    .line 946
    .local v1, "resultCoeff":[I
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v2
.end method

.method public modMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "a"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .param p2, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
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

    .line 765
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v2, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->modMultiply([I[I[I)[I

    move-result-object v0

    .line 767
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public modPolynomialToFracton(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 10
    .param p1, "g"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    .line 959
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    .line 960
    .local v0, "dg":I
    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v2

    .line 961
    .local v2, "a0":[I
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->mod([I[I)[I

    move-result-object v3

    .line 962
    .local v3, "a1":[I
    const/4 v4, 0x0

    filled-new-array {v4}, [I

    move-result-object v5

    .line 963
    .local v5, "b0":[I
    filled-new-array {v1}, [I

    move-result-object v6

    .line 964
    .local v6, "b1":[I
    :goto_0
    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v7

    if-le v7, v0, :cond_0

    .line 966
    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->div([I[I)[[I

    move-result-object v7

    .line 967
    .local v7, "q":[[I
    move-object v2, v3

    .line 968
    aget-object v3, v7, v1

    .line 969
    aget-object v8, v7, v4

    iget-object v9, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->modMultiply([I[I[I)[I

    move-result-object v8

    invoke-direct {p0, v5, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v8

    .line 970
    .local v8, "b2":[I
    move-object v5, v6

    .line 971
    move-object v6, v8

    .line 972
    .end local v7    # "q":[[I
    .end local v8    # "b2":[I
    goto :goto_0

    .line 974
    :cond_0
    new-instance v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v7, v8, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    new-instance v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v8, v9, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    const/4 v9, 0x2

    new-array v9, v9, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    aput-object v7, v9, v4

    aput-object v8, v9, v1

    return-object v9
.end method

.method public modSquareMatrix([Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 8
    .param p1, "matrix"    # [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 780
    array-length v0, p1

    .line 782
    .local v0, "length":I
    new-array v1, v0, [I

    .line 783
    .local v1, "resultCoeff":[I
    new-array v2, v0, [I

    .line 786
    .local v2, "thisSquare":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 788
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v5, v5, v3

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v6, v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v4

    aput v4, v2, v3

    .line 786
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 792
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 795
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v0, :cond_2

    .line 797
    aget-object v5, p1, v4

    iget-object v5, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v5, v5

    if-lt v3, v5, :cond_1

    .line 799
    goto :goto_3

    .line 801
    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget-object v6, p1, v4

    iget-object v6, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v6, v6, v3

    aget v7, v2, v4

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v5

    .line 803
    .local v5, "scalarTerm":I
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget v7, v1, v3

    invoke-virtual {v6, v7, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->add(II)I

    move-result v6

    aput v6, v1, v3

    .line 795
    .end local v5    # "scalarTerm":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 792
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 807
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v3
.end method

.method public modSquareRoot(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 4
    .param p1, "a"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    .line 833
    .local v0, "resultCoeff":[I
    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->modMultiply([I[I[I)[I

    move-result-object v1

    .line 834
    .local v1, "help":[I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->isEqual([I[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 836
    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v0

    .line 837
    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, v0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->modMultiply([I[I[I)[I

    move-result-object v1

    goto :goto_0

    .line 840
    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v2
.end method

.method public modSquareRootMatrix([Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 7
    .param p1, "matrix"    # [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 856
    array-length v0, p1

    .line 858
    .local v0, "length":I
    new-array v1, v0, [I

    .line 861
    .local v1, "resultCoeff":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 864
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 866
    aget-object v4, p1, v3

    iget-object v4, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 868
    goto :goto_2

    .line 870
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 872
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget-object v5, p1, v3

    iget-object v5, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v5, v5, v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v6, v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v4

    .line 874
    .local v4, "scalarTerm":I
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget v6, v1, v2

    invoke-virtual {v5, v6, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->add(II)I

    move-result v5

    aput v5, v1, v2

    .line 864
    .end local v4    # "scalarTerm":I
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 861
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_4

    .line 882
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget v4, v1, v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->sqRoot(I)I

    move-result v3

    aput v3, v1, v2

    .line 880
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 885
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v2
.end method

.method public multThisWithElement(I)V
    .locals 2
    .param p1, "element"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 427
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    .line 428
    return-void

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Not an element of the finite field this polynomial is defined over."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public multWithElement(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "element"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v0

    .line 409
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v1

    .line 405
    .end local v0    # "resultCoeff":[I
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Not an element of the finite field this polynomial is defined over."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public multWithMonomial(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v0

    .line 469
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "factor"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factor"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v0

    .line 594
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1053
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Polynomial over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1057
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->elementToStr(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Y^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1059
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    return-object v0
.end method
