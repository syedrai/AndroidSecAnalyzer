.class public Lorg/bouncycastle/crypto/commitments/HashCommitter;
.super Ljava/lang/Object;
.source "HashCommitter.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Committer;


# instance fields
.field private final byteLength:I

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/ExtendedDigest;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "digest"    # Lorg/bouncycastle/crypto/ExtendedDigest;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digest",
            "random"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/bouncycastle/crypto/commitments/HashCommitter;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 36
    invoke-interface {p1}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/commitments/HashCommitter;->byteLength:I

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/crypto/commitments/HashCommitter;->random:Ljava/security/SecureRandom;

    .line 38
    return-void
.end method

.method private calculateCommitment([B[B)[B
    .locals 4
    .param p1, "w"    # [B
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "message"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/crypto/commitments/HashCommitter;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 83
    .local v0, "commitment":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/commitments/HashCommitter;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 84
    iget-object v1, p0, Lorg/bouncycastle/crypto/commitments/HashCommitter;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p2

    invoke-interface {v1, p2, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 85
    iget-object v1, p0, Lorg/bouncycastle/crypto/commitments/HashCommitter;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 87
    return-object v0
.end method


# virtual methods
.method public commit([B)Lorg/bouncycastle/crypto/Commitment;
    .locals 3
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 48
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/commitments/HashCommitter;->byteLength:I

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    .line 53
    iget v0, p0, Lorg/bouncycastle/crypto/commitments/HashCommitter;->byteLength:I

    array-length v1, p1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 55
    .local v0, "w":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/commitments/HashCommitter;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 57
    new-instance v1, Lorg/bouncycastle/crypto/Commitment;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/commitments/HashCommitter;->calculateCommitment([B[B)[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/Commitment;-><init>([B[B)V

    return-object v1

    .line 50
    .end local v0    # "w":[B
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Message to be committed to too large for digest."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRevealed(Lorg/bouncycastle/crypto/Commitment;[B)Z
    .locals 2
    .param p1, "commitment"    # Lorg/bouncycastle/crypto/Commitment;
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commitment",
            "message"
        }
    .end annotation

    .line 69
    array-length v0, p2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/Commitment;->getSecret()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/commitments/HashCommitter;->byteLength:I

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/Commitment;->getSecret()[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/commitments/HashCommitter;->calculateCommitment([B[B)[B

    move-result-object v0

    .line 76
    .local v0, "calcCommitment":[B
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/Commitment;->getCommitment()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    return v1

    .line 71
    .end local v0    # "calcCommitment":[B
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Message and witness secret lengths do not match."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
