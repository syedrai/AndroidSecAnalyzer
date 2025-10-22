.class public Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "QTESLAKeyGenerationParameters.java"


# instance fields
.field private final securityCategory:I


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "securityCategory"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "securityCategory",
            "random"
        }
    .end annotation

    .line 23
    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 25
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;->getPrivateSize(I)I

    .line 27
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyGenerationParameters;->securityCategory:I

    .line 28
    return-void
.end method


# virtual methods
.method public getSecurityCategory()I
    .locals 1

    .line 37
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyGenerationParameters;->securityCategory:I

    return v0
.end method
