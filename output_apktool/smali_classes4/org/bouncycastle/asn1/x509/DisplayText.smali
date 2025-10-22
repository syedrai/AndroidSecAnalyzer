.class public Lorg/bouncycastle/asn1/x509/DisplayText;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "DisplayText.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final CONTENT_TYPE_BMPSTRING:I = 0x1

.field public static final CONTENT_TYPE_IA5STRING:I = 0x0

.field public static final CONTENT_TYPE_UTF8STRING:I = 0x2

.field public static final CONTENT_TYPE_VISIBLESTRING:I = 0x3

.field public static final DISPLAY_TEXT_MAXIMUM_SIZE:I = 0xc8


# instance fields
.field contentType:I

.field contents:Lorg/bouncycastle/asn1/ASN1String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "text"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 76
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 83
    :cond_0
    iput p1, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contentType:I

    .line 84
    packed-switch p1, :pswitch_data_0

    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/ASN1String;

    goto :goto_0

    .line 93
    :pswitch_0
    new-instance v0, Lorg/bouncycastle/asn1/DERVisibleString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERVisibleString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/ASN1String;

    .line 94
    goto :goto_0

    .line 90
    :pswitch_1
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/ASN1String;

    .line 91
    goto :goto_0

    .line 96
    :pswitch_2
    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/ASN1String;

    .line 97
    goto :goto_0

    .line 87
    :pswitch_3
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/ASN1String;

    .line 88
    nop

    .line 102
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 118
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contentType:I

    .line 119
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/ASN1String;

    .line 120
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1String;)V
    .locals 2
    .param p1, "de"    # Lorg/bouncycastle/asn1/ASN1String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "de"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/ASN1String;

    .line 132
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contentType:I

    goto :goto_0

    .line 136
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-eqz v0, :cond_1

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contentType:I

    goto :goto_0

    .line 140
    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_2

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contentType:I

    goto :goto_0

    .line 144
    :cond_2
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1VisibleString;

    if-eqz v0, :cond_3

    .line 146
    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contentType:I

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown STRING type in DisplayText"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DisplayText;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 156
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lorg/bouncycastle/asn1/x509/DisplayText;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1String;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/DisplayText;-><init>(Lorg/bouncycastle/asn1/ASN1String;)V

    return-object v0

    .line 160
    :cond_0
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/DisplayText;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/DisplayText;
    .locals 2
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "explicit"
        }
    .end annotation

    .line 172
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DisplayText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DisplayText;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choice item must be explicitly tagged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/ASN1String;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method
