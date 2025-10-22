.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;
.super Ljava/lang/Object;
.source "SIG.java"


# instance fields
.field private final r:[B

.field private final sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

.field private final sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;


# direct methods
.method public constructor <init>(IIIIII[B)V
    .locals 7
    .param p1, "n"    # I
    .param p2, "k"    # I
    .param p3, "a"    # I
    .param p4, "d"    # I
    .param p5, "hPrime"    # I
    .param p6, "wots_len"    # I
    .param p7, "signature"    # [B
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
            "n",
            "k",
            "a",
            "d",
            "hPrime",
            "wots_len",
            "signature"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->r:[B

    .line 12
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->r:[B

    const/4 v1, 0x0

    invoke-static {p7, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    new-array v0, p2, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    .line 15
    move v0, p1

    .line 16
    .local v0, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eq v2, p2, :cond_1

    .line 18
    new-array v3, p1, [B

    .line 19
    .local v3, "sk":[B
    invoke-static {p7, v0, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    add-int/2addr v0, p1

    .line 21
    new-array v4, p3, [[B

    .line 22
    .local v4, "authPath":[[B
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-eq v5, p3, :cond_0

    .line 24
    new-array v6, p1, [B

    aput-object v6, v4, v5

    .line 25
    aget-object v6, v4, v5

    invoke-static {p7, v0, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    add-int/2addr v0, p1

    .line 22
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 28
    .end local v5    # "j":I
    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    invoke-direct {v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;-><init>([B[[B)V

    aput-object v6, v5, v2

    .line 16
    .end local v3    # "sk":[B
    .end local v4    # "authPath":[[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    .end local v2    # "i":I
    :cond_1
    new-array v2, p4, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    .line 32
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-eq v2, p4, :cond_3

    .line 34
    mul-int v3, p6, p1

    new-array v3, v3, [B

    .line 35
    .local v3, "sig":[B
    array-length v4, v3

    invoke-static {p7, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    array-length v4, v3

    add-int/2addr v0, v4

    .line 37
    new-array v4, p5, [[B

    .line 38
    .restart local v4    # "authPath":[[B
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    if-eq v5, p5, :cond_2

    .line 40
    new-array v6, p1, [B

    aput-object v6, v4, v5

    .line 41
    aget-object v6, v4, v5

    invoke-static {p7, v0, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    add-int/2addr v0, p1

    .line 38
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 44
    .end local v5    # "j":I
    :cond_2
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    invoke-direct {v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;-><init>([B[[B)V

    aput-object v6, v5, v2

    .line 32
    .end local v3    # "sig":[B
    .end local v4    # "authPath":[[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 46
    .end local v2    # "i":I
    :cond_3
    array-length v1, p7

    if-ne v0, v1, :cond_4

    .line 50
    return-void

    .line 48
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "signature wrong length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getR()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->r:[B

    return-object v0
.end method

.method public getSIG_FORS()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    return-object v0
.end method

.method public getSIG_HT()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    return-object v0
.end method
