.class public Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks$Builder;
.super Ljava/lang/Object;
.source "ContributedExtensionBlocks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final extensionBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks$Builder;->extensionBlocks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs add([Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlock;)Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks$Builder;
    .locals 2
    .param p1, "blocks"    # [Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blocks"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks$Builder;->extensionBlocks:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    return-object p0
.end method

.method public build()Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;
    .locals 2

    .line 83
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks$Builder;->extensionBlocks:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ContributedExtensionBlocks;-><init>(Ljava/util/List;)V

    return-object v0
.end method
