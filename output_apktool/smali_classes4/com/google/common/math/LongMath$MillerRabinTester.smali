.class abstract enum Lcom/google/common/math/LongMath$MillerRabinTester;
.super Ljava/lang/Enum;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "MillerRabinTester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/math/LongMath$MillerRabinTester;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

.field public static final enum LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

.field public static final enum SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;


# direct methods
.method private static synthetic $values()[Lcom/google/common/math/LongMath$MillerRabinTester;
    .locals 3

    .line 1089
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/math/LongMath$MillerRabinTester;

    sget-object v1, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1091
    new-instance v0, Lcom/google/common/math/LongMath$MillerRabinTester$1;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/math/LongMath$MillerRabinTester$1;-><init>(Ljava/lang/String;ILcom/google/common/math/LongMath-IA;)V

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    .line 1109
    new-instance v0, Lcom/google/common/math/LongMath$MillerRabinTester$2;

    const-string v1, "LARGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/math/LongMath$MillerRabinTester$2;-><init>(Ljava/lang/String;ILcom/google/common/math/LongMath-IA;)V

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    .line 1089
    invoke-static {}, Lcom/google/common/math/LongMath$MillerRabinTester;->$values()[Lcom/google/common/math/LongMath$MillerRabinTester;

    move-result-object v0

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->$VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

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

    .line 1089
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/math/LongMath-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/math/LongMath$MillerRabinTester;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private powMod(JJJ)J
    .locals 9
    .param p1, "a"    # J
    .param p3, "p"    # J
    .param p5, "m"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "p",
            "m"
        }
    .end annotation

    .line 1192
    const-wide/16 v0, 0x1

    move-wide v5, p1

    move-wide v3, v0

    .line 1193
    .end local p1    # "a":J
    .local v3, "res":J
    .local v5, "a":J
    :goto_0
    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-eqz v0, :cond_1

    .line 1194
    const-wide/16 v0, 0x1

    and-long/2addr v0, p3

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 1195
    move-object v2, p0

    move-wide v7, p5

    .end local p5    # "m":J
    .local v7, "m":J
    invoke-virtual/range {v2 .. v8}, Lcom/google/common/math/LongMath$MillerRabinTester;->mulMod(JJJ)J

    move-result-wide p1

    move-wide v3, p1

    .end local v3    # "res":J
    .local p1, "res":J
    goto :goto_1

    .line 1194
    .end local v7    # "m":J
    .end local p1    # "res":J
    .restart local v3    # "res":J
    .restart local p5    # "m":J
    :cond_0
    move-object v2, p0

    move-wide v7, p5

    .line 1197
    .end local p5    # "m":J
    .restart local v7    # "m":J
    :goto_1
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/google/common/math/LongMath$MillerRabinTester;->squareMod(JJ)J

    move-result-wide v5

    .line 1193
    const/4 p1, 0x1

    shr-long/2addr p3, p1

    move-wide p5, v7

    goto :goto_0

    .line 1199
    .end local v7    # "m":J
    .restart local p5    # "m":J
    :cond_1
    return-wide v3
.end method

.method static test(JJ)Z
    .locals 3
    .param p0, "base"    # J
    .param p2, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "n"
        }
    .end annotation

    .line 1181
    const-wide v0, 0xb504f333L

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/math/LongMath$MillerRabinTester;->testWitness(JJ)Z

    move-result v0

    return v0
.end method

.method private testWitness(JJ)Z
    .locals 16
    .param p1, "base"    # J
    .param p3, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "n"
        }
    .end annotation

    .line 1204
    const-wide/16 v7, 0x1

    sub-long v0, p3, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v9

    .line 1205
    .local v9, "r":I
    sub-long v0, p3, v7

    shr-long v3, v0, v9

    .line 1206
    .local v3, "d":J
    rem-long v1, p1, p3

    .line 1207
    .end local p1    # "base":J
    .local v1, "base":J
    const-wide/16 v5, 0x0

    const/4 v10, 0x1

    cmp-long v0, v1, v5

    if-nez v0, :cond_0

    .line 1208
    return v10

    .line 1211
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/common/math/LongMath$MillerRabinTester;->powMod(JJJ)J

    move-result-wide v11

    .line 1215
    .local v11, "a":J
    cmp-long v0, v11, v7

    if-nez v0, :cond_1

    .line 1216
    return v10

    .line 1218
    :cond_1
    const/4 v0, 0x0

    .line 1219
    .local v0, "j":I
    :goto_0
    sub-long v13, v5, v7

    cmp-long v15, v11, v13

    if-eqz v15, :cond_3

    .line 1220
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v9, :cond_2

    .line 1221
    const/4 v7, 0x0

    return v7

    .line 1223
    :cond_2
    move-object/from16 v13, p0

    invoke-virtual {v13, v11, v12, v5, v6}, Lcom/google/common/math/LongMath$MillerRabinTester;->squareMod(JJ)J

    move-result-wide v11

    goto :goto_0

    .line 1225
    :cond_3
    move-object/from16 v13, p0

    return v10
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/math/LongMath$MillerRabinTester;
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

    .line 1089
    const-class v0, Lcom/google/common/math/LongMath$MillerRabinTester;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/math/LongMath$MillerRabinTester;

    return-object v0
.end method

.method public static values()[Lcom/google/common/math/LongMath$MillerRabinTester;
    .locals 1

    .line 1089
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->$VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

    invoke-virtual {v0}, [Lcom/google/common/math/LongMath$MillerRabinTester;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/math/LongMath$MillerRabinTester;

    return-object v0
.end method


# virtual methods
.method abstract mulMod(JJJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "m"
        }
    .end annotation
.end method

.method abstract squareMod(JJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "m"
        }
    .end annotation
.end method
