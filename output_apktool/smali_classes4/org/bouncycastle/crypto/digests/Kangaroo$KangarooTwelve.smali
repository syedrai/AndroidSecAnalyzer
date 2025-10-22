.class public Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooTwelve;
.super Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;
.source "Kangaroo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/Kangaroo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KangarooTwelve"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    const/16 v0, 0x20

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooTwelve;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 2
    .param p1, "pLength"    # I
    .param p2, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "pLength",
            "purpose"
        }
    .end annotation

    .line 39
    const/16 v0, 0x80

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;-><init>(IIILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1
    .param p1, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purpose"
        }
    .end annotation

    .line 44
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooTwelve;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic doFinal([BI)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "pOut",
            "pOutOffset"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->doFinal([BI)I

    move-result p1

    return p1
.end method

.method public bridge synthetic doFinal([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "pOut",
            "pOutOffset",
            "pOutLen"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->doFinal([BII)I

    move-result p1

    return p1
.end method

.method public bridge synthetic doOutput([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "pOut",
            "pOutOffset",
            "pOutLen"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->doOutput([BII)I

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "KangarooTwelve"

    return-object v0
.end method

.method public bridge synthetic getByteLength()I
    .locals 1

    .line 21
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->getByteLength()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDigestSize()I
    .locals 1

    .line 21
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic init(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "pParams"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->init(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;)V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 21
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->reset()V

    return-void
.end method

.method public bridge synthetic update(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "pIn"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->update(B)V

    return-void
.end method

.method public bridge synthetic update([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "pIn",
            "pInOff",
            "pLen"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->update([BII)V

    return-void
.end method
