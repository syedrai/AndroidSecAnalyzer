.class Lorg/bouncycastle/oer/OERDefinition$ExtensionList;
.super Ljava/util/ArrayList;
.source "OERDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtensionList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final block:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "block"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "block",
            "asList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 693
    .local p2, "asList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 694
    iput p1, p0, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->block:I

    .line 695
    invoke-virtual {p0, p2}, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->addAll(Ljava/util/Collection;)Z

    .line 696
    return-void
.end method
