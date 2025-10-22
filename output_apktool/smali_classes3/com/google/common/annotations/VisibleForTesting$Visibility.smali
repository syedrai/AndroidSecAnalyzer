.class public final enum Lcom/google/common/annotations/VisibleForTesting$Visibility;
.super Ljava/lang/Enum;
.source "VisibleForTesting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/annotations/VisibleForTesting$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/annotations/VisibleForTesting$Visibility;

.field public static final enum NONE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

.field public static final enum PACKAGE_PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

.field public static final enum PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

.field public static final enum PROTECTED:Lcom/google/common/annotations/VisibleForTesting$Visibility;


# direct methods
.method private static synthetic $values()[Lcom/google/common/annotations/VisibleForTesting$Visibility;
    .locals 3

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/annotations/VisibleForTesting$Visibility;

    sget-object v1, Lcom/google/common/annotations/VisibleForTesting$Visibility;->NONE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PACKAGE_PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->NONE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    .line 54
    new-instance v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const-string v1, "PRIVATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    .line 60
    new-instance v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const-string v1, "PACKAGE_PRIVATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PACKAGE_PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    .line 66
    new-instance v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const-string v1, "PROTECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/common/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    .line 44
    invoke-static {}, Lcom/google/common/annotations/VisibleForTesting$Visibility;->$values()[Lcom/google/common/annotations/VisibleForTesting$Visibility;

    move-result-object v0

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->$VALUES:[Lcom/google/common/annotations/VisibleForTesting$Visibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/annotations/VisibleForTesting$Visibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 44
    const-class v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    return-object v0
.end method

.method public static values()[Lcom/google/common/annotations/VisibleForTesting$Visibility;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->$VALUES:[Lcom/google/common/annotations/VisibleForTesting$Visibility;

    invoke-virtual {v0}, [Lcom/google/common/annotations/VisibleForTesting$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/annotations/VisibleForTesting$Visibility;

    return-object v0
.end method
