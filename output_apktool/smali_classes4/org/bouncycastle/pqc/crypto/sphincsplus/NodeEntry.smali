.class Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;
.super Ljava/lang/Object;
.source "NodeEntry.java"


# instance fields
.field final nodeHeight:I

.field final nodeValue:[B


# direct methods
.method constructor <init>([BI)V
    .locals 0
    .param p1, "nodeValue"    # [B
    .param p2, "nodeHeight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeValue",
            "nodeHeight"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    .line 11
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeHeight:I

    .line 12
    return-void
.end method
