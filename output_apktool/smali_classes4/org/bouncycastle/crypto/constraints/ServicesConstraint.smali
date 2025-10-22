.class public abstract Lorg/bouncycastle/crypto/constraints/ServicesConstraint;
.super Ljava/lang/Object;
.source "ServicesConstraint.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CryptoServicesConstraints;


# static fields
.field protected static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final exceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "exceptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;->exceptions:Ljava/util/Set;

    goto :goto_1

    .line 30
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;->exceptions:Ljava/util/Set;

    .line 31
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;->exceptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;->exceptions:Ljava/util/Set;

    invoke-static {v0}, Lorg/bouncycastle/crypto/constraints/Utils;->addAliases(Ljava/util/Set;)V

    .line 38
    :goto_1
    return-void
.end method


# virtual methods
.method protected isException(Ljava/lang/String;)Z
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;->exceptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;->exceptions:Ljava/util/Set;

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
