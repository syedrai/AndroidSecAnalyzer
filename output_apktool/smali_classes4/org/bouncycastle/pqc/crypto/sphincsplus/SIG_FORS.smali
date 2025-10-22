.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
.super Ljava/lang/Object;
.source "SIG_FORS.java"


# instance fields
.field final authPath:[[B

.field final sk:[B


# direct methods
.method constructor <init>([B[[B)V
    .locals 0
    .param p1, "sk"    # [B
    .param p2, "authPath"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sk",
            "authPath"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->authPath:[[B

    .line 11
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->sk:[B

    .line 12
    return-void
.end method


# virtual methods
.method public getAuthPath()[[B
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->authPath:[[B

    return-object v0
.end method

.method getSK()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->sk:[B

    return-object v0
.end method
