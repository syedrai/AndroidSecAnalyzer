.class Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
.super Ljava/lang/Object;
.source "Ed448.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/rfc8032/Ed448;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointProjective"
.end annotation


# instance fields
.field x:[I

.field y:[I

.field z:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    .line 101
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    .line 102
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>()V

    return-void
.end method
