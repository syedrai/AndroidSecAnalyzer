.class public Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;
.super Ljava/lang/Object;
.source "HybridValueParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field private volatile baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final doPrepend:Z

.field private final hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile t:[B


# direct methods
.method public constructor <init>([BLjava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "t"    # [B
    .param p2, "baseSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "baseSpec"
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;-><init>([BZLjava/security/spec/AlgorithmParameterSpec;)V

    .line 38
    return-void
.end method

.method public constructor <init>([BZLjava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "t"    # [B
    .param p2, "doPrepend"    # Z
    .param p3, "baseSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "t",
            "doPrepend",
            "baseSpec"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    .line 49
    iput-object p3, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 50
    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->doPrepend:Z

    .line 51
    return-void
.end method

.method private checkDestroyed()V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "spec has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    .line 111
    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 113
    :cond_0
    return-void
.end method

.method public getBaseParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 86
    .local v0, "rv":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->checkDestroyed()V

    .line 88
    return-object v0
.end method

.method public getT()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    .line 72
    .local v0, "tVal":[B
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->checkDestroyed()V

    .line 74
    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrependedT()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/spec/HybridValueParameterSpec;->doPrepend:Z

    return v0
.end method
