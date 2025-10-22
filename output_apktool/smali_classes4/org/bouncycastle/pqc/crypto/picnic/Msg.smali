.class Lorg/bouncycastle/pqc/crypto/picnic/Msg;
.super Ljava/lang/Object;
.source "Msg.java"


# instance fields
.field msgs:[[B

.field pos:I

.field unopened:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .locals 4
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    .line 11
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    .line 13
    return-void
.end method
