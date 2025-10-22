.class public interface abstract Lorg/bouncycastle/pqc/jcajce/interfaces/LMSPrivateKey;
.super Ljava/lang/Object;
.source "LMSPrivateKey.java"

# interfaces
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/LMSKey;
.implements Ljava/security/PrivateKey;


# virtual methods
.method public abstract extractKeyShard(I)Lorg/bouncycastle/pqc/jcajce/interfaces/LMSPrivateKey;
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
