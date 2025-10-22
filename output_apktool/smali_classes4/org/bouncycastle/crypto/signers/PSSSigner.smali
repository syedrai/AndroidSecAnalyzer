.class public Lorg/bouncycastle/crypto/signers/PSSSigner;
.super Ljava/lang/Object;
.source "PSSSigner.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# static fields
.field public static final TRAILER_IMPLICIT:B = -0x44t


# instance fields
.field private block:[B

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private contentDigest1:Lorg/bouncycastle/crypto/Digest;

.field private contentDigest2:Lorg/bouncycastle/crypto/Digest;

.field private emBits:I

.field private hLen:I

.field private mDash:[B

.field private mgfDigest:Lorg/bouncycastle/crypto/Digest;

.field private mgfhLen:I

.field private random:Ljava/security/SecureRandom;

.field private sLen:I

.field private sSet:Z

.field private salt:[B

.field private trailer:B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "sLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "digest",
            "sLen"
        }
    .end annotation

    .line 76
    const/16 v0, -0x44

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IB)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IB)V
    .locals 6
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "sLen"    # I
    .param p4, "trailer"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "digest",
            "sLen",
            "trailer"
        }
    .end annotation

    .line 94
    move-object v3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p1    # "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .end local p2    # "digest":Lorg/bouncycastle/crypto/Digest;
    .end local p3    # "sLen":I
    .end local p4    # "trailer":B
    .local v1, "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .local v2, "digest":Lorg/bouncycastle/crypto/Digest;
    .local v4, "sLen":I
    .local v5, "trailer":B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V
    .locals 6
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "contentDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "mgfDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p4, "sLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "contentDigest",
            "mgfDigest",
            "sLen"
        }
    .end annotation

    .line 85
    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .end local p2    # "contentDigest":Lorg/bouncycastle/crypto/Digest;
    .end local p3    # "mgfDigest":Lorg/bouncycastle/crypto/Digest;
    .end local p4    # "sLen":I
    .local v1, "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .local v2, "contentDigest":Lorg/bouncycastle/crypto/Digest;
    .local v3, "mgfDigest":Lorg/bouncycastle/crypto/Digest;
    .local v4, "sLen":I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V
    .locals 7
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "contentDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "mgfDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p4, "sLen"    # I
    .param p5, "trailer"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "contentDigest",
            "mgfDigest",
            "sLen",
            "trailer"
        }
    .end annotation

    .line 104
    move-object v3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .end local p2    # "contentDigest":Lorg/bouncycastle/crypto/Digest;
    .end local p3    # "mgfDigest":Lorg/bouncycastle/crypto/Digest;
    .end local p4    # "sLen":I
    .end local p5    # "trailer":B
    .local v1, "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .local v2, "contentDigest":Lorg/bouncycastle/crypto/Digest;
    .local v4, "mgfDigest":Lorg/bouncycastle/crypto/Digest;
    .local v5, "sLen":I
    .local v6, "trailer":B
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V

    .line 105
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V
    .locals 2
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "contentDigest1"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "contentDigest2"    # Lorg/bouncycastle/crypto/Digest;
    .param p4, "mgfDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p5, "sLen"    # I
    .param p6, "trailer"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "contentDigest1",
            "contentDigest2",
            "mgfDigest",
            "sLen",
            "trailer"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 116
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest1:Lorg/bouncycastle/crypto/Digest;

    .line 117
    iput-object p3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest2:Lorg/bouncycastle/crypto/Digest;

    .line 118
    iput-object p4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    .line 119
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    .line 120
    invoke-interface {p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sSet:Z

    .line 122
    iput p5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    .line 123
    new-array v0, p5, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    .line 124
    add-int/lit8 v0, p5, 0x8

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    .line 125
    iput-byte p6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    .line 126
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)V
    .locals 2
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "contentDigest1"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "contentDigest2"    # Lorg/bouncycastle/crypto/Digest;
    .param p4, "mgfDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p5, "salt"    # [B
    .param p6, "trailer"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "contentDigest1",
            "contentDigest2",
            "mgfDigest",
            "salt",
            "trailer"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 164
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest1:Lorg/bouncycastle/crypto/Digest;

    .line 165
    iput-object p3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest2:Lorg/bouncycastle/crypto/Digest;

    .line 166
    iput-object p4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    .line 167
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    .line 168
    invoke-interface {p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sSet:Z

    .line 170
    array-length v0, p5

    iput v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    .line 171
    iput-object p5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    .line 172
    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    .line 173
    iput-byte p6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 6
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "contentDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "mgfDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p4, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "contentDigest",
            "mgfDigest",
            "salt"
        }
    .end annotation

    .line 142
    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .end local p2    # "contentDigest":Lorg/bouncycastle/crypto/Digest;
    .end local p3    # "mgfDigest":Lorg/bouncycastle/crypto/Digest;
    .end local p4    # "salt":[B
    .local v1, "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .local v2, "contentDigest":Lorg/bouncycastle/crypto/Digest;
    .local v3, "mgfDigest":Lorg/bouncycastle/crypto/Digest;
    .local v4, "salt":[B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)V
    .locals 7
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "contentDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "mgfDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p4, "salt"    # [B
    .param p5, "trailer"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "contentDigest",
            "mgfDigest",
            "salt",
            "trailer"
        }
    .end annotation

    .line 152
    move-object v3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .end local p2    # "contentDigest":Lorg/bouncycastle/crypto/Digest;
    .end local p3    # "mgfDigest":Lorg/bouncycastle/crypto/Digest;
    .end local p4    # "salt":[B
    .end local p5    # "trailer":B
    .local v1, "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .local v2, "contentDigest":Lorg/bouncycastle/crypto/Digest;
    .local v4, "mgfDigest":Lorg/bouncycastle/crypto/Digest;
    .local v5, "salt":[B
    .local v6, "trailer":B
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)V

    .line 153
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 6
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "digest",
            "salt"
        }
    .end annotation

    .line 133
    const/16 v5, -0x44

    move-object v3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .end local p1    # "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .end local p2    # "digest":Lorg/bouncycastle/crypto/Digest;
    .end local p3    # "salt":[B
    .local v1, "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .local v2, "digest":Lorg/bouncycastle/crypto/Digest;
    .local v4, "salt":[B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)V

    .line 134
    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "sp"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "sp"
        }
    .end annotation

    .line 412
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    .line 413
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 414
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 415
    ushr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 416
    return-void
