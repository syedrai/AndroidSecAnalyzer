.class final enum Lcom/google/common/collect/SortedLists$KeyAbsentBehavior$1;
.super Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;-><init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method resultIndex(I)I
    .locals 1
    .param p1, "higherIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "higherIndex"
        }
    .end annotation

    .line 160
    add-int/lit8 v0, p1, -0x1

    return v0
.end method
