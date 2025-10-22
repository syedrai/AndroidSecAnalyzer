.class public Lorg/bouncycastle/util/test/FixedSecureRandom$BigInteger;
.super Lorg/bouncycastle/util/test/FixedSecureRandom$Source;
.source "FixedSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/util/test/FixedSecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigInteger"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "bitLength"    # I
    .param p2, "hexData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "hexData"
        }
    .end annotation

    .line 87
    invoke-static {p2}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->-$$Nest$smexpandToBitLength(I[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom$Source;-><init>([B)V

    .line 88
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "bitLength"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "data"
        }
    .end annotation

    .line 77
    invoke-static {p1, p2}, Lorg/bouncycastle/util/test/FixedSecureRandom;->-$$Nest$smexpandToBitLength(I[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom$Source;-><init>([B)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hexData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hexData"
        }
    .end annotation

    .line 82
    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom$BigInteger;-><init>([B)V

    .line 83
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lorg/bouncycastle/util/test/FixedSecureRandom$Source;-><init>([B)V

    .line 73
    return-void
.end method
