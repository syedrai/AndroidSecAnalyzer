.class public Lorg/bouncycastle/crypto/hpke/HPKEContext;
.super Ljava/lang/Object;
.source "HPKEContext.java"


# instance fields
.field protected final aead:Lorg/bouncycastle/crypto/hpke/AEAD;

.field protected final exporterSecret:[B

.field protected final hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

.field protected final suiteId:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/hpke/AEAD;Lorg/bouncycastle/crypto/hpke/HKDF;[B[B)V
    .locals 0
    .param p1, "aead"    # Lorg/bouncycastle/crypto/hpke/AEAD;
    .param p2, "hkdf"    # Lorg/bouncycastle/crypto/hpke/HKDF;
    .param p3, "exporterSecret"    # [B
    .param p4, "suiteId"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aead",
            "hkdf",
            "exporterSecret",
            "suiteId"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->aead:Lorg/bouncycastle/crypto/hpke/AEAD;

    .line 15
    iput-object p2, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    .line 16
    iput-object p3, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->exporterSecret:[B

    .line 17
    iput-object p4, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->suiteId:[B

    .line 18
    return-void
.end method


# virtual methods
.method public expand([B[BI)[B
    .locals 1
    .param p1, "prk"    # [B
    .param p2, "info"    # [B
    .param p3, "L"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prk",
            "info",
            "L"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/hpke/HKDF;->Expand([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public export([BI)[B
    .locals 6
    .param p1, "exportContext"    # [B
    .param p2, "L"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "exportContext",
            "L"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->exporterSecret:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->suiteId:[B

    const-string v3, "sec"

    move-object v4, p1

    move v5, p2

    .end local p1    # "exportContext":[B
    .end local p2    # "L":I
    .local v4, "exportContext":[B
    .local v5, "L":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public extract([B[B)[B
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "ikm"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "salt",
            "ikm"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/HKDF;->Extract([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public open([B[B)[B
    .locals 1
    .param p1, "aad"    # [B
    .param p2, "ct"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aad",
            "ct"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->aead:Lorg/bouncycastle/crypto/hpke/AEAD;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/AEAD;->open([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public open([B[BII)[B
    .locals 1
    .param p1, "aad"    # [B
    .param p2, "ct"    # [B
    .param p3, "ctOffset"    # I
    .param p4, "ctLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aad",
            "ct",
            "ctOffset",
            "ctLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->aead:Lorg/bouncycastle/crypto/hpke/AEAD;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/hpke/AEAD;->open([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public seal([B[B)[B
    .locals 1
    .param p1, "aad"    # [B
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aad",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->aead:Lorg/bouncycastle/crypto/hpke/AEAD;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/AEAD;->seal([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public seal([B[BII)[B
    .locals 1
    .param p1, "aad"    # [B
    .param p2, "pt"    # [B
    .param p3, "ptOffset"    # I
    .param p4, "ptLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aad",
            "pt",
            "ptOffset",
            "ptLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContext;->aead:Lorg/bouncycastle/crypto/hpke/AEAD;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/hpke/AEAD;->seal([B[BII)[B

    move-result-object v0

    return-object v0
.end method
