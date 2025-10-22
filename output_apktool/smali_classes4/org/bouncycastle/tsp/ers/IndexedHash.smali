.class Lorg/bouncycastle/tsp/ers/IndexedHash;
.super Ljava/lang/Object;
.source "IndexedHash.java"


# instance fields
.field final digest:[B

.field final order:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0
    .param p1, "order"    # I
    .param p2, "digest"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "order",
            "digest"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lorg/bouncycastle/tsp/ers/IndexedHash;->order:I

    .line 11
    iput-object p2, p0, Lorg/bouncycastle/tsp/ers/IndexedHash;->digest:[B

    .line 12
    return-void
.end method
