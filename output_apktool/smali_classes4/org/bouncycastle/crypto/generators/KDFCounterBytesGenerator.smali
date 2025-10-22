.class public Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;
.super Ljava/lang/Object;
.source "KDFCounterBytesGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/MacDerivationFunction;


# static fields
.field private static final INTEGER_MAX:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private fixedInputDataCtrPrefix:[B

.field private fixedInputData_afterCtr:[B

.field private generatedBytes:I

.field private final h:I

.field private ios:[B

.field private k:[B

.field private maxSizeExcl:I

.field private final prf:Lorg/bouncycastle/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    .line 44
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Mac;)V
    .locals 1
    .param p1, "prf"    # Lorg/bouncycastle/crypto/Mac;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prf"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    .line 69
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    .line 70
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    .line 71
    return-void
.end method

.method private generateNext()V
    .locals 5

    .line 151
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 154
    .local v0, "i":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v1, v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 169
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported size of counter i"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :pswitch_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    ushr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 160
    :pswitch_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    ushr-int/lit8 v4, v0, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 163
    :pswitch_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 166
    :pswitch_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v4, v0

    aput-byte v4, v1, v3

    .line 167
    nop

    .line 174
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputDataCtrPrefix:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputDataCtrPrefix:[B

    array-length v4, v4

    invoke-interface {v1, v3, v2, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 175
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v4, v4

    invoke-interface {v1, v3, v2, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 176
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputData_afterCtr:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputData_afterCtr:[B

    array-length v4, v4

    invoke-interface {v1, v3, v2, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 177
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    invoke-interface {v1, v3, v2}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 178
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 114
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    add-int/2addr v0, p3

    .line 115
    .local v0, "generatedBytesAfter":I
    if-ltz v0, :cond_2

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->maxSizeExcl:I

    if-ge v0, v1, :cond_2

    .line 121
    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 123
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generateNext()V

    .line 127
    :cond_0
    move v1, p3

    .line 128
    .local v1, "toGenerate":I
    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    iget v3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    rem-int/2addr v2, v3

    .line 129
    .local v2, "posInK":I
    iget v3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    iget v4, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    iget v5, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    rem-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 130
    .local v3, "leftInK":I
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 131
    .local v4, "toCopy":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    invoke-static {v5, v2, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget v5, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    .line 133
    sub-int/2addr v1, v4

    .line 134
    add-int/2addr p2, v4

    .line 136
    :goto_0
    if-lez v1, :cond_1

    .line 138
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generateNext()V

    .line 139
    iget v5, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 140
    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget v5, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    .line 142
    sub-int/2addr v1, v4

    .line 143
    add-int/2addr p2, v4

    goto :goto_0

    .line 146
    :cond_1
    return p3

    .line 117
    .end local v1    # "toGenerate":I
    .end local v2    # "posInK":I
    .end local v3    # "leftInK":I
    .end local v4    # "toCopy":I
    :cond_2
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->maxSizeExcl:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current KDFCTR may only be used for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMac()Lorg/bouncycastle/crypto/Mac;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 5
    .param p1, "param"    # Lorg/bouncycastle/crypto/DerivationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 76
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KDFCounterParameters;

    if-eqz v0, :cond_1

    .line 81
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;

    .line 85
    .local v0, "kdfParams":Lorg/bouncycastle/crypto/params/KDFCounterParameters;
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->getKI()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 89
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->getFixedInputDataCounterPrefix()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputDataCtrPrefix:[B

    .line 90
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->getFixedInputDataCounterSuffix()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputData_afterCtr:[B

    .line 92
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->getR()I

    move-result v1

    .line 93
    .local v1, "r":I
    div-int/lit8 v2, v1, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    .line 95
    sget-object v2, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 96
    .local v2, "maxSize":Ljava/math/BigInteger;
    sget-object v3, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 97
    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    :goto_0
    iput v3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->maxSizeExcl:I

    .line 101
    const/4 v3, 0x0

    iput v3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    .line 102
    return-void

    .line 78
    .end local v0    # "kdfParams":Lorg/bouncycastle/crypto/params/KDFCounterParameters;
    .end local v1    # "r":I
    .end local v2    # "maxSize":Ljava/math/BigInteger;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong type of arguments given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
