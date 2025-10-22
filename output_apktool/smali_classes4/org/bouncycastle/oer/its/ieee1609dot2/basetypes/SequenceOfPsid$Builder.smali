.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsid$Builder;
.super Ljava/lang/Object;
.source "SequenceOfPsid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsid$Builder;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createSequenceOfPsidSsp()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsid;
    .locals 2

    .line 91
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsid;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsid$Builder;->items:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsid;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public varargs setItem([Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsid$Builder;
    .locals 3
    .param p1, "items"    # [Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 83
    aget-object v1, p1, v0

    .line 84
    .local v1, "item":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;
    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsid$Builder;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v1    # "item":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public setItems(Ljava/util/List;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsid$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;",
            ">;)",
            "Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsid$Builder;"
        }
    .end annotation

    .line 75
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;>;"
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsid$Builder;->items:Ljava/util/List;

    .line 76
    return-object p0
.end method
