.class public abstract Lorg/bouncycastle/cms/RecipientId;
.super Ljava/lang/Object;
.source "RecipientId.java"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# static fields
.field public static final kek:I = 0x1

.field public static final keyAgree:I = 0x2

.field public static final keyTrans:I = 0x0

.field public static final password:I = 0x3


# instance fields
.field private final type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lorg/bouncycastle/cms/RecipientId;->type:I

    .line 18
    return-void
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public getType()I
    .locals 1

    .line 27
    iget v0, p0, Lorg/bouncycastle/cms/RecipientId;->type:I

    return v0
.end method
