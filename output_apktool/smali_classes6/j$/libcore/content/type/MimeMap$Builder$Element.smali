.class Lj$/libcore/content/type/MimeMap$Builder$Element;
.super Ljava/lang/Object;
.source "MimeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/libcore/content/type/MimeMap$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Element"
.end annotation


# instance fields
.field final keepExisting:Z

.field final mimeOrExt:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "isMimeSpec"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "spec",
            "isMimeSpec"
        }
    .end annotation

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/libcore/content/type/MimeMap$Builder$Element;->keepExisting:Z

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj$/libcore/content/type/MimeMap;->-$$Nest$smtoLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    goto :goto_0

    .line 325
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/libcore/content/type/MimeMap$Builder$Element;->keepExisting:Z

    .line 326
    invoke-static {p1}, Lj$/libcore/content/type/MimeMap;->-$$Nest$smtoLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    .line 328
    :goto_0
    if-eqz p2, :cond_1

    .line 329
    iget-object v0, p0, Lj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v0}, Lj$/libcore/content/type/MimeMap;->checkValidMimeType(Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_1
    iget-object v0, p0, Lj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v0}, Lj$/libcore/content/type/MimeMap;->checkValidExtension(Ljava/lang/String;)V

    .line 333
    :goto_1
    return-void
.end method

.method public static ofExtensionSpec(Ljava/lang/String;)Lj$/libcore/content/type/MimeMap$Builder$Element;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 336
    new-instance v0, Lj$/libcore/content/type/MimeMap$Builder$Element;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/libcore/content/type/MimeMap$Builder$Element;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static ofMimeSpec(Ljava/lang/String;)Lj$/libcore/content/type/MimeMap$Builder$Element;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 335
    new-instance v0, Lj$/libcore/content/type/MimeMap$Builder$Element;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lj$/libcore/content/type/MimeMap$Builder$Element;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
