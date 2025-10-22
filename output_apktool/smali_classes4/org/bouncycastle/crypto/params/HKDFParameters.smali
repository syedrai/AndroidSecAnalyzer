.class public Lorg/bouncycastle/crypto/params/HKDFParameters;
.super Ljava/lang/Object;
.source "HKDFParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private final ikm:[B

.field private final info:[B

.field private final salt:[B

.field private final skipExpand:Z


# direct methods
.method private constructor <init>([BZ[B[B)V
    .locals 2
    .param p1, "ikm"    # [B
    .param p2, "skip"    # Z
    .param p3, "salt"    # [B
    .param p4, "info"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "ikm",
            "skip",
            "salt",
            "info"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-eqz p1, :cond_3

    .line 26
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->ikm:[B

    .line 28
    iput-boolean p2, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExpand:Z

    .line 30
    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->salt:[B

    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->salt:[B

    .line 39
    :goto_1
    if-nez p4, :cond_2

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->info:[B

    goto :goto_2

    .line 45
    :cond_2
    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->info:[B

    .line 47
    :goto_2
    return-void

    .line 22
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IKM (input keying material) should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B[B[B)V
    .locals 1
    .param p1, "ikm"    # [B
    .param p2, "salt"    # [B
    .param p3, "info"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ikm",
            "salt",
            "info"
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    .line 60
    return-void
.end method

.method public static defaultParameters([B)Lorg/bouncycastle/crypto/params/HKDFParameters;
    .locals 3
    .param p0, "ikm"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ikm"
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/bouncycastle/crypto/params/HKDFParameters;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-object v0
.end method

.method public static skipExtractParameters([B[B)Lorg/bouncycastle/crypto/params/HKDFParameters;
    .locals 3
    .param p0, "ikm"    # [B
    .param p1, "info"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ikm",
            "info"
        }
    .end annotation

    .line 75
    new-instance v0, Lorg/bouncycastle/crypto/params/HKDFParameters;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-object v0
.end method


# virtual methods
.method public getIKM()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->ikm:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getInfo()[B
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->info:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->salt:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public skipExtract()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExpand:Z

    return v0
.end method
