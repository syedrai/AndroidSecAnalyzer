.class public Lorg/bouncycastle/dvcs/TargetChain;
.super Ljava/lang/Object;
.source "TargetChain.java"


# instance fields
.field private final certs:Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;)V
    .locals 0
    .param p1, "certs"    # Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certs"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/bouncycastle/dvcs/TargetChain;->certs:Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    .line 12
    return-void
.end method


# virtual methods
.method public toASN1Structure()Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/bouncycastle/dvcs/TargetChain;->certs:Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    return-object v0
.end method
