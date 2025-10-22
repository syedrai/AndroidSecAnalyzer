.class public final Lorg/bouncycastle/crypto/params/FPEParameters;
.super Ljava/lang/Object;
.source "FPEParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private final key:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private final radixConverter:Lorg/bouncycastle/crypto/util/RadixConverter;

.field private final tweak:[B

.field private final useInverse:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B)V
    .locals 1
    .param p1, "key"    # Lorg/bouncycastle/crypto/params/KeyParameter;
    .param p2, "radix"    # I
    .param p3, "tweak"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "radix",
            "tweak"
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/params/FPEParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[BZ)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[BZ)V
    .locals 1
    .param p1, "key"    # Lorg/bouncycastle/crypto/params/KeyParameter;
    .param p2, "radix"    # I
    .param p3, "tweak"    # [B
    .param p4, "useInverse"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "radix",
            "tweak",
            "useInverse"
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/bouncycastle/crypto/util/RadixConverter;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/util/RadixConverter;-><init>(I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/bouncycastle/crypto/params/FPEParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;Lorg/bouncycastle/crypto/util/RadixConverter;[BZ)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/KeyParameter;Lorg/bouncycastle/crypto/util/RadixConverter;[BZ)V
    .locals 1
    .param p1, "key"    # Lorg/bouncycastle/crypto/params/KeyParameter;
    .param p2, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p3, "tweak"    # [B
    .param p4, "useInverse"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "radixConverter",
            "tweak",
            "useInverse"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/FPEParameters;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 28
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/FPEParameters;->radixConverter:Lorg/bouncycastle/crypto/util/RadixConverter;

    .line 29
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/FPEParameters;->tweak:[B

    .line 30
    iput-boolean p4, p0, Lorg/bouncycastle/crypto/params/FPEParameters;->useInverse:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getKey()Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/FPEParameters;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public getRadix()I
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/FPEParameters;->radixConverter:Lorg/bouncycastle/crypto/util/RadixConverter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v0

    return v0
.end method

.method public getRadixConverter()Lorg/bouncycastle/crypto/util/RadixConverter;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/FPEParameters;->radixConverter:Lorg/bouncycastle/crypto/util/RadixConverter;

    return-object v0
.end method

.method public getTweak()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/FPEParameters;->tweak:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public isUsingInverseFunction()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/params/FPEParameters;->useInverse:Z

    return v0
.end method
