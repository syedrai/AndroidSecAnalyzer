.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;
.super Ljava/lang/Object;
.source "Ntt.java"


# static fields
.field public static final nttZetas:[S

.field public static final nttZetasInv:[S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    const/16 v0, 0x80

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->nttZetas:[S

    .line 18
    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->nttZetasInv:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x8eds
        0xa0bs
        0xb9as
        0x714s
        0x5d5s
        0x58es
        0x11fs
        0xcas
        0xc56s
        0x26es
        0x629s
        0xb6s
        0x3c2s
        0x84fs
        0x73fs
        0x5bcs
        0x23ds
        0x7d4s
        0x108s
        0x17fs
        0x9c4s
        0x5b2s
        0x6bfs
        0xc7fs
        0xa58s
        0x3f9s
        0x2dcs
        0x260s
        0x6fbs
        0x19bs
        0xc34s
        0x6des
        0x4c7s
        0x28cs
        0xad9s
        0x3f7s
        0x7f4s
        0x5d3s
        0xbe7s
        0x6f9s
        0x204s
        0xcf9s
        0xbc1s
        0xa67s
        0x6afs
        0x877s
        0x7es
        0x5bds
        0x9acs
        0xca7s
        0xbf2s
        0x33es
        0x6bs
        0x774s
        0xc0as
        0x94as
        0xb73s
        0x3c1s
        0x71ds
        0xa2cs
        0x1c0s
        0x8d8s
        0x2a5s
        0x806s
        0x8b2s
        0x1aes
        0x22bs
        0x34bs
        0x81es
        0x367s
        0x60es
        0x69s
        0x1a6s
        0x24bs
        0xb1s
        0xc16s
        0xbdes
        0xb35s
        0x626s
        0x675s
        0xc0bs
        0x30as
        0x487s
        0xc6es
        0x9f8s
        0x5cbs
        0xaa7s
        0x45fs
        0x6cbs
        0x284s
        0x999s
        0x15ds
        0x1a2s
        0x149s
        0xc65s
        0xcb6s
        0x331s
        0x449s
        0x25bs
        0x262s
        0x52as
        0x7fcs
        0x748s
        0x180s
        0x842s
        0xc79s
        0x4c2s
        0x7cas
        0x997s
        0xdcs
        0x85es
        0x686s
        0x860s
        0x707s
        0x803s
        0x31as
        0x71bs
        0x9abs
        0x99bs
        0x1des
        0xc95s
        0xbcds
        0x3e4s
        0x3dfs
        0x3bes
        0x74ds
        0x5f2s
        0x65cs
    .end array-data

    :array_1
    .array-data 2
        0x6a5s
        0x70fs
        0x5b4s
        0x943s
        0x922s
        0x91ds
        0x134s
        0x6cs
        0xb23s
        0x366s
        0x356s
        0x5e6s
        0x9e7s
        0x4fes
        0x5fas
        0x4a1s
        0x67bs
        0x4a3s
        0xc25s
        0x36as
        0x537s
        0x83fs
        0x88s
        0x4bfs
        0xb81s
        0x5b9s
        0x505s
        0x7d7s
        0xa9fs
        0xaa6s
        0x8b8s
        0x9d0s
        0x4bs
        0x9cs
        0xbb8s
        0xb5fs
        0xba4s
        0x368s
        0xa7ds
        0x636s
        0x8a2s
        0x25as
        0x736s
        0x309s
        0x93s
        0x87as
        0x9f7s
        0xf6s
        0x68cs
        0x6dbs
        0x1ccs
        0x123s
        0xebs
        0xc50s
        0xab6s
        0xb5bs
        0xc98s
        0x6f3s
        0x99as
        0x4e3s
        0x9b6s
        0xad6s
        0xb53s
        0x44fs
        0x4fbs
        0xa5cs
        0x429s
        0xb41s
        0x2d5s
        0x5e4s
        0x940s
        0x18es
        0x3b7s
        0xf7s
        0x58ds
        0xc96s
        0x9c3s
        0x10fs
        0x5as
        0x355s
        0x744s
        0xc83s
        0x48as
        0x652s
        0x29as
        0x140s
        0x8s
        0xafds
        0x608s
        0x11as
        0x72es
        0x50ds
        0x90as
        0x228s
        0xa75s
        0x83as
        0x623s
        0xcds
        0xb66s
        0x606s
        0xaa1s
        0xa25s
        0x908s
        0x2a9s
        0x82s
        0x642s
        0x74fs
        0x33ds
        0xb82s
        0xbf9s
        0x52ds
        0xac4s
        0x745s
        0x5c2s
        0x4b2s
        0x93fs
        0xc4bs
        0x6d8s
        0xa93s
        0xabs
        0xc37s
        0xbe2s
        0x773s
        0x72cs
        0x5eds
        0x167s
        0x2f6s
        0x5a1s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baseMult(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;ISSSSS)V
    .locals 3
    .param p0, "outPoly"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .param p1, "outIndex"    # I
    .param p2, "a0"    # S
    .param p3, "a1"    # S
    .param p4, "b0"    # S
    .param p5, "b1"    # S
    .param p6, "zeta"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outPoly",
            "outIndex",
            "a0",
            "a1",
            "b0",
            "b1",
            "zeta"
        }
    .end annotation

    .line 91
    invoke-static {p3, p5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->factorQMulMont(SS)S

    move-result v0

    .line 92
    .local v0, "outVal0":S
    invoke-static {v0, p6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->factorQMulMont(SS)S

    move-result v0

    .line 93
    invoke-static {p2, p4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->factorQMulMont(SS)S

    move-result v1

    add-int/2addr v1, v0

    int-to-short v0, v1

    .line 94
    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 96
    invoke-static {p2, p5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->factorQMulMont(SS)S

    move-result v1

    .line 97
    .local v1, "outVal1":S
    invoke-static {p3, p4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->factorQMulMont(SS)S

    move-result v2

    add-int/2addr v2, v1

    int-to-short v1, v2

    .line 98
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 99
    return-void
.end method

.method public static factorQMulMont(SS)S
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S
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

    .line 86
    mul-int v0, p0, p1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Reduce;->montgomeryReduce(I)S

    move-result v0

    return v0
.end method

.method public static invNtt([S)[S
    .locals 10
    .param p0, "inp"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inp"
        }
    .end annotation

    .line 56
    const/16 v0, 0x100

    new-array v1, v0, [S

    .line 57
    .local v1, "r":[S
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, "k":I
    const/4 v3, 0x2

    .local v3, "len":I
    :goto_0
    const/16 v4, 0x80

    if-gt v3, v4, :cond_2

    .line 63
    const/4 v4, 0x0

    .local v4, "start":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 65
    sget-object v5, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->nttZetasInv:[S

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .local v6, "k":I
    aget-short v2, v5, v2

    .line 66
    .local v2, "zeta":S
    move v5, v4

    .local v5, "j":I
    :goto_2
    add-int v7, v4, v3

    if-ge v5, v7, :cond_0

    .line 68
    aget-short v7, v1, v5

    .line 69
    .local v7, "t":S
    add-int v8, v5, v3

    aget-short v8, v1, v8

    add-int/2addr v8, v7

    int-to-short v8, v8

    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Reduce;->barretReduce(S)S

    move-result v8

    aput-short v8, v1, v5

    .line 70
    add-int v8, v5, v3

    add-int v9, v5, v3

    aget-short v9, v1, v9

    sub-int v9, v7, v9

    int-to-short v9, v9

    aput-short v9, v1, v8

    .line 71
    add-int v8, v5, v3

    add-int v9, v5, v3

    aget-short v9, v1, v9

    invoke-static {v2, v9}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->factorQMulMont(SS)S

    move-result v9

    aput-short v9, v1, v8

    .line 66
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 63
    .end local v7    # "t":S
    :cond_0
    add-int v4, v5, v3

    move v2, v6

    goto :goto_1

    .line 61
    .end local v5    # "j":I
    .end local v6    # "k":I
    .local v2, "k":I
    :cond_1
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v4    # "start":I
    :cond_2
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v0, :cond_3

    .line 79
    aget-short v5, v1, v4

    sget-object v6, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->nttZetasInv:[S

    const/16 v7, 0x7f

    aget-short v6, v6, v7

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->factorQMulMont(SS)S

    move-result v5

    aput-short v5, v1, v4

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 81
    :cond_3
    return-object v1
.end method

.method public static ntt([S)[S
    .locals 10
    .param p0, "inp"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inp"
        }
    .end annotation

    .line 32
    const/16 v0, 0x100

    new-array v1, v0, [S

    .line 33
    .local v1, "r":[S
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    const/4 v2, 0x1

    .line 38
    .local v2, "k":I
    const/16 v3, 0x80

    .local v3, "len":I
    :goto_0
    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 40
    const/4 v4, 0x0

    .local v4, "start":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 42
    sget-object v5, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->nttZetas:[S

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .local v6, "k":I
    aget-short v2, v5, v2

    .line 43
    .local v2, "zeta":S
    move v5, v4

    .local v5, "j":I
    :goto_2
    add-int v7, v4, v3

    if-ge v5, v7, :cond_0

    .line 45
    add-int v7, v5, v3

    aget-short v7, v1, v7

    invoke-static {v2, v7}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->factorQMulMont(SS)S

    move-result v7

    .line 46
    .local v7, "t":S
    add-int v8, v5, v3

    aget-short v9, v1, v5

    sub-int/2addr v9, v7

    int-to-short v9, v9

    aput-short v9, v1, v8

    .line 47
    aget-short v8, v1, v5

    add-int/2addr v8, v7

    int-to-short v8, v8

    aput-short v8, v1, v5

    .line 43
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 40
    .end local v7    # "t":S
    :cond_0
    add-int v4, v5, v3

    move v2, v6

    goto :goto_1

    .line 38
    .end local v5    # "j":I
    .end local v6    # "k":I
    .local v2, "k":I
    :cond_1
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    .end local v4    # "start":I
    :cond_2
    return-object v1
.end method
