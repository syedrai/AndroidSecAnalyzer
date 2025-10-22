.class Lj$/nio/file/FileTreeWalker$Event;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/nio/file/FileTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# instance fields
.field private final attrs:Lj$/nio/file/attribute/BasicFileAttributes;

.field private final file:Lj$/nio/file/Path;

.field private final ioe:Ljava/io/IOException;

.field private final type:Lj$/nio/file/FileTreeWalker$EventType;


# direct methods
.method constructor <init>(Lj$/nio/file/FileTreeWalker$EventType;Lj$/nio/file/Path;Lj$/nio/file/attribute/BasicFileAttributes;)V
    .locals 1
    .param p1, "type"    # Lj$/nio/file/FileTreeWalker$EventType;
    .param p2, "file"    # Lj$/nio/file/Path;
    .param p3, "attrs"    # Lj$/nio/file/attribute/BasicFileAttributes;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lj$/nio/file/FileTreeWalker$Event;-><init>(Lj$/nio/file/FileTreeWalker$EventType;Lj$/nio/file/Path;Lj$/nio/file/attribute/BasicFileAttributes;Ljava/io/IOException;)V

    .line 142
    return-void
.end method

.method private constructor <init>(Lj$/nio/file/FileTreeWalker$EventType;Lj$/nio/file/Path;Lj$/nio/file/attribute/BasicFileAttributes;Ljava/io/IOException;)V
    .locals 0
    .param p1, "type"    # Lj$/nio/file/FileTreeWalker$EventType;
    .param p2, "file"    # Lj$/nio/file/Path;
    .param p3, "attrs"    # Lj$/nio/file/attribute/BasicFileAttributes;
    .param p4, "ioe"    # Ljava/io/IOException;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lj$/nio/file/FileTreeWalker$Event;->type:Lj$/nio/file/FileTreeWalker$EventType;

    .line 135
    iput-object p2, p0, Lj$/nio/file/FileTreeWalker$Event;->file:Lj$/nio/file/Path;

    .line 136
    iput-object p3, p0, Lj$/nio/file/FileTreeWalker$Event;->attrs:Lj$/nio/file/attribute/BasicFileAttributes;

    .line 137
    iput-object p4, p0, Lj$/nio/file/FileTreeWalker$Event;->ioe:Ljava/io/IOException;

    .line 138
    return-void
.end method

.method constructor <init>(Lj$/nio/file/FileTreeWalker$EventType;Lj$/nio/file/Path;Ljava/io/IOException;)V
    .locals 1
    .param p1, "type"    # Lj$/nio/file/FileTreeWalker$EventType;
    .param p2, "file"    # Lj$/nio/file/Path;
    .param p3, "ioe"    # Ljava/io/IOException;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lj$/nio/file/FileTreeWalker$Event;-><init>(Lj$/nio/file/FileTreeWalker$EventType;Lj$/nio/file/Path;Lj$/nio/file/attribute/BasicFileAttributes;Ljava/io/IOException;)V

    .line 146
    return-void
.end method


# virtual methods
.method attributes()Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 1

    .line 157
    iget-object v0, p0, Lj$/nio/file/FileTreeWalker$Event;->attrs:Lj$/nio/file/attribute/BasicFileAttributes;

    return-object v0
.end method

.method file()Lj$/nio/file/Path;
    .locals 1

    .line 153
    iget-object v0, p0, Lj$/nio/file/FileTreeWalker$Event;->file:Lj$/nio/file/Path;

    return-object v0
.end method

.method ioeException()Ljava/io/IOException;
    .locals 1

    .line 161
    iget-object v0, p0, Lj$/nio/file/FileTreeWalker$Event;->ioe:Ljava/io/IOException;

    return-object v0
.end method

.method type()Lj$/nio/file/FileTreeWalker$EventType;
    .locals 1

    .line 149
    iget-object v0, p0, Lj$/nio/file/FileTreeWalker$Event;->type:Lj$/nio/file/FileTreeWalker$EventType;

    return-object v0
.end method
