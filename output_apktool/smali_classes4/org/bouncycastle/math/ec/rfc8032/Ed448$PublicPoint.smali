.class public final Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
.super Ljava/lang/Object;
.source "Ed448.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/rfc8032/Ed448;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PublicPoint"
.end annotation


# instance fields
.field final data:[I


# direct methods
.method constructor <init>([I)V
    .locals 0
    .param p1, "data"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;->data:[I

    .line 37
    return-void
.end method
