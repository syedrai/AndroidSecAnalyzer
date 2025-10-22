.class public Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
.super Ljava/lang/Object;
.source "Argon2Parameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/params/Argon2Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private additional:[B

.field private converter:Lorg/bouncycastle/crypto/CharToByteConverter;

.field private iterations:I

.field private lanes:I

.field private memory:I

.field private salt:[B

.field private secret:[B

.field private final type:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;-><init>(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lorg/bouncycastle/crypto/PasswordConverter;->UTF8:Lorg/bouncycastle/crypto/PasswordConverter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    .line 44
    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->type:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->lanes:I

    .line 46
    const/16 v0, 0x1000

    iput v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->memory:I

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->iterations:I

    .line 48
    const/16 v0, 0x13

    iput v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->version:I

    .line 49
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/params/Argon2Parameters;
    .locals 11

    .line 109
    new-instance v0, Lorg/bouncycastle/crypto/params/Argon2Parameters;

    iget v1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->type:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->salt:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->secret:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->additional:[B

    iget v5, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->iterations:I

    iget v6, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->memory:I

    iget v7, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->lanes:I

    iget v8, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->version:I

    iget-object v9, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/bouncycastle/crypto/params/Argon2Parameters;-><init>(I[B[B[BIIIILorg/bouncycastle/crypto/CharToByteConverter;Lorg/bouncycastle/crypto/params/Argon2Parameters-IA;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->salt:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->secret:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->additional:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 117
    return-void
.end method

.method public withAdditional([B)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .locals 1
    .param p1, "additional"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additional"
        }
    .end annotation

    .line 71
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->additional:[B

    .line 72
    return-object p0
.end method

.method public withCharToByteConverter(Lorg/bouncycastle/crypto/CharToByteConverter;)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .locals 0
    .param p1, "converter"    # Lorg/bouncycastle/crypto/CharToByteConverter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "converter"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    .line 104
    return-object p0
.end method

.method public withIterations(I)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .locals 0
    .param p1, "iterations"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterations"
        }
    .end annotation

    .line 77
    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->iterations:I

    .line 78
    return-object p0
.end method

.method public withMemoryAsKB(I)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .locals 0
    .param p1, "memory"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memory"
        }
    .end annotation

    .line 84
    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->memory:I

    .line 85
    return-object p0
.end method

.method public withMemoryPowOfTwo(I)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .locals 1
    .param p1, "memory"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memory"
        }
    .end annotation

    .line 91
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->memory:I

    .line 92
    return-object p0
.end method

.method public withParallelism(I)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .locals 0
    .param p1, "parallelism"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parallelism"
        }
    .end annotation

    .line 53
    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->lanes:I

    .line 54
    return-object p0
.end method

.method public withSalt([B)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .locals 1
    .param p1, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "salt"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->salt:[B

    .line 60
    return-object p0
.end method

.method public withSecret([B)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .locals 1
    .param p1, "secret"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secret"
        }
    .end annotation

    .line 65
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->secret:[B

    .line 66
    return-object p0
.end method

.method public withVersion(I)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .locals 0
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 97
    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->version:I

    .line 98
    return-object p0
.end method
