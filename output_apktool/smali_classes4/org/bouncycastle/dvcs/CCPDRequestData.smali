.class public Lorg/bouncycastle/dvcs/CCPDRequestData;
.super Lorg/bouncycastle/dvcs/DVCSRequestData;
.source "CCPDRequestData.java"


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/dvcs/Data;)V
    .locals 0
    .param p1, "data"    # Lorg/bouncycastle/asn1/dvcs/Data;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/dvcs/CCPDRequestData;->initDigest()V

    .line 29
    return-void
.end method

.method private initDigest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/dvcs/CCPDRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessageImprint()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    return-void

    .line 36
    :cond_0
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v1, "DVCSRequest.data.messageImprint should be specified for CCPD service"

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMessageImprint()Lorg/bouncycastle/dvcs/MessageImprint;
    .locals 2

    .line 47
    new-instance v0, Lorg/bouncycastle/dvcs/MessageImprint;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/CCPDRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessageImprint()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/MessageImprint;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;)V

    return-object v0
.end method
