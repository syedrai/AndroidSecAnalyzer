.class Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;
.super Ljava/lang/Object;
.source "IndexedDigest.java"


# instance fields
.field final digest:[B

.field final idx_leaf:I

.field final idx_tree:J


# direct methods
.method constructor <init>(JI[B)V
    .locals 0
    .param p1, "idx_tree"    # J
    .param p3, "idx_leaf"    # I
    .param p4, "digest"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx_tree",
            "idx_leaf",
            "digest"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_tree:J

    .line 12
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_leaf:I

    .line 13
    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->digest:[B

    .line 14
    return-void
.end method
