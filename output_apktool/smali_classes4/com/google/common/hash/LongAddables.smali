.class final Lcom/google/common/hash/LongAddables;
.super Ljava/lang/Object;
.source "LongAddables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/LongAddables$PureJavaLongAddable;
    }
.end annotation


# static fields
.field private static final SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/hash/LongAddable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    :try_start_0
    new-instance v0, Lcom/google/common/hash/LongAdder;

    invoke-direct {v0}, Lcom/google/common/hash/LongAdder;-><init>()V

    .line 33
    .local v0, "unused":Lcom/google/common/hash/LongAdder;
    new-instance v1, Lcom/google/common/hash/LongAddables$1;

    invoke-direct {v1}, Lcom/google/common/hash/LongAddables$1;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v0    # "unused":Lcom/google/common/hash/LongAdder;
    .local v1, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/hash/LongAddable;>;"
    goto :goto_0

    .line 40
    .end local v1    # "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/hash/LongAddable;>;"
    :catchall_0
    move-exception v0

    .line 41
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/google/common/hash/LongAddables$2;

    invoke-direct {v1}, Lcom/google/common/hash/LongAddables$2;-><init>()V

    .line 49
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v1    # "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/hash/LongAddable;>;"
    :goto_0
    sput-object v1, Lcom/google/common/hash/LongAddables;->SUPPLIER:Lcom/google/common/base/Supplier;

    .line 50
    .end local v1    # "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/hash/LongAddable;>;"
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/common/hash/LongAddable;
    .locals 1

    .line 53
    sget-object v0, Lcom/google/common/hash/LongAddables;->SUPPLIER:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/LongAddable;

    return-object v0
.end method
