.class public Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;
.super Ljava/lang/Object;
.source "X448.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/rfc7748/X448;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Friend"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;->INSTANCE:Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;-><init>()V

    sput-object v0, Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;->INSTANCE:Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
