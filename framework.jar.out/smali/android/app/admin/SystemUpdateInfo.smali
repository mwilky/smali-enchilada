.class public final Landroid/app/admin/SystemUpdateInfo;
.super Ljava/lang/Object;
.source "SystemUpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SystemUpdateInfo$SecurityPatchState;
    }
.end annotation


# static fields
.field private static final ATTR_ORIGINAL_BUILD:Ljava/lang/String; = "original-build"

.field private static final ATTR_RECEIVED_TIME:Ljava/lang/String; = "received-time"

.field private static final ATTR_SECURITY_PATCH_STATE:Ljava/lang/String; = "security-patch-state"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/SystemUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECURITY_PATCH_STATE_FALSE:I = 0x1

.field public static final SECURITY_PATCH_STATE_TRUE:I = 0x2

.field public static final SECURITY_PATCH_STATE_UNKNOWN:I


# instance fields
.field private final mReceivedTime:J

.field private final mSecurityPatchState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/SystemUpdateInfo$1;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdateInfo$1;-><init>()V

    sput-object v0, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    iput p3, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/admin/SystemUpdateInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/SystemUpdateInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static of(J)Landroid/app/admin/SystemUpdateInfo;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/admin/SystemUpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/app/admin/SystemUpdateInfo;-><init>(JI)V

    :goto_0
    return-object v0
.end method

.method public static of(JZ)Landroid/app/admin/SystemUpdateInfo;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/app/admin/SystemUpdateInfo;

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, p0, p1, v1}, Landroid/app/admin/SystemUpdateInfo;-><init>(JI)V

    :goto_1
    return-object v0
.end method

.method public static readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdateInfo;
    .locals 5

    const-string/jumbo v0, "original-build"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v2, "received-time"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v4, "security-patch-state"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Landroid/app/admin/SystemUpdateInfo;

    invoke-direct {v4, v2, v3, v1}, Landroid/app/admin/SystemUpdateInfo;-><init>(JI)V

    return-object v4
.end method

.method private static securityPatchStateToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized security patch state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "true"

    return-object v0

    :pswitch_1
    const-string v0, "false"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/admin/SystemUpdateInfo;

    iget-wide v3, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    iget-wide v5, v2, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    iget v4, v2, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getReceivedTime()J
    .locals 2

    iget-wide v0, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    return-wide v0
.end method

.method public getSecurityPatchState()I
    .locals 1

    iget v0, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "SystemUpdateInfo (receivedTime = %d, securityPatchState = %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    invoke-static {v2}, Landroid/app/admin/SystemUpdateInfo;->securityPatchStateToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/admin/SystemUpdateInfo;->getReceivedTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Landroid/app/admin/SystemUpdateInfo;->getSecurityPatchState()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "received-time"

    iget-wide v2, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "security-patch-state"

    iget v2, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "original-build"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
