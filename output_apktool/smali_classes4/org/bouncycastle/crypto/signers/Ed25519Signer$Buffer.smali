.class final Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;
.super Ljava/io/ByteArrayOutputStream;
.source "Ed25519Signer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/signers/Ed25519Signer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Buffer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/signers/Ed25519Signer-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized generateSignature(Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;)[B
    .locals 9
    .param p1, "privateKey"    # Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    monitor-enter p0

    .line 89
    const/16 v0, 0x40

    :try_start_0
    new-array v0, v0, [B

    move-object v7, v0

    .line 90
    .local v7, "signature":[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->buf:[B

    iget v6, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->count:I

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .end local p1    # "privateKey":Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;
    .local v1, "privateKey":Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;
    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->sign(I[B[BII[BI)V

    .line 91
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-object v7

    .line 88
    .end local v1    # "privateKey":Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;
    .end local v7    # "signature":[B
    .end local p0    # "this":Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 111
    iput v2, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 109
    .end local p0    # "this":Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized verifySignature(Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;[B)Z
    .locals 8
    .param p1, "publicKey"    # Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "signature"
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_0
    array-length v0, p2

    const/16 v1, 0x40

    if-eq v1, v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 103
    .end local p0    # "this":Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->count:I

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v6, p2

    .end local p1    # "publicKey":Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
    .end local p2    # "signature":[B
    .local v0, "publicKey":Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
    .local v6, "signature":[B
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->verify(I[B[BII[BI)Z

    move-result p1

    .line 104
    .local p1, "result":Z
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit p0

    return p1

    .line 96
    .end local v0    # "publicKey":Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
    .end local v6    # "signature":[B
    .end local p1    # "result":Z
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
