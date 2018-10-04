.class public final Landroid/app/NotificationChannel;
.super Ljava/lang/Object;
.source "NotificationChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ATT_BLOCKABLE_SYSTEM:Ljava/lang/String; = "blockable_system"

.field private static final ATT_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field private static final ATT_DELETED:Ljava/lang/String; = "deleted"

.field private static final ATT_DESC:Ljava/lang/String; = "desc"

.field private static final ATT_FG_SERVICE_SHOWN:Ljava/lang/String; = "fgservice"

.field private static final ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATT_GROUP:Ljava/lang/String; = "group"

.field private static final ATT_ID:Ljava/lang/String; = "id"

.field private static final ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final ATT_LIGHTS:Ljava/lang/String; = "lights"

.field private static final ATT_LIGHT_COLOR:Ljava/lang/String; = "light_color"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final ATT_SOUND:Ljava/lang/String; = "sound"

.field private static final ATT_USAGE:Ljava/lang/String; = "usage"

.field private static final ATT_USER_LOCKED:Ljava/lang/String; = "locked"

.field private static final ATT_VIBRATION:Ljava/lang/String; = "vibration"

.field private static final ATT_VIBRATION_ENABLED:Ljava/lang/String; = "vibration_enabled"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "miscellaneous"

.field private static final DEFAULT_DELETED:Z = false

.field private static final DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final DEFAULT_LIGHT_COLOR:I = 0x0

.field private static final DEFAULT_SHOW_BADGE:Z = true

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final DELIMITER:Ljava/lang/String; = ","

