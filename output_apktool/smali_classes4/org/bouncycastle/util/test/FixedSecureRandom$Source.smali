.class public Lorg/bouncycastle/util/test/FixedSecureRandom$Source;
.super Ljava/lang/Object;
.source "FixedSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/util/test/FixedSecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Source"
.end annotation


# instance fields
.field data:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$Source;->data:[B

    .line 48
    return-void
.end method
