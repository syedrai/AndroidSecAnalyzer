.class Lorg/bouncycastle/util/test/FixedSecureRandom$RandomChecker;
.super Ljava/security/SecureRandom;
.source "FixedSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/util/test/FixedSecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomChecker"
.end annotation


# instance fields
.field data:[B

.field index:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 280
    new-instance v0, Lorg/bouncycastle/util/test/FixedSecureRandom$DummyProvider;

    invoke-direct {v0}, Lorg/bouncycastle/util/test/FixedSecureRandom$DummyProvider;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    .line 283
    const-string v0, "01020304ffffffff0506070811111111"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$RandomChecker;->data:[B

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$RandomChecker;->index:I

    .line 281
    return-void
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$RandomChecker;->data:[B

    iget v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$RandomChecker;->index:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$RandomChecker;->index:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$RandomChecker;->index:I

    .line 291
    return-void
.end method
