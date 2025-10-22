.class public Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SubjectPermissions.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final all:I = 0x1

.field public static final explicit:I


# instance fields
.field private final choice:I

.field private final subjectPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "choice"    # I
    .param p2, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "choice",
            "value"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->subjectPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 38
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->choice:I

    .line 39
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "ato"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ato"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->choice:I

    .line 57
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->choice:I

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->choice:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid choice value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Null;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Null;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->subjectPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 64
    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->subjectPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 61
    nop

    .line 68
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static all()Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;
    .locals 3

    .line 48
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    const/4 v1, 0x1

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static explicit(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange;)Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;
    .locals 2
    .param p0, "range"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;
    .locals 2
    .param p0, "src"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 73
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    if-eqz v0, :cond_0

    .line 75
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    return-object v0

    .line 78
    :cond_0
    if-eqz p0, :cond_1

    .line 80
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 82
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->choice:I

    return v0
.end method

.method public getSubjectPermissions()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->subjectPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 97
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->subjectPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
