.class public Lorg/bouncycastle/crypto/hpke/AEAD;
.super Ljava/lang/Object;
.source "AEAD.java"


# instance fields
.field private final aeadId:S

.field private final baseNonce:[B

.field private cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

.field private final key:[B

.field private seq:J


# direct methods
.method public constructor <init>(S[B[B)V
    .locals 2
    .param p1, "aeadId"    # S
    .param p2, "key"    # [B
    .param p3, "baseNonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "aeadId",
            "key",
            "baseNonce"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    .line 26
    iput-object p2, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->key:[B

    .line 27
    iput-object p3, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->baseNonce:[B

    .line 28
    iput-short p1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->aeadId:S

    .line 29
    iput-wide v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    .line 31
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 38
    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    .line 39
    goto :goto_0

    .line 35
    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    .line 36
    nop

    .line 43
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ComputeNonce()[B
    .locals 7

    .line 134
    iget-wide v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object v0

    .line 135
    .local v0, "seq_bytes":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->baseNonce:[B

    array-length v1, v1

    .line 136
    .local v1, "Nn":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->baseNonce:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    .line 138
    .local v2, "nonce":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 140
    add-int/lit8 v4, v1, -0x8

    add-int/2addr v4, v3

    aget-byte v5, v2, v4

    aget-byte v6, v0, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public open([B[B)[B
    .locals 2
    .param p1, "aad"    # [B
    .param p2, "ct"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aad",
            "ct"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/hpke/AEAD;->open([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public open([B[BII)[B
    .locals 8
    .param p1, "aad"    # [B
    .param p2, "ct"    # [B
    .param p3, "ctOffset"    # I
    .param p4, "ctLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aad",
            "ct",
            "ctOffset",
            "ctLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 92
    if-ltz p3, :cond_1

    array-length v0, p2

    if-gt p3, v0, :cond_1

    .line 96
    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_0

    .line 102
    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->aeadId:S

    packed-switch v0, :pswitch_data_0

    .line 111
    move-object v3, p2

    move v4, p3

    .end local p2    # "ct":[B
    .end local p3    # "ctOffset":I
    .local v3, "ct":[B
    .local v4, "ctOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Export only mode, cannot be used to seal/open"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 107
    .end local v3    # "ct":[B
    .end local v4    # "ctOffset":I
    .restart local p2    # "ct":[B
    .restart local p3    # "ctOffset":I
    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->key:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/hpke/AEAD;->ComputeNonce()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 108
    .local v0, "params":Lorg/bouncycastle/crypto/CipherParameters;
    nop

    .line 114
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/crypto/modes/AEADCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 115
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processAADBytes([BII)V

    .line 117
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v1, p4}, Lorg/bouncycastle/crypto/modes/AEADCipher;->getOutputSize(I)I

    move-result v1

    new-array v6, v1, [B

    .line 118
    .local v6, "pt":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    const/4 v7, 0x0

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "ct":[B
    .end local p3    # "ctOffset":I
    .end local p4    # "ctLength":I
    .restart local v3    # "ct":[B
    .restart local v4    # "ctOffset":I
    .local v5, "ctLength":I
    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processBytes([BII[BI)I

    move-result p2

    .line 119
    .local p2, "len":I
    iget-object p3, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {p3, v6, p2}, Lorg/bouncycastle/crypto/modes/AEADCipher;->doFinal([BI)I

    move-result p3

    add-int/2addr p2, p3

    .line 121
    iget-wide p3, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    const-wide/16 v1, 0x1

    add-long/2addr p3, v1

    iput-wide p3, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    .line 122
    return-object v6

    .line 98
    .end local v0    # "params":Lorg/bouncycastle/crypto/CipherParameters;
    .end local v3    # "ct":[B
    .end local v4    # "ctOffset":I
    .end local v5    # "ctLength":I
    .end local v6    # "pt":[B
    .local p2, "ct":[B
    .restart local p3    # "ctOffset":I
    .restart local p4    # "ctLength":I
    :cond_0
    move-object v3, p2

    move v4, p3

    .end local p2    # "ct":[B
    .end local p3    # "ctOffset":I
    .restart local v3    # "ct":[B
    .restart local v4    # "ctOffset":I
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string p3, "Invalid length"

    invoke-direct {p2, p3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 92
    .end local v3    # "ct":[B
    .end local v4    # "ctOffset":I
    .restart local p2    # "ct":[B
    .restart local p3    # "ctOffset":I
    :cond_1
    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 94
    .end local p2    # "ct":[B
    .end local p3    # "ctOffset":I
    .end local p4    # "ctLength":I
    .restart local v3    # "ct":[B
    .restart local v4    # "ctOffset":I
    .restart local v5    # "ctLength":I
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string p3, "Invalid offset"

    invoke-direct {p2, p3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public seal([B[B)[B
    .locals 2
    .param p1, "aad"    # [B
    .param p2, "pt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aad",
            "pt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/hpke/AEAD;->seal([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public seal([B[BII)[B
    .locals 8
    .param p1, "aad"    # [B
    .param p2, "pt"    # [B
    .param p3, "ptOffset"    # I
    .param p4, "ptLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aad",
            "pt",
            "ptOffset",
            "ptLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 50
    if-ltz p3, :cond_1

    array-length v0, p2

    if-gt p3, v0, :cond_1

    .line 54
    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_0

    .line 60
    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->aeadId:S

    packed-switch v0, :pswitch_data_0

    .line 69
    move-object v3, p2

    move v4, p3

    .end local p2    # "pt":[B
    .end local p3    # "ptOffset":I
    .local v3, "pt":[B
    .local v4, "ptOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Export only mode, cannot be used to seal/open"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 65
    .end local v3    # "pt":[B
    .end local v4    # "ptOffset":I
    .restart local p2    # "pt":[B
    .restart local p3    # "ptOffset":I
    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->key:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/hpke/AEAD;->ComputeNonce()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 66
    .local v0, "params":Lorg/bouncycastle/crypto/CipherParameters;
    nop

    .line 71
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/crypto/modes/AEADCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 72
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processAADBytes([BII)V

    .line 73
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v1, p4}, Lorg/bouncycastle/crypto/modes/AEADCipher;->getOutputSize(I)I

    move-result v1

    new-array v6, v1, [B

    .line 74
    .local v6, "ct":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    const/4 v7, 0x0

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "pt":[B
    .end local p3    # "ptOffset":I
    .end local p4    # "ptLength":I
    .restart local v3    # "pt":[B
    .restart local v4    # "ptOffset":I
    .local v5, "ptLength":I
    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processBytes([BII[BI)I

    move-result p2

    .line 75
    .local p2, "len":I
    iget-object p3, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {p3, v6, p2}, Lorg/bouncycastle/crypto/modes/AEADCipher;->doFinal([BI)I

    .line 77
    iget-wide p3, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    const-wide/16 v1, 0x1

    add-long/2addr p3, v1

    iput-wide p3, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    .line 78
    return-object v6

    .line 56
    .end local v0    # "params":Lorg/bouncycastle/crypto/CipherParameters;
    .end local v3    # "pt":[B
    .end local v4    # "ptOffset":I
    .end local v5    # "ptLength":I
    .end local v6    # "ct":[B
    .local p2, "pt":[B
    .restart local p3    # "ptOffset":I
    .restart local p4    # "ptLength":I
    :cond_0
    move-object v3, p2

    move v4, p3

    .end local p2    # "pt":[B
    .end local p3    # "ptOffset":I
    .restart local v3    # "pt":[B
    .restart local v4    # "ptOffset":I
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string p3, "Invalid length"

    invoke-direct {p2, p3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 50
    .end local v3    # "pt":[B
    .end local v4    # "ptOffset":I
    .restart local p2    # "pt":[B
    .restart local p3    # "ptOffset":I
    :cond_1
    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 52
    .end local p2    # "pt":[B
    .end local p3    # "ptOffset":I
    .end local p4    # "ptLength":I
    .restart local v3    # "pt":[B
    .restart local v4    # "ptOffset":I
    .restart local v5    # "ptLength":I
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string p3, "Invalid offset"

    invoke-direct {p2, p3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
