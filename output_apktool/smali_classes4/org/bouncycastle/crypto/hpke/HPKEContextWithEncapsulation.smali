.class public Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
.super Lorg/bouncycastle/crypto/hpke/HPKEContext;
.source "HPKEContextWithEncapsulation.java"


# instance fields
.field final encapsulation:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V
    .locals 4
    .param p1, "context"    # Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .param p2, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "encapsulation"
        }
    .end annotation

    .line 12
    iget-object v0, p1, Lorg/bouncycastle/crypto/hpke/HPKEContext;->aead:Lorg/bouncycastle/crypto/hpke/AEAD;

    iget-object v1, p1, Lorg/bouncycastle/crypto/hpke/HPKEContext;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    iget-object v2, p1, Lorg/bouncycastle/crypto/hpke/HPKEContext;->exporterSecret:[B

    iget-object v3, p1, Lorg/bouncycastle/crypto/hpke/HPKEContext;->suiteId:[B

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/hpke/HPKEContext;-><init>(Lorg/bouncycastle/crypto/hpke/AEAD;Lorg/bouncycastle/crypto/hpke/HKDF;[B[B)V

    .line 13
    iput-object p2, p0, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->encapsulation:[B

    .line 14
    return-void
.end method


# virtual methods
.method public getEncapsulation()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->encapsulation:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
