.class Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;
.super Ljava/lang/Object;
.source "SecretKeyHFE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;
    }
.end annotation


# instance fields
.field public F_HFEv:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

.field F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

.field public S:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

.field public T:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

.field public sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;)V
    .locals 2
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->L:[I

    .line 31
    return-void
.end method
