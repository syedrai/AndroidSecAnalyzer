.class public Lorg/bouncycastle/crypto/agreement/kdf/GSKKDFParameters;
.super Ljava/lang/Object;
.source "GSKKDFParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private final nonce:[B

.field private final startCounter:I

.field private final z:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "z"    # [B
    .param p2, "startCounter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "z",
            "startCounter"
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/agreement/kdf/GSKKDFParameters;-><init>([BI[B)V

    .line 18
    return-void
.end method

.method public constructor <init>([BI[B)V
    .locals 0
    .param p1, "z"    # [B
    .param p2, "startCounter"    # I
    .param p3, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "z",
            "startCounter",
            "nonce"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/kdf/GSKKDFParameters;->z:[B

    .line 23
    iput p2, p0, Lorg/bouncycastle/crypto/agreement/kdf/GSKKDFParameters;->startCounter:I

    .line 24
    iput-object p3, p0, Lorg/bouncycastle/crypto/agreement/kdf/GSKKDFParameters;->nonce:[B

    .line 25
    return-void
.end method


# virtual methods
.method public getNonce()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/GSKKDFParameters;->nonce:[B

    return-object v0
.end method

.method public getStartCounter()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/GSKKDFParameters;->startCounter:I

    return v0
.end method

.method public getZ()[B
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/GSKKDFParameters;->z:[B

    return-object v0
.end method
