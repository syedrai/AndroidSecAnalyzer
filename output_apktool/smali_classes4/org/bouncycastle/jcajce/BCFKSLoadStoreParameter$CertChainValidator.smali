.class public interface abstract Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;
.super Ljava/lang/Object;
.source "BCFKSLoadStoreParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CertChainValidator"
.end annotation


# virtual methods
.method public abstract isValid([Ljava/security/cert/X509Certificate;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chain"
        }
    .end annotation
.end method
