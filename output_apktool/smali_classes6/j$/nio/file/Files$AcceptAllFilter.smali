.class Lj$/nio/file/Files$AcceptAllFilter;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/nio/file/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcceptAllFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/DirectoryStream$Filter<",
        "Lj$/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field static final FILTER:Lj$/nio/file/Files$AcceptAllFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 433
    new-instance v0, Lj$/nio/file/Files$AcceptAllFilter;

    invoke-direct {v0}, Lj$/nio/file/Files$AcceptAllFilter;-><init>()V

    sput-object v0, Lj$/nio/file/Files$AcceptAllFilter;->FILTER:Lj$/nio/file/Files$AcceptAllFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lj$/nio/file/Path;)Z
    .locals 1
    .param p1, "entry"    # Lj$/nio/file/Path;

    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    check-cast p1, Lj$/nio/file/Path;

    invoke-virtual {p0, p1}, Lj$/nio/file/Files$AcceptAllFilter;->accept(Lj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method
