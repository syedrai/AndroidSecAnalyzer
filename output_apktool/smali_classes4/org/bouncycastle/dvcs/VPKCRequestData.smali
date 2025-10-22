.class public Lorg/bouncycastle/dvcs/VPKCRequestData;
.super Lorg/bouncycastle/dvcs/DVCSRequestData;
.source "VPKCRequestData.java"


# instance fields
.field private chains:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/dvcs/Data;)V
    .locals 5
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

    .line 26
    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    .line 28
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/Data;->getCerts()[Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    move-result-object v0

    .line 30
    .local v0, "certs":[Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    if-eqz v0, :cond_1

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/bouncycastle/dvcs/VPKCRequestData;->chains:Ljava/util/List;

    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 39
    iget-object v2, p0, Lorg/bouncycastle/dvcs/VPKCRequestData;->chains:Ljava/util/List;

    new-instance v3, Lorg/bouncycastle/dvcs/TargetChain;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Lorg/bouncycastle/dvcs/TargetChain;-><init>(Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 32
    :cond_1
    new-instance v1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v2, "DVCSRequest.data.certs should be specified for VPKC service"

    invoke-direct {v1, v2}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCerts()Ljava/util/List;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/dvcs/VPKCRequestData;->chains:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
