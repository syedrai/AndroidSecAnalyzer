.class public Lorg/bouncycastle/crypto/util/RadixConverter;
.super Ljava/lang/Object;
.source "RadixConverter.java"


# static fields
.field private static final DEFAULT_POWERS_TO_CACHE:I = 0xa

.field private static final LOG_LONG_MAX_VALUE:D


# instance fields
.field private final digitsGroupLength:I

.field private final digitsGroupSpacePowers:[Ljava/math/BigInteger;

.field private final digitsGroupSpaceSize:Ljava/math/BigInteger;

.field private final radix:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/bouncycastle/crypto/util/RadixConverter;->LOG_LONG_MAX_VALUE:D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radix"
        }
    .end annotation

    .line 67
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/util/RadixConverter;-><init>(II)V

    .line 68
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "radix"    # I
    .param p2, "numberOfCachedPowers"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "radix",
            "numberOfCachedPowers"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->radix:I

    .line 57
    sget-wide v0, Lorg/bouncycastle/crypto/util/RadixConverter;->LOG_LONG_MAX_VALUE:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    .line 58
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/util/RadixConverter;->precomputeDigitsGroupPowers(ILjava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpacePowers:[Ljava/math/BigInteger;

    .line 60
    return-void
.end method

.method private fromEncoding(II[S)J
    .locals 7
    .param p1, "groupStartDigitIndex"    # I
    .param p2, "groupEndDigitIndex"    # I
    .param p3, "digits"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupStartDigitIndex",
            "groupEndDigitIndex",
            "digits"
        }
    .end annotation

    .line 169
    const-wide/16 v0, 0x0

    .line 170
    .local v0, "decimalNumber":J
    move v2, p1

    .local v2, "digitIndex":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 172
    iget v3, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->radix:I

    int-to-long v3, v3

    mul-long v3, v3, v0

    aget-short v5, p3, v2

    const v6, 0xffff

    and-int/2addr v5, v6

    int-to-long v5, v5

    add-long v0, v3, v5

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "digitIndex":I
    :cond_0
    return-wide v0
.end method

.method private precomputeDigitsGroupPowers(ILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3
    .param p1, "numberOfCachedPowers"    # I
    .param p2, "digitsGroupSpaceSize"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numberOfCachedPowers",
            "digitsGroupSpaceSize"
        }
    .end annotation

    .line 179
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 180
    .local v0, "cachedPowers":[Ljava/math/BigInteger;
    move-object v1, p2

    .line 181
    .local v1, "currentPower":Ljava/math/BigInteger;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 183
    aput-object v1, v0, v2

    .line 184
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private toEncoding(JI[S)I
    .locals 4
    .param p1, "number"    # J
    .param p3, "digitIndex"    # I
    .param p4, "out"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "number",
            "digitIndex",
            "out"
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_1

    if-ltz p3, :cond_1

    .line 106
    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 108
    add-int/lit8 v1, p3, -0x1

    .end local p3    # "digitIndex":I
    .local v1, "digitIndex":I
    const/4 v2, 0x0

    aput-short v2, p4, p3

    .line 109
    move p3, v1

    goto :goto_1

    .line 111
    .end local v1    # "digitIndex":I
    .restart local p3    # "digitIndex":I
    :cond_0
    add-int/lit8 v1, p3, -0x1

    .end local p3    # "digitIndex":I
    .restart local v1    # "digitIndex":I
    iget v2, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->radix:I

    int-to-long v2, v2

    rem-long v2, p1, v2

    long-to-int v3, v2

    int-to-short v2, v3

    aput-short v2, p4, p3

    .line 112
    iget p3, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->radix:I

    int-to-long v2, p3

    div-long/2addr p1, v2

    move p3, v1

    .line 104
    .end local v1    # "digitIndex":I
    .restart local p3    # "digitIndex":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 118
    return p3

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to convert decimal number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public fromEncoding([S)Ljava/math/BigInteger;
    .locals 12
    .param p1, "digits"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digits"
        }
    .end annotation

    .line 127
    sget-object v0, Lorg/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    .line 128
    .local v0, "currentGroupCardinality":Ljava/math/BigInteger;
    const/4 v1, 0x0

    .line 129
    .local v1, "res":Ljava/math/BigInteger;
    const/4 v2, 0x0

    .line 130
    .local v2, "indexGroup":I
    array-length v3, p1

    .line 131
    .local v3, "numberOfDigits":I
    iget v4, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    sub-int v4, v3, v4

    .line 132
    .local v4, "groupStartDigitIndex":I
    :goto_0
    iget v5, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    neg-int v5, v5

    if-le v4, v5, :cond_3

    .line 135
    iget v5, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    .line 136
    .local v5, "actualDigitsInGroup":I
    if-gez v4, :cond_0

    .line 139
    iget v6, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    add-int v5, v6, v4

    .line 140
    const/4 v4, 0x0

    .line 142
    :cond_0
    add-int v6, v4, v5

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 143
    .local v6, "groupEndDigitIndex":I
    invoke-direct {p0, v4, v6, p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding(II[S)J

    move-result-wide v7

    .line 144
    .local v7, "groupInBaseRadix":J
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 145
    .local v9, "bigInteger":Ljava/math/BigInteger;
    if-nez v2, :cond_1

    .line 147
    move-object v1, v9

    goto :goto_2

    .line 152
    :cond_1
    iget-object v10, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpacePowers:[Ljava/math/BigInteger;

    array-length v10, v10

    if-gt v2, v10, :cond_2

    .line 153
    iget-object v10, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpacePowers:[Ljava/math/BigInteger;

    add-int/lit8 v11, v2, -0x1

    aget-object v10, v10, v11

    goto :goto_1

    .line 154
    :cond_2
    iget-object v10, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    :goto_1
    nop

    .line 155
    .end local v0    # "currentGroupCardinality":Ljava/math/BigInteger;
    .local v10, "currentGroupCardinality":Ljava/math/BigInteger;
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v1, v0

    move-object v0, v10

    .line 157
    .end local v10    # "currentGroupCardinality":Ljava/math/BigInteger;
    .restart local v0    # "currentGroupCardinality":Ljava/math/BigInteger;
    :goto_2
    nop

    .end local v5    # "actualDigitsInGroup":I
    .end local v6    # "groupEndDigitIndex":I
    .end local v7    # "groupInBaseRadix":J
    .end local v9    # "bigInteger":Ljava/math/BigInteger;
    add-int/lit8 v2, v2, 0x1

    .line 133
    iget v5, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    sub-int/2addr v4, v5

    goto :goto_0

    .line 159
    .end local v4    # "groupStartDigitIndex":I
    :cond_3
    return-object v1
.end method

.method public getDigitsGroupLength()I
    .locals 1

    .line 164
    iget v0, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    return v0
.end method

.method public getRadix()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->radix:I

    return v0
.end method

.method public toEncoding(Ljava/math/BigInteger;I[S)V
    .locals 4
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "messageLength"    # I
    .param p3, "out"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "number",
            "messageLength",
            "out"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_3

    .line 83
    add-int/lit8 v0, p2, -0x1

    .line 86
    .local v0, "digitIndex":I
    :cond_0
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 88
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "digitIndex":I
    .local v1, "digitIndex":I
    aput-short v2, p3, v0

    .line 89
    move v0, v1

    goto :goto_0

    .line 91
    .end local v1    # "digitIndex":I
    .restart local v0    # "digitIndex":I
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 92
    .local v1, "quotientAndRemainder":[Ljava/math/BigInteger;
    aget-object p1, v1, v2

    .line 93
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, p3}, Lorg/bouncycastle/crypto/util/RadixConverter;->toEncoding(JI[S)I

    move-result v0

    .line 95
    .end local v1    # "quotientAndRemainder":[Ljava/math/BigInteger;
    :goto_0
    if-gez v0, :cond_0

    .line 96
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-nez v1, :cond_2

    .line 100
    return-void

    .line 98
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 79
    .end local v0    # "digitIndex":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
