.class Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/rfc8032/Ed25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointTemp"
.end annotation


# instance fields
.field r0:[I

.field r1:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r0:[I

    .line 147
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r1:[I

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;-><init>()V

    return-void
.end method
