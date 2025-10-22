.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;
.super Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.source "FrodoMatrixGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Aes128MatrixGenerator"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "q"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;-><init>(II)V

    .line 64
    return-void
.end method


# virtual methods
.method genMatrix([B)[S
    .locals 12
    .param p1, "seedA"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seedA"
        }
    .end annotation

    .line 70
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    mul-int v0, v0, v1

    new-array v0, v0, [S

    .line 71
    .local v0, "A":[S
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 72
    .local v2, "b":[B
    new-array v1, v1, [B

    .line 74
    .local v1, "c":[B
    new-instance v3, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    .line 75
    .local v3, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v5, 0x1

    invoke-interface {v3, v5, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 78
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    if-ge v4, v6, :cond_2

    .line 80
    int-to-short v6, v4

    const/4 v7, 0x0

    invoke-static {v6, v2, v7}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    .line 82
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    if-ge v6, v8, :cond_1

    .line 85
    int-to-short v8, v6

    const/4 v9, 0x2

    invoke-static {v8, v2, v9}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    .line 87
    invoke-interface {v3, v2, v7, v1, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 89
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_2
    const/16 v9, 0x8

    if-ge v8, v9, :cond_0

    .line 92
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    mul-int v9, v9, v4

    add-int/2addr v9, v6

    add-int/2addr v9, v8

    mul-int/lit8 v10, v8, 0x2

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v10

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->q:I

    sub-int/2addr v11, v5

    and-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v0, v9

    .line 89
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 82
    .end local v8    # "k":I
    :cond_0
    add-int/lit8 v6, v6, 0x8

    goto :goto_1

    .line 78
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    .end local v4    # "i":I
    :cond_2
    return-object v0
.end method
