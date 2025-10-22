.class Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;
.super Ljava/lang/Object;
.source "CertPathValidationResultBuilder.java"


# instance fields
.field private final certIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lorg/bouncycastle/cert/path/CertPathValidationContext;

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/cert/path/CertPathValidationException;",
            ">;"
        }
    .end annotation
.end field

.field private final ruleIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;)V
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->certIndexes:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->ruleIndexes:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->context:Lorg/bouncycastle/cert/path/CertPathValidationContext;

    .line 18
    return-void
.end method

.method private toInts(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 42
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 44
    .local v0, "rv":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addException(IILorg/bouncycastle/cert/path/CertPathValidationException;)V
    .locals 2
    .param p1, "certIndex"    # I
    .param p2, "ruleIndex"    # I
    .param p3, "exception"    # Lorg/bouncycastle/cert/path/CertPathValidationException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certIndex",
            "ruleIndex",
            "exception"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->certIndexes:Ljava/util/List;

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->ruleIndexes:Ljava/util/List;

    invoke-static {p2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public build()Lorg/bouncycastle/cert/path/CertPathValidationResult;
    .locals 6

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationResult;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->context:Lorg/bouncycastle/cert/path/CertPathValidationContext;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationResult;-><init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;)V

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationResult;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->context:Lorg/bouncycastle/cert/path/CertPathValidationContext;

    iget-object v2, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->certIndexes:Ljava/util/List;

    .line 29
    invoke-direct {p0, v2}, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->toInts(Ljava/util/List;)[I

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->ruleIndexes:Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->toInts(Ljava/util/List;)[I

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    iget-object v5, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/bouncycastle/cert/path/CertPathValidationException;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/bouncycastle/cert/path/CertPathValidationException;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/cert/path/CertPathValidationResult;-><init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;[I[I[Lorg/bouncycastle/cert/path/CertPathValidationException;)V

    .line 28
    return-object v0
.end method
