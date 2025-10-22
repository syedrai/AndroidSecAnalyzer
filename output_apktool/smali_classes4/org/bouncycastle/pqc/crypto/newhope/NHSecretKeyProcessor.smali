.class public Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;
.super Ljava/lang/Object;
.source "NHSecretKeyProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor$PartyVBuilder;,
        Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor$PartyUBuilder;
    }
.end annotation


# instance fields
.field private final xof:Lorg/bouncycastle/crypto/Xof;


# direct methods
.method private constructor <init>([B[B)V
    .locals 3
    .param p1, "secret"    # [B
    .param p2, "shared"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "secret",
            "shared"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;->xof:Lorg/bouncycastle/crypto/Xof;

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;->xof:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 118
    if-eqz p2, :cond_0

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;->xof:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p2

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 123
    :cond_0
    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 124
    return-void
.end method

.method synthetic constructor <init>([B[BLorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;-><init>([B[B)V

    return-void
.end method

.method private static xor([B[B)V
    .locals 3
    .param p0, "a"    # [B
    .param p1, "b"    # [B
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

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-eq v0, v1, :cond_0

    .line 143
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public processKey([B)[B
    .locals 4
    .param p1, "initialKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialKey"
        }
    .end annotation

    .line 128
    array-length v0, p1

    new-array v0, v0, [B

    .line 130
    .local v0, "xorBytes":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;->xof:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 132
    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/newhope/NHSecretKeyProcessor;->xor([B[B)V

    .line 134
    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 136
    return-object p1
.end method
