.class Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;
.super Ljava/lang/Object;
.source "BcDefaultDigestProvider.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Xof;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdjustedXof"
.end annotation


# instance fields
.field private final length:I

.field private final xof:Lorg/bouncycastle/crypto/Xof;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/Xof;I)V
    .locals 0
    .param p1, "xof"    # Lorg/bouncycastle/crypto/Xof;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xof",
            "length"
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    .line 252
    iput p2, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->length:I

    .line 253
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->getDigestSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->doFinal([BII)I

    move-result v0

    return v0
.end method

.method public doFinal([BII)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v0

    return v0
.end method

.method public doOutput([BII)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Xof;->doOutput([BII)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 257
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Xof;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->length:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Xof;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 262
    iget v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->length:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Xof;->reset()V

    .line 283
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 268
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 273
    return-void
.end method
