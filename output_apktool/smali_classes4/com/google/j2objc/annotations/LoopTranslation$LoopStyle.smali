.class public final enum Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;
.super Ljava/lang/Enum;
.source "LoopTranslation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/j2objc/annotations/LoopTranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoopStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

.field public static final enum FAST_ENUMERATION:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

.field public static final enum JAVA_ITERATOR:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;


# direct methods
.method private static synthetic $values()[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;
    .locals 3

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    sget-object v1, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->JAVA_ITERATOR:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->FAST_ENUMERATION:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    const-string v1, "JAVA_ITERATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->JAVA_ITERATOR:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    .line 56
    new-instance v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    const-string v1, "FAST_ENUMERATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->FAST_ENUMERATION:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    .line 42
    invoke-static {}, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->$values()[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    move-result-object v0

    sput-object v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->$VALUES:[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

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

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;
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

    .line 42
    const-class v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    return-object v0
.end method

.method public static values()[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->$VALUES:[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    invoke-virtual {v0}, [Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    return-object v0
.end method
