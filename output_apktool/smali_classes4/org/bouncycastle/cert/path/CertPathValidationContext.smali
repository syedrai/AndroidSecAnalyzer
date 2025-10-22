.class public Lorg/bouncycastle/cert/path/CertPathValidationContext;
.super Ljava/lang/Object;
.source "CertPathValidationContext.java"

# interfaces
.implements Lorg/bouncycastle/util/Memoable;


# instance fields
.field private criticalExtensions:Ljava/util/Set;

.field private endEntity:Z

.field private handledExtensions:Ljava/util/Set;

.field private index:I


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .param p1, "criticalExtensionsOIDs"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "criticalExtensionsOIDs"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->handledExtensions:Ljava/util/Set;

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->criticalExtensions:Ljava/util/Set;

    .line 21
    return-void
.end method


# virtual methods
.method public addHandledExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "extensionIdentifier"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensionIdentifier"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->handledExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 3

    .line 54
    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationContext;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->criticalExtensions:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;-><init>(Ljava/util/Set;)V

    .line 56
    .local v0, "c":Lorg/bouncycastle/cert/path/CertPathValidationContext;
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->handledExtensions:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->handledExtensions:Ljava/util/Set;

    .line 57
    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->endEntity:Z

    iput-boolean v1, v0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->endEntity:Z

    .line 58
    iget v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->index:I

    iput v1, v0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->index:I

    .line 60
    return-object v0
.end method

.method public getUnhandledCriticalExtensionOIDs()Ljava/util/Set;
    .locals 2

    .line 35
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->criticalExtensions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 37
    .local v0, "rv":Ljava/util/Set;
    iget-object v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->handledExtensions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 39
    return-object v0
.end method

.method public isEndEntity()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->endEntity:Z

    return v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 3
    .param p1, "other"    # Lorg/bouncycastle/util/Memoable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 65
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/path/CertPathValidationContext;

    .line 67
    .local v0, "c":Lorg/bouncycastle/cert/path/CertPathValidationContext;
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->criticalExtensions:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->criticalExtensions:Ljava/util/Set;

    .line 68
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->handledExtensions:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->handledExtensions:Ljava/util/Set;

    .line 69
    iget-boolean v1, v0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->endEntity:Z

    iput-boolean v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->endEntity:Z

    .line 70
    iget v1, v0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->index:I

    iput v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->index:I

    .line 71
    return-void
.end method

.method public setIsEndEntity(Z)V
    .locals 0
    .param p1, "isEndEntity"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEndEntity"
        }
    .end annotation

    .line 30
    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->endEntity:Z

    .line 31
    return-void
.end method
