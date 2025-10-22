.class public abstract Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;
.super Ljava/lang/Object;
.source "XMSSAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private keyAndMask:I

.field private layerAddress:I

.field private treeAddress:J

.field private final type:I


# direct methods
.method static bridge synthetic -$$Nest$fgetkeyAndMask(Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->keyAndMask:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlayerAddress(Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->layerAddress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettreeAddress(Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->treeAddress:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->type:I

    return p0
.end method

.method protected constructor <init>(I)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;, "Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->layerAddress:I

    .line 31
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->treeAddress:J

    .line 32
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->keyAndMask:I

    .line 37
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->type:I

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;
.end method

.method protected abstract getThis()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;, "Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder<TT;>;"
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->keyAndMask:I

    .line 55
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->getThis()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;, "Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder<TT;>;"
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->layerAddress:I

    .line 43
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->getThis()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    .locals 1
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;, "Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder<TT;>;"
    iput-wide p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->treeAddress:J

    .line 49
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;->getThis()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    return-object v0
.end method
