.class public Lorg/bouncycastle/crypto/params/KDFParameters;
.super Ljava/lang/Object;
.source "KDFParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field iv:[B

.field shared:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0
    .param p1, "shared"    # [B
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shared",
            "iv"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/KDFParameters;->shared:[B

    .line 19
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/KDFParameters;->iv:[B

    .line 20
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KDFParameters;->iv:[B

    return-object v0
.end method

.method public getSharedSecret()[B
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KDFParameters;->shared:[B

    return-object v0
.end method
