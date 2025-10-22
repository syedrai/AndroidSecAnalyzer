.class public interface abstract Lorg/bouncycastle/pqc/jcajce/interfaces/XMSSPrivateKey;
.super Ljava/lang/Object;
.source "XMSSPrivateKey.java"

# interfaces
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/XMSSKey;
.implements Ljava/security/PrivateKey;


# virtual methods
.method public abstract extractKeyShard(I)Lorg/bouncycastle/pqc/jcajce/interfaces/XMSSPrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usageCount"
        }
    .end annotation
.end method

.method public abstract getIndex()J
.end method

.method public abstract getUsagesRemaining()J
.end method
