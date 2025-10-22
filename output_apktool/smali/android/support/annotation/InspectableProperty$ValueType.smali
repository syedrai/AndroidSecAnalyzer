.class public final enum Landroid/support/annotation/InspectableProperty$ValueType;
.super Ljava/lang/Enum;
.source "InspectableProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/annotation/InspectableProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/annotation/InspectableProperty$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/annotation/InspectableProperty$ValueType;

.field public static final enum COLOR:Landroid/support/annotation/InspectableProperty$ValueType;

.field public static final enum GRAVITY:Landroid/support/annotation/InspectableProperty$ValueType;

.field public static final enum INFERRED:Landroid/support/annotation/InspectableProperty$ValueType;

.field public static final enum INT_ENUM:Landroid/support/annotation/InspectableProperty$ValueType;

.field public static final enum INT_FLAG:Landroid/support/annotation/InspectableProperty$ValueType;

.field public static final enum NONE:Landroid/support/annotation/InspectableProperty$ValueType;

.field public static final enum RESOURCE_ID:Landroid/support/annotation/InspectableProperty$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 152
    new-instance v0, Landroid/support/annotation/InspectableProperty$ValueType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/InspectableProperty$ValueType;->NONE:Landroid/support/annotation/InspectableProperty$ValueType;

    .line 157
    new-instance v0, Landroid/support/annotation/InspectableProperty$ValueType;

    const-string v1, "INFERRED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/support/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/InspectableProperty$ValueType;->INFERRED:Landroid/support/annotation/InspectableProperty$ValueType;

    .line 166
    new-instance v0, Landroid/support/annotation/InspectableProperty$ValueType;

    const-string v1, "INT_ENUM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/support/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/InspectableProperty$ValueType;->INT_ENUM:Landroid/support/annotation/InspectableProperty$ValueType;

    .line 175
    new-instance v0, Landroid/support/annotation/InspectableProperty$ValueType;

    const-string v1, "INT_FLAG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/support/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/InspectableProperty$ValueType;->INT_FLAG:Landroid/support/annotation/InspectableProperty$ValueType;

    .line 182
    new-instance v0, Landroid/support/annotation/InspectableProperty$ValueType;

    const-string v1, "COLOR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/support/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/InspectableProperty$ValueType;->COLOR:Landroid/support/annotation/InspectableProperty$ValueType;

    .line 189
    new-instance v0, Landroid/support/annotation/InspectableProperty$ValueType;

    const-string v1, "GRAVITY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroid/support/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/InspectableProperty$ValueType;->GRAVITY:Landroid/support/annotation/InspectableProperty$ValueType;

    .line 197
    new-instance v0, Landroid/support/annotation/InspectableProperty$ValueType;

    const-string v1, "RESOURCE_ID"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroid/support/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/InspectableProperty$ValueType;->RESOURCE_ID:Landroid/support/annotation/InspectableProperty$ValueType;

    .line 148
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/support/annotation/InspectableProperty$ValueType;

    sget-object v1, Landroid/support/annotation/InspectableProperty$ValueType;->NONE:Landroid/support/annotation/InspectableProperty$ValueType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/annotation/InspectableProperty$ValueType;->INFERRED:Landroid/support/annotation/InspectableProperty$ValueType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/annotation/InspectableProperty$ValueType;->INT_ENUM:Landroid/support/annotation/InspectableProperty$ValueType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/annotation/InspectableProperty$ValueType;->INT_FLAG:Landroid/support/annotation/InspectableProperty$ValueType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/annotation/InspectableProperty$ValueType;->COLOR:Landroid/support/annotation/InspectableProperty$ValueType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/support/annotation/InspectableProperty$ValueType;->GRAVITY:Landroid/support/annotation/InspectableProperty$ValueType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/support/annotation/InspectableProperty$ValueType;->RESOURCE_ID:Landroid/support/annotation/InspectableProperty$ValueType;

    aput-object v1, v0, v8

    sput-object v0, Landroid/support/annotation/InspectableProperty$ValueType;->$VALUES:[Landroid/support/annotation/InspectableProperty$ValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/annotation/InspectableProperty$ValueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 148
    const-class v0, Landroid/support/annotation/InspectableProperty$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/annotation/InspectableProperty$ValueType;

    return-object v0
.end method

.method public static values()[Landroid/support/annotation/InspectableProperty$ValueType;
    .locals 1

    .line 148
    sget-object v0, Landroid/support/annotation/InspectableProperty$ValueType;->$VALUES:[Landroid/support/annotation/InspectableProperty$ValueType;

    invoke-virtual {v0}, [Landroid/support/annotation/InspectableProperty$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/annotation/InspectableProperty$ValueType;

    return-object v0
.end method
