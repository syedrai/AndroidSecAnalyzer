.class public Lorg/bouncycastle/cert/path/CertPathValidationResult;
.super Ljava/lang/Object;
.source "CertPathValidationResult.java"


# instance fields
.field private final cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

.field private causes:[Lorg/bouncycastle/cert/path/CertPathValidationException;

.field private final certIndex:I

.field private certIndexes:[I

.field private final isValid:Z

.field private final ruleIndex:I

.field private ruleIndexes:[I

.field private final unhandledCriticalExtensionOIDs:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;)V
    .locals 1
    .param p1, "context"    # Lorg/bouncycastle/cert/path/CertPathValidationContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->isValid:Z

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndex:I

    .line 25
    iput v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->ruleIndex:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;IILorg/bouncycastle/cert/path/CertPathValidationException;)V
    .locals 1
    .param p1, "context"    # Lorg/bouncycastle/cert/path/CertPathValidationContext;
    .param p2, "certIndex"    # I
    .param p3, "ruleIndex"    # I
    .param p4, "cause"    # Lorg/bouncycastle/cert/path/CertPathValidationException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "certIndex",
            "ruleIndex",
            "cause"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->isValid:Z

    .line 33
    iput p2, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndex:I

    .line 34
    iput p3, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->ruleIndex:I

    .line 35
    iput-object p4, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;[I[I[Lorg/bouncycastle/cert/path/CertPathValidationException;)V
    .locals 2
    .param p1, "context"    # Lorg/bouncycastle/cert/path/CertPathValidationContext;
    .param p2, "certIndexes"    # [I
    .param p3, "ruleIndexes"    # [I
    .param p4, "causes"    # [Lorg/bouncycastle/cert/path/CertPathValidationException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "certIndexes",
            "ruleIndexes",
            "causes"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->isValid:Z

    .line 42
    aget-object v1, p4, v0

    iput-object v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    .line 43
    aget v1, p2, v0

    iput v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndex:I

    .line 44
    aget v0, p3, v0

    iput v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->ruleIndex:I

    .line 45
    iput-object p4, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->causes:[Lorg/bouncycastle/cert/path/CertPathValidationException;

    .line 46
    iput-object p2, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndexes:[I

    .line 47
    iput-object p3, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->ruleIndexes:[I

    .line 48
    return-void
.end method


# virtual methods
.method public getCause()Lorg/bouncycastle/cert/path/CertPathValidationException;
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v1, "Unhandled Critical Extensions"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCauses()[Lorg/bouncycastle/cert/path/CertPathValidationException;
    .locals 4

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->causes:[Lorg/bouncycastle/cert/path/CertPathValidationException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->causes:[Lorg/bouncycastle/cert/path/CertPathValidationException;

    array-length v0, v0

    new-array v0, v0, [Lorg/bouncycastle/cert/path/CertPathValidationException;

    .line 96
    .local v0, "rv":[Lorg/bouncycastle/cert/path/CertPathValidationException;
    iget-object v2, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->causes:[Lorg/bouncycastle/cert/path/CertPathValidationException;

    iget-object v3, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->causes:[Lorg/bouncycastle/cert/path/CertPathValidationException;

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    return-object v0

    .line 101
    .end local v0    # "rv":[Lorg/bouncycastle/cert/path/CertPathValidationException;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance v2, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v3, "Unhandled Critical Extensions"

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0

    .line 107
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFailingCertIndex()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndex:I

    return v0
.end method

.method public getFailingCertIndexes()[I
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndexes:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFailingRuleIndex()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->ruleIndex:I

    return v0
.end method

.method public getFailingRuleIndexes()[I
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->ruleIndexes:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getUnhandledCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    return-object v0
.end method

.method public isDetailed()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndexes:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->isValid:Z

    return v0
.end method