.field public static final LOCKABLE_FIELDS:[I

.field private static final MAX_TEXT_LENGTH:I = 0x3e8

.field private static final TAG_CHANNEL:Ljava/lang/String; = "channel"

.field public static final USER_LOCKED_IMPORTANCE:I = 0x4

.field public static final USER_LOCKED_LIGHTS:I = 0x8

.field public static final USER_LOCKED_PRIORITY:I = 0x1

.field public static final USER_LOCKED_SHOW_BADGE:I = 0x80

.field public static final USER_LOCKED_SOUND:I = 0x20

.field public static final USER_LOCKED_VIBRATION:I = 0x10

.field public static final USER_LOCKED_VISIBILITY:I = 0x2


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mBlockableSystem:Z

.field private mBypassDnd:Z

.field private mDeleted:Z

.field private mDesc:Ljava/lang/String;

.field private mFgServiceShown:Z

.field private mGroup:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private mImportance:I

.field private mLightColor:I

.field private mLights:Z

.field private mLockscreenVisibility:I

.field private mName:Ljava/lang/String;

.field private mShowBadge:Z

.field private mSound:Landroid/net/Uri;

.field private mUserLockedFields:I

.field private mVibration:[J

.field private mVibrationEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/NotificationChannel;->LOCKABLE_FIELDS:[I

    new-instance v0, Landroid/app/NotificationChannel$1;

    invoke-direct {v0}, Landroid/app/NotificationChannel$1;-><init>()V

    sput-object v0, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x80
    .end array-data
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e8

    iput v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    iput v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    sget-object v2, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v3, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object v3, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object v3, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    goto :goto_4

    :cond_4
    iput-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    move v2, v0

    :goto_5
    iput-boolean v2, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, p0, Landroid/app/NotificationChannel;->mVibration:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    move v2, v0

    :goto_6
    iput-boolean v2, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    move v2, v0

    :goto_7
    iput-boolean v2, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    move v2, v0

    :goto_8
    iput-boolean v2, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    nop

    :cond_9
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    goto :goto_9

    :cond_a
    iput-object v3, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_b

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/media/AudioAttributes;

    nop

    :cond_b
    iput-object v3, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e8

    iput v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    iput v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    iput p3, p0, Landroid/app/NotificationChannel;->mImportance:I

    return-void
.end method

.method private getSoundForBackup(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v2

    :cond_1
    return-object v1
.end method

.method private getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method private static longArrayToString([J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private populateFromXml(Lorg/xmlpull/v1/XmlPullParser;ZLandroid/content/Context;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    const-string v3, "forRestore is true but got null context"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string v2, "desc"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-string/jumbo v2, "priority"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    const-string/jumbo v0, "visibility"

    const/16 v2, -0x3e8

    invoke-static {p1, v0, v2}, Landroid/app/NotificationChannel;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string/jumbo v0, "sound"

    invoke-static {p1, v0}, Landroid/app/NotificationChannel;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz p2, :cond_3

    invoke-direct {p0, p3, v0}, Landroid/app/NotificationChannel;->restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v0

    :goto_3
    invoke-static {p1}, Landroid/app/NotificationChannel;->safeAudioAttributes(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const-string/jumbo v2, "lights"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const-string/jumbo v2, "light_color"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    const-string/jumbo v2, "vibration"

    invoke-static {p1, v2, v3}, Landroid/app/NotificationChannel;->safeLongArray(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[J)[J

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    const-string/jumbo v2, "vibration_enabled"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const-string/jumbo v2, "show_badge"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const-string v2, "deleted"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    const-string v2, "group"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    const-string/jumbo v2, "locked"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    const-string v2, "fgservice"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    const-string v2, "blockable_system"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    return-void
.end method

.method private restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static safeAudioAttributes(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/AudioAttributes;
    .locals 4

    const-string/jumbo v0, "usage"

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroid/app/NotificationChannel;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "content_type"

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Landroid/app/NotificationChannel;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "flags"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/app/NotificationChannel;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    return-object v3
.end method

.method private static safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/app/NotificationChannel;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static safeLongArray(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[J)[J
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [J

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return p1
.end method

.method private writeXml(Lorg/xmlpull/v1/XmlSerializer;ZLandroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "forBackup is true but got null context"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string v0, "channel"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "id"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "name"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "desc"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/16 v2, -0x3e8

    if-eq v0, v2, :cond_4

    const-string v0, "importance"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "priority"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    if-eq v0, v2, :cond_6

    const-string/jumbo v0, "visibility"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    if-eqz p2, :cond_7

    invoke-direct {p0, p3}, Landroid/app/NotificationChannel;->getSoundForBackup(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_8

    const-string/jumbo v2, "sound"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "usage"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "content_type"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "flags"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "lights"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "light_color"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "vibration_enabled"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "vibration"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v3

    invoke-static {v3}, Landroid/app/NotificationChannel;->longArrayToString([J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "locked"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "fgservice"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "show_badge"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "deleted"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v2, "group"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "blockable_system"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_13
    const-string v2, "channel"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public canBypassDnd()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    return v0
.end method

.method public canShowBadge()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableLights(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mLights:Z

    return-void
.end method

.method public enableVibration(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mBypassDnd:Z

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mLights:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mLights:Z

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    if-eq v3, v4, :cond_7

    return v1

    :cond_7
    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    if-eq v3, v4, :cond_8

    return v1

    :cond_8
    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mShowBadge:Z

    if-eq v3, v4, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-eq v3, v4, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v4

    if-eq v3, v4, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_0

    :cond_c
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    :goto_0
    return v1

    :cond_d
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_1

    :cond_e
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_f

    :goto_1
    return v1

    :cond_f
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_2

    :cond_10
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    :goto_2
    return v1

    :cond_11
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_3

    :cond_12
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_13

    :goto_3
    return v1

    :cond_13
    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibration:[J

    iget-object v4, v2, Landroid/app/NotificationChannel;->mVibration:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-nez v3, :cond_14

    return v1

    :cond_14
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_4

    :cond_15
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    :goto_4
    return v1

    :cond_16
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    :cond_17
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    if-nez v3, :cond_18

    goto :goto_5

    :cond_18
    move v0, v1

    :goto_5
    return v0

    :cond_19
    :goto_6
    return v1
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    return v0
.end method

.method public getLightColor()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    return v0
.end method

.method public getLockscreenVisibility()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSound()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    return-object v0
.end method

.method public getUserLockedFields()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    return v0
.end method

.method public getVibrationPattern()[J
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibration:[J

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x1f

    mul-int v3, v2, v0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    add-int/2addr v3, v4

    mul-int v0, v2, v3

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    add-int/2addr v0, v4

    mul-int v3, v2, v0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v0, v2, v3

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    add-int/2addr v0, v4

    mul-int v3, v2, v0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v0, v2, v3

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->hashCode()I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    add-int/2addr v0, v4

    mul-int v3, v2, v0

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mLights:Z

    add-int/2addr v3, v4

    mul-int v0, v2, v3

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    add-int/2addr v0, v4

    mul-int v3, v2, v0

    iget-object v4, p0, Landroid/app/NotificationChannel;->mVibration:[J

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([J)I

    move-result v4

    add-int/2addr v3, v4

    mul-int v0, v2, v3

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    add-int/2addr v0, v4

    mul-int v3, v2, v0

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    add-int/2addr v3, v4

    mul-int v0, v2, v3

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    add-int/2addr v0, v4

    mul-int v3, v2, v0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    add-int/2addr v3, v4

    mul-int v0, v2, v3

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    add-int/2addr v0, v4

    mul-int v3, v2, v0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->hashCode()I

    move-result v1

    nop

    :cond_5
    add-int/2addr v3, v1

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method public isBlockableSystem()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    return v0
.end method

.method public isDeleted()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    return v0
.end method

.method public isFgServiceShown()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    return v0
.end method

.method public lockFields(I)V
    .locals 1

    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    return-void
.end method

.method public populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;ZLandroid/content/Context;)V

    return-void
.end method

.method public populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;ZLandroid/content/Context;)V

    return-void
.end method

.method public setBlockableSystem(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    return-void
.end method

.method public setBypassDnd(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    return-void
.end method

.method public setDeleted(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public setFgServiceShown(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    return-void
.end method

.method public setImportance(I)V
    .locals 0

    iput p1, p0, Landroid/app/NotificationChannel;->mImportance:I

    return-void
.end method

.method public setLightColor(I)V
    .locals 0

    iput p1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    return-void
.end method

.method public setLockscreenVisibility(I)V
    .locals 0

    iput p1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    return-void
.end method

.method public setShowBadge(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    return-void
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    iput-object p2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method public setVibrationPattern([J)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibration:[J

    return-void
.end method

.method public shouldShowLights()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mLights:Z

    return v0
.end method

.method public shouldVibrate()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "desc"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_0

    const-string v1, "importance"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "priority"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v1, v2, :cond_2

    const-string/jumbo v1, "visibility"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    invoke-static {v2}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "sound"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "usage"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "content_type"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "flags"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string/jumbo v1, "lights"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "light_color"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "vibration_enabled"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "locked"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fgservice"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "vibration"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v2

    invoke-static {v2}, Landroid/app/NotificationChannel;->longArrayToString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "show_badge"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deleted"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "group"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "blockable_system"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationChannel{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDescription="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "hasDescription "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mImportance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBypassDnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLockscreenVisibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSound="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mLights="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLightColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVibration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibration:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mUserLockedFields="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFgServiceShown="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mVibrationEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mShowBadge="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDeleted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mGroup=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBlockableSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlockFields(I)V
    .locals 2

    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_2
    iget v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_3
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibration:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_4
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v2, p0, Landroid/app/NotificationChannel;->mImportance:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v2, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    if-eqz v2, :cond_0

    const-wide v2, 0x10900000007L

    iget-object v4, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    const-wide v2, 0x10800000008L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10500000009L

    iget v4, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibration:[J

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibration:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, v2, v4

    const-wide v7, 0x2030000000aL

    invoke-virtual {p1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide v2, 0x1050000000bL

    iget v4, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10800000012L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000cL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000eL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1090000000fL

    iget-object v4, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    const-wide v3, 0x10b00000010L

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/AudioAttributes;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_2
    const-wide v2, 0x10800000011L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZLandroid/content/Context;)V

    return-void
.end method

.method public writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZLandroid/content/Context;)V

    return-void
.end method
