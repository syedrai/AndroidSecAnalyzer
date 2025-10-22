.class abstract Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;
.super Ljava/lang/Object;
.source "LowmcConstants.java"


# instance fields
.field protected KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected keyMatrices:[I

.field protected keyMatrices_full:[I

.field protected keyMatrices_inv:[I

.field protected linearMatrices:[I

.field protected linearMatrices_full:[I

.field protected linearMatrices_inv:[I

.field protected roundConstants:[I

.field protected roundConstants_full:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2
    .param p1, "m"    # Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;
    .param p2, "r"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "r"
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;)V

    .line 77
    .local v0, "mwp":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getSize()I

    move-result v1

    mul-int v1, v1, p2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->setMatrixPointer(I)V

    .line 78
    return-object v0
.end method

.method static ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I
    .locals 5
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "intSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "props",
            "key",
            "intSize"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->removeCommas(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decode([B)[B

    move-result-object v1

    .line 48
    .local v1, "bytes":[B
    new-array v2, p2, [I

    .line 49
    .local v2, "ints":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    div-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_0

    .line 51
    mul-int/lit8 v4, v3, 0x4

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method static readArray(Ljava/io/DataInputStream;)[I
    .locals 3
    .param p0, "dIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dIn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [I

    .line 37
    .local v0, "rv":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    aput v2, v0, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static removeCommas(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    .line 63
    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 59
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    .param p2, "round"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engine",
            "round"
        }
    .end annotation

    .line 143
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 151
    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    .line 153
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 155
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 159
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 162
    :cond_3
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    .line 164
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 166
    :cond_4
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_5

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 172
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method protected KMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 3
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "round":I
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v2, 0x81

    if-ne v1, v2, :cond_0

    .line 182
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v1

    return-object v1

    .line 184
    :cond_0
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 186
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v1

    return-object v1

    .line 188
    :cond_1
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    .line 190
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v1

    return-object v1

    .line 194
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    .param p2, "round"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engine",
            "round"
        }
    .end annotation

    .line 86
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    .line 96
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 102
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 105
    :cond_3
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 109
    :cond_4
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_5

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 115
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method protected LMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    .param p2, "round"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engine",
            "round"
        }
    .end annotation

    .line 122
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 130
    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 136
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    .param p2, "round"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engine",
            "round"
        }
    .end annotation

    .line 202
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 210
    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    .line 212
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 214
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 218
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 221
    :cond_3
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    .line 223
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 225
    :cond_4
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_5

    .line 227
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    return-object v0

    .line 231
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method
