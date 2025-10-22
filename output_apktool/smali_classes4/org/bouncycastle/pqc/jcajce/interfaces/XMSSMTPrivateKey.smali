.class public interface abstract Lorg/bouncycastle/pqc/jcajce/interfaces/XMSSMTPrivateKey;
.super Ljava/lang/Object;
.source "XMSSMTPrivateKey.java"

# interfaces
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/XMSSMTKey;
.implements Ljava/security/PrivateKey;


# virtual methods
.method public abstract extractKeyShard(I)Lorg/bouncycastle/pqc/jcajce/interfaces/XMSSMTPrivateKey;
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
