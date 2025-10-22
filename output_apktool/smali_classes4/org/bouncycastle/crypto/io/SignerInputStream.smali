.class public Lorg/bouncycastle/crypto/io/SignerInputStream;
.super Ljava/io/FilterInputStream;
.source "SignerInputStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field protected signer:Lorg/bouncycastle/crypto/Signer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Signer;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "signer"    # Lorg/bouncycastle/crypto/Signer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "signer"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lorg/bouncycastle/crypto/Signer;

    .line 20
    return-void
.end method


# virtual methods
.method public getSigner()Lorg/bouncycastle/crypto/Signer;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lorg/bouncycastle/crypto/Signer;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 27
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 29
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lorg/bouncycastle/crypto/Signer;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Signer;->update(B)V

    .line 31
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 41
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 43
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lorg/bouncycastle/crypto/Signer;

    invoke-interface {v1, p1, p2, v0}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    .line 45
    :cond_0
    return v0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
