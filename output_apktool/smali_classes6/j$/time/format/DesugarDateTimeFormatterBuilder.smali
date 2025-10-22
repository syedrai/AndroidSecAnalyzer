.class public final Lj$/time/format/DesugarDateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DesugarDateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendGenericZoneText(Lj$/time/format/DateTimeFormatterBuilder;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 2
    .param p0, "receiver"    # Lj$/time/format/DateTimeFormatterBuilder;
    .param p1, "textStyle"    # Lj$/time/format/TextStyle;

    .line 161
    new-instance v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Lj$/time/format/TextStyle;Ljava/util/Set;)V

    invoke-static {p0, v0}, Lj$/time/format/DesugarDateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder;Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)V

    .line 163
    return-object p0
.end method

.method public static appendGenericZoneText(Lj$/time/format/DateTimeFormatterBuilder;Lj$/time/format/TextStyle;Ljava/util/Set;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1
    .param p0, "receiver"    # Lj$/time/format/DateTimeFormatterBuilder;
    .param p1, "textStyle"    # Lj$/time/format/TextStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/format/DateTimeFormatterBuilder;",
            "Lj$/time/format/TextStyle;",
            "Ljava/util/Set<",
            "Lj$/time/ZoneId;",
            ">;)",
            "Lj$/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 189
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    new-instance v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;

    invoke-direct {v0, p1, p2}, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Lj$/time/format/TextStyle;Ljava/util/Set;)V

    invoke-static {p0, v0}, Lj$/time/format/DesugarDateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder;Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)V

    .line 190
    return-object p0
.end method

.method private static appendInternal(Lj$/time/format/DateTimeFormatterBuilder;Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)V
    .locals 6
    .param p0, "receiver"    # Lj$/time/format/DateTimeFormatterBuilder;
    .param p1, "pp"    # Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 198
    :try_start_0
    const-class v0, Lj$/time/format/DateTimeFormatterBuilder;

    const-string v1, "appendInternal"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 201
    .local v0, "appendInternal":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 202
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    nop

    .line 208
    .end local v0    # "appendInternal":Ljava/lang/reflect/Method;
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unhandled exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