.end method

.method private clearBlock([B)V
    .locals 2
    .param p1, "block"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "block"
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 233
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static createRawSigner(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/signers/PSSSigner;
    .locals 7
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "digest"
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/bouncycastle/crypto/signers/PSSSigner;

    invoke-static {p1}, Lorg/bouncycastle/crypto/digests/Prehash;->forDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/digests/Prehash;

    move-result-object v2

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    const/16 v6, -0x44

    move-object v4, p1

    move-object v1, p0

    move-object v3, p1

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .end local p1    # "digest":Lorg/bouncycastle/crypto/Digest;
    .local v1, "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .local v3, "digest":Lorg/bouncycastle/crypto/Digest;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V

    return-object v0
.end method

.method public static createRawSigner(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)Lorg/bouncycastle/crypto/signers/PSSSigner;
    .locals 7
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p1, "contentDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "mgfDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "sLen"    # I
    .param p4, "trailer"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "contentDigest",
            "mgfDigest",
            "sLen",
            "trailer"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/bouncycastle/crypto/signers/PSSSigner;

    invoke-static {p1}, Lorg/bouncycastle/crypto/digests/Prehash;->forDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/digests/Prehash;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .end local p1    # "contentDigest":Lorg/bouncycastle/crypto/Digest;
    .end local p2    # "mgfDigest":Lorg/bouncycastle/crypto/Digest;
    .end local p3    # "sLen":I
    .end local p4    # "trailer":B
    .local v1, "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .local v3, "contentDigest":Lorg/bouncycastle/crypto/Digest;
    .local v4, "mgfDigest":Lorg/bouncycastle/crypto/Digest;
    .local v5, "sLen":I
    .local v6, "trailer":B
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V

    return-object v0
.end method

.method public static createRawSigner(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)Lorg/bouncycastle/crypto/signers/PSSSigner;
    .locals 7
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p1, "contentDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "mgfDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "salt"    # [B
    .param p4, "trailer"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "contentDigest",
            "mgfDigest",
            "salt",
            "trailer"
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/bouncycastle/crypto/signers/PSSSigner;

    invoke-static {p1}, Lorg/bouncycastle/crypto/digests/Prehash;->forDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/digests/Prehash;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .end local p1    # "contentDigest":Lorg/bouncycastle/crypto/Digest;
    .end local p2    # "mgfDigest":Lorg/bouncycastle/crypto/Digest;
    .end local p3    # "salt":[B
    .end local p4    # "trailer":B
    .local v1, "cipher":Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .local v3, "contentDigest":Lorg/bouncycastle/crypto/Digest;
    .local v4, "mgfDigest":Lorg/bouncycastle/crypto/Digest;
    .local v5, "salt":[B
    .local v6, "trailer":B
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)V

    return-object v0
.end method

.method private maskGenerator([BIII)[B
    .locals 4
    .param p1, "Z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "Z",
            "zOff",
            "zLen",
            "length"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    instance-of v0, v0, Lorg/bouncycastle/crypto/Xof;

    if-eqz v0, :cond_0

    .line 426
    new-array v0, p4, [B

    .line 427
    .local v0, "mask":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 428
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    check-cast v1, Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 430
    return-object v0

    .line 434
    .end local v0    # "mask":[B
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 8
    .param p1, "Z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "Z",
            "zOff",
            "zLen",
            "length"
        }
    .end annotation

    .line 447
    new-array v0, p4, [B

    .line 448
    .local v0, "mask":[B
    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    new-array v1, v1, [B

    .line 449
    .local v1, "hashBuf":[B
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 450
    .local v2, "C":[B
    const/4 v3, 0x0

    .line 452
    .local v3, "counter":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 454
    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    div-int v4, p4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 456
    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    .line 458
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 459
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v4, v2, v5, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 460
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 462
    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int v4, v4, v3

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    invoke-static {v1, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 467
    :cond_0
    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int v4, v4, v3

    if-ge v4, p4, :cond_1

    .line 469
    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    .line 471
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 472
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v4, v2, v5, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 473
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 475
    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int v4, v4, v3

    array-length v6, v0

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int v7, v7, v3

    sub-int/2addr v6, v7

    invoke-static {v1, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    :cond_1
    return-object v0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest1:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    if-ne v0, v1, :cond_3

    .line 277
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest1:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v2, v2

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 279
    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 281
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sSet:Z

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    new-array v0, v0, [B

    .line 291
    .local v0, "h":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest2:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v4, v4

    invoke-interface {v2, v3, v1, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 293
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest2:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 295
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v4

    aput-byte v4, v2, v3

    .line 296
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v2, v1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    array-length v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/signers/PSSSigner;->maskGenerator([BIII)[B

    move-result-object v2

    .line 299
    .local v2, "dbMask":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-eq v3, v5, :cond_2

    .line 301
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v6, v5, v3

    aget-byte v7, v2, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 299
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    invoke-static {v0, v1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x8

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v3, v5

    const/16 v5, 0xff

    ushr-int v3, v5, v3

    .line 308
    .local v3, "firstByteMask":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v6, v5, v1

    and-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 309
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    sub-int/2addr v6, v4

    iget-byte v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    aput-byte v4, v5, v6

    .line 311
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    invoke-interface {v4, v5, v1, v6}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 313
    .local v1, "b":[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 315
    return-object v1

    .line 274
    .end local v0    # "h":[B
    .end local v1    # "b":[B
    .end local v2    # "dbMask":[B
    .end local v3    # "firstByteMask":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forSigning",
            "param"
        }
    .end annotation

    .line 182
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 184
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 186
    .local v0, "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .line 187
    .local v1, "params":Lorg/bouncycastle/crypto/CipherParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    .line 188
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 191
    .end local v1    # "params":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    move-object v1, p2

    .line 192
    .restart local v1    # "params":Lorg/bouncycastle/crypto/CipherParameters;
    if-eqz p1, :cond_1

    .line 194
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    .line 200
    :cond_1
    :goto_0
    instance-of v0, v1, Lorg/bouncycastle/crypto/params/RSABlindingParameters;

    if-eqz v0, :cond_2

    .line 202
    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/RSABlindingParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSABlindingParameters;->getPublicKey()Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 204
    .local v0, "kParam":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 208
    .end local v0    # "kParam":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    :cond_2
    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 210
    .restart local v0    # "kParam":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 213
    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    .line 215
    iget v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/lit8 v3, v3, 0x8

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x9

    if-lt v2, v3, :cond_3

    .line 220
    iget v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    .line 222
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->reset()V

    .line 223
    return-void

    .line 217
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "key too small for specified hash and salt lengths"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public reset()V
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest1:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 263
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest1:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 244
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "off",
            "len"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest1:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 255
    return-void
.end method

.method public verifySignature([B)Z
    .locals 9
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest1:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    if-ne v0, v1, :cond_9

    .line 330
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest1:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v2, v2

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 334
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 335
    .local v1, "b":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    invoke-static {v2, v0, v3, v0}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 336
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    array-length v4, v1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1    # "b":[B
    nop

    .line 343
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v1, v2

    const/16 v2, 0xff

    ushr-int v1, v2, v1

    .line 345
    .local v1, "firstByteMask":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v3, v3, v0

    and-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v3, v3, v0

    and-int/2addr v3, v1

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-byte v2, v2, v3

    iget-byte v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    if-eq v2, v3, :cond_0

    goto/16 :goto_4

    .line 352
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v4

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    invoke-direct {p0, v2, v3, v5, v6}, Lorg/bouncycastle/crypto/signers/PSSSigner;->maskGenerator([BIII)[B

    move-result-object v2

    .line 354
    .local v2, "dbMask":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-eq v3, v5, :cond_1

    .line 356
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v6, v5, v3

    aget-byte v7, v2, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v3, v0

    and-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 361
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    if-eq v3, v5, :cond_3

    .line 363
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v5, v3

    if-eqz v5, :cond_2

    .line 365
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 366
    return v0

    .line 361
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 370
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    aget-byte v3, v3, v5

    if-eq v3, v4, :cond_4

    .line 372
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 373
    return v0

    .line 376
    :cond_4
    iget-boolean v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sSet:Z

    if-eqz v3, :cond_5

    .line 378
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v3, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 382
    :cond_5
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v7, v7

    iget v8, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v7, v8

    iget v8, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v3, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest2:Lorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    invoke-interface {v3, v5, v0, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 386
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest2:Lorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    iget v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    invoke-interface {v3, v5, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 388
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v4

    .restart local v3    # "i":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    .line 389
    .local v5, "j":I
    :goto_3
    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    if-eq v5, v6, :cond_7

    .line 391
    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v6, v6, v3

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    aget-byte v7, v7, v5

    xor-int/2addr v6, v7

    if-eqz v6, :cond_6

    .line 393
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 394
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 395
    return v0

    .line 389
    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 399
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 400
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 402
    return v4

    .line 348
    .end local v2    # "dbMask":[B
    :cond_8
    :goto_4
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 349
    return v0

    .line 338
    .end local v1    # "firstByteMask":I
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    return v0

    .line 327
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
