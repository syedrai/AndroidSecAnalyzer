.class public final enum Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;
.super Ljava/lang/Enum;
.source "ObjectiveCAdapterMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Adaptation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

.field public static final enum ACCEPT_NATIVE_BOOLS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

.field public static final enum ACCEPT_NATIVE_ENUMS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

.field public static final enum EXCEPTIONS_AS_ERRORS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

.field public static final enum RETURN_ADAPTER_PROTOCOLS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

.field public static final enum RETURN_LISTS_AS_NATIVE_ARRAYS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

.field public static final enum RETURN_NATIVE_BOOLS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

.field public static final enum RETURN_NATIVE_ENUMS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;


# direct methods
.method private static synthetic $values()[Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;
    .locals 3

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    sget-object v1, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->EXCEPTIONS_AS_ERRORS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->RETURN_NATIVE_BOOLS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->ACCEPT_NATIVE_BOOLS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->RETURN_NATIVE_ENUMS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->ACCEPT_NATIVE_ENUMS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->RETURN_ADAPTER_PROTOCOLS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->RETURN_LISTS_AS_NATIVE_ARRAYS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const-string v1, "EXCEPTIONS_AS_ERRORS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->EXCEPTIONS_AS_ERRORS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    .line 51
    new-instance v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const-string v1, "RETURN_NATIVE_BOOLS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->RETURN_NATIVE_BOOLS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    .line 57
    new-instance v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const-string v1, "ACCEPT_NATIVE_BOOLS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->ACCEPT_NATIVE_BOOLS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    .line 64
    new-instance v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const-string v1, "RETURN_NATIVE_ENUMS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->RETURN_NATIVE_ENUMS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    .line 71
    new-instance v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const-string v1, "ACCEPT_NATIVE_ENUMS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->ACCEPT_NATIVE_ENUMS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    .line 78
    new-instance v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const-string v1, "RETURN_ADAPTER_PROTOCOLS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->RETURN_ADAPTER_PROTOCOLS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    .line 85
    new-instance v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    const-string v1, "RETURN_LISTS_AS_NATIVE_ARRAYS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->RETURN_LISTS_AS_NATIVE_ARRAYS:Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    .line 38
    invoke-static {}, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->$values()[Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    move-result-object v0

    sput-object v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->$VALUES:[Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;
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

    .line 38
    const-class v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    return-object v0
.end method

.method public static values()[Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;
    .locals 1

    .line 38
    sget-object v0, Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->$VALUES:[Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    invoke-virtual {v0}, [Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;

    return-object v0
.end method
