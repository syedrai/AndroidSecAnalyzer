.class public Lorg/bouncycastle/jcajce/provider/digest/SHA512$KeyGeneratorT256;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "SHA512.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA512;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGeneratorT256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 142
    new-instance v0, Lorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    const-string v1, "HMACSHA512/256"

    const/16 v2, 0x100

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 143
    return-void
.end method
