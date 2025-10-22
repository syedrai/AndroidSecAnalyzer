.class public abstract Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;
.super Ljava/lang/Object;
.source "SymmetricKeyUnwrapper.java"

# interfaces
.implements Lorg/bouncycastle/operator/KeyUnwrapper;


# instance fields
.field private algorithmId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "algorithmId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithmId"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;->algorithmId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 13
    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;->algorithmId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method
