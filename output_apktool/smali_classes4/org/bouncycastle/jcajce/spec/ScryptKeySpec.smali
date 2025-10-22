.class public Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;
.super Ljava/lang/Object;
.source "ScryptKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final blockSize:I

.field private final costParameter:I

.field private final keySize:I

.field private final parallelizationParameter:I

.field private final password:[C

.field private final salt:[B


# direct methods
.method public constructor <init>([C[BIIII)V
    .locals 1
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "costParameter"    # I
    .param p4, "blockSize"    # I
    .param p5, "parallelizationParameter"    # I
    .param p6, "keySize"    # I
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
            "password",
            "salt",
            "costParameter",
            "blockSize",
            "parallelizationParameter",
            "keySize"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->password:[C

    .line 24
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->salt:[B

    .line 25
    iput p3, p0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->costParameter:I

    .line 26
    iput p4, p0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->blockSize:I

    .line 27
    iput p5, p0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->parallelizationParameter:I

    .line 28
    iput p6, p0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->keySize:I

    .line 29
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->blockSize:I

    return v0
.end method

.method public getCostParameter()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->costParameter:I

    return v0
.end method

.method public getKeyLength()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->keySize:I

    return v0
.end method

.method public getParallelizationParameter()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->parallelizationParameter:I

    return v0
.end method

.method public getPassword()[C
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->password:[C

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->salt:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
