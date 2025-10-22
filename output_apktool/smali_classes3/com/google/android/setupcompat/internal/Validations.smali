.class public final Lcom/google/android/setupcompat/internal/Validations;
.super Ljava/lang/Object;
.source "Validations.java"


# static fields
.field private static final LOG:Lcom/google/android/setupcompat/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-string v1, "Validations"

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/setupcompat/internal/Validations;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should not be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static assertLengthInRange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "name",
            "minLength",
            "maxLength"
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 32
    sget-object v2, Lcom/google/android/setupcompat/internal/Validations;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "Input of %s cannot be null"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 33
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p2, :cond_2

    .line 37
    :cond_1
    sget-object v2, Lcom/google/android/setupcompat/internal/Validations;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v0

    aput-object v3, v5, v1

    const/4 v0, 0x2

    aput-object v4, v5, v0

    .line 38
    const-string v0, "Length of \"%s\" should be in the range [%s-%s]"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 41
    :cond_2
    return-void
.end method
