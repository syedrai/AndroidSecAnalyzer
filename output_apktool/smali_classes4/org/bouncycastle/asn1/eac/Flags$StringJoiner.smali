.class Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/eac/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringJoiner"
.end annotation


# instance fields
.field First:Z

.field b:Ljava/lang/StringBuffer;

.field mSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "separator"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->First:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->b:Ljava/lang/StringBuffer;

    .line 74
    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->mSeparator:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->First:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->First:Z

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->b:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->mSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
