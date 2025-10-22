.class public Lorg/bouncycastle/crypto/Commitment;
.super Ljava/lang/Object;
.source "Commitment.java"


# instance fields
.field private final commitment:[B

.field private final secret:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0
    .param p1, "secret"    # [B
    .param p2, "commitment"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "secret",
            "commitment"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/crypto/Commitment;->secret:[B

    .line 20
    iput-object p2, p0, Lorg/bouncycastle/crypto/Commitment;->commitment:[B

    .line 21
    return-void
.end method


# virtual methods
.method public getCommitment()[B
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/crypto/Commitment;->commitment:[B

    return-object v0
.end method

.method public getSecret()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/crypto/Commitment;->secret:[B

    return-object v0
.end method
