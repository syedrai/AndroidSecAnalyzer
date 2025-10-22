.class public Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;
.super Lorg/bouncycastle/jcajce/PBKDF1Key;
.source "PBKDF1KeyWithParameters.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private final iterationCount:I

.field private final salt:[B


# direct methods
.method public constructor <init>([CLorg/bouncycastle/crypto/CharToByteConverter;[BI)V
    .locals 1
    .param p1, "password"    # [C
    .param p2, "converter"    # Lorg/bouncycastle/crypto/CharToByteConverter;
    .param p3, "salt"    # [B
    .param p4, "iterationCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "password",
            "converter",
            "salt",
            "iterationCount"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/PBKDF1Key;-><init>([CLorg/bouncycastle/crypto/CharToByteConverter;)V

    .line 30
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;->salt:[B

    .line 31
    iput p4, p0, Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;->iterationCount:I

    .line 32
    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;->salt:[B

    return-object v0
.end method
