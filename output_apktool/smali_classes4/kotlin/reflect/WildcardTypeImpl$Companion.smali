.class public final Lkotlin/reflect/WildcardTypeImpl$Companion;
.super Ljava/lang/Object;
.source "TypesJVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/WildcardTypeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/reflect/WildcardTypeImpl$Companion;",
        "",
        "<init>",
        "()V",
        "STAR",
        "Lkotlin/reflect/WildcardTypeImpl;",
        "getSTAR",
        "()Lkotlin/reflect/WildcardTypeImpl;",
        "kotlin_stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/WildcardTypeImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSTAR()Lkotlin/reflect/WildcardTypeImpl;
    .locals 1

    .line 180
    invoke-static {}, Lkotlin/reflect/WildcardTypeImpl;->access$getSTAR$cp()Lkotlin/reflect/WildcardTypeImpl;

    move-result-object v0

    return-object v0
.end method
