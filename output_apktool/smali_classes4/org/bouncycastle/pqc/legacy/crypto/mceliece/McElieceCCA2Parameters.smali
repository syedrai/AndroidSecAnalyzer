.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;
.super Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;
.source "McElieceCCA2Parameters.java"


# instance fields
.field private final digest:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    const/16 v0, 0x32

    const-string v1, "SHA-256"

    const/16 v2, 0xb

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;-><init>(IILjava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "keysize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keysize"
        }
    .end annotation

    .line 29
    const-string v0, "SHA-256"

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;-><init>(ILjava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "m"    # I
    .param p2, "t"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "t"
        }
    .end annotation

    .line 55
    const-string v0, "SHA-256"

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;-><init>(IILjava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "m"    # I
    .param p2, "t"    # I
    .param p3, "poly"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "t",
            "poly"
        }
    .end annotation

    .line 84
    const-string v0, "SHA-256"

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;-><init>(IIILjava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "m"    # I
    .param p2, "t"    # I
    .param p3, "poly"    # I
    .param p4, "digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "t",
            "poly",
            "digest"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(III)V

    .line 101
    iput-object p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;->digest:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "m"    # I
    .param p2, "t"    # I
    .param p3, "digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "t",
            "digest"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(II)V

    .line 69
    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;->digest:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "keysize"    # I
    .param p2, "digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keysize",
            "digest"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(I)V

    .line 42
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;->digest:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 18
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;-><init>(IILjava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getDigest()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;->digest:Ljava/lang/String;

    return-object v0
.end method
