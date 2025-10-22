.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PolygonalRegion$Builder;
.super Ljava/lang/Object;
.source "PolygonalRegion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PolygonalRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PolygonalRegion$Builder;->locations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createPolygonalRegion()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PolygonalRegion;
    .locals 2

    .line 85
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PolygonalRegion;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PolygonalRegion$Builder;->locations:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PolygonalRegion;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public setLocations(Ljava/util/List;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PolygonalRegion$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;",
            ">;)",
            "Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PolygonalRegion$Builder;"
        }
    .end annotation

    .line 73
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;>;"
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PolygonalRegion$Builder;->locations:Ljava/util/List;

    .line 74
    return-object p0
.end method

.method public varargs setLocations([Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PolygonalRegion$Builder;
    .locals 2
    .param p1, "locations"    # [Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locations"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PolygonalRegion$Builder;->locations:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    return-object p0
.end method
