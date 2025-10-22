.class public Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;
.super Ljava/lang/Object;
.source "CompositeAlgorithmSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;
    }
.end annotation


# instance fields
.field private final algorithmNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)V
    .locals 2
    .param p1, "builder"    # Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->-$$Nest$fgetalgorithmNames(Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->algorithmNames:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->-$$Nest$fgetparameterSpecs(Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->parameterSpecs:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method public getAlgorithmNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->algorithmNames:Ljava/util/List;

    return-object v0
.end method

.method public getParameterSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->parameterSpecs:Ljava/util/List;

    return-object v0
.end method
