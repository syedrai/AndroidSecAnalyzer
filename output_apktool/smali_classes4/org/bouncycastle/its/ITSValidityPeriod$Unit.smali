.class public final enum Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
.super Ljava/lang/Enum;
.source "ITSValidityPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/ITSValidityPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/its/ITSValidityPeriod$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum hours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum microseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum milliseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum minutes:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum seconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum sixtyHours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum years:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;


# instance fields
.field private final unitTag:I


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
    .locals 3

    .line 13
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    sget-object v1, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->microseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->milliseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->seconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->minutes:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->hours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->sixtyHours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->years:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetunitTag(Lorg/bouncycastle/its/ITSValidityPeriod$Unit;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->unitTag:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "microseconds"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->microseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    .line 16
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "milliseconds"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->milliseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    .line 17
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "seconds"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->seconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    .line 18
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "minutes"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->minutes:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    .line 19
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "hours"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->hours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    .line 20
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string/jumbo v1, "sixtyHours"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->sixtyHours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    .line 21
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string/jumbo v1, "years"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->years:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    .line 13
    invoke-static {}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->$values()[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->$VALUES:[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "unitTag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "unitTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->unitTag:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
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

    .line 13
    const-class v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-object v0
.end method

.method public static values()[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
    .locals 1

    .line 13
    sget-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->$VALUES:[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-virtual {v0}, [Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-object v0
.end method
