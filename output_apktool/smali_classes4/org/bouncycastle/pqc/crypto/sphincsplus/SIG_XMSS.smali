.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
.super Ljava/lang/Object;
.source "SIG_XMSS.java"


# instance fields
.field final auth:[[B

.field final sig:[B


# direct methods
.method public constructor <init>([B[[B)V
    .locals 0
    .param p1, "sig"    # [B
    .param p2, "auth"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sig",
            "auth"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->sig:[B

    .line 11
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->auth:[[B

    .line 12
    return-void
.end method


# virtual methods
.method public getWOTSSig()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->sig:[B

    return-object v0
.end method

.method public getXMSSAUTH()[[B
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->auth:[[B

    return-object v0
.end method
