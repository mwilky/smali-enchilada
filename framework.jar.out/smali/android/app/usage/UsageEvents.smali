.class public final Landroid/app/usage/UsageEvents;
.super Ljava/lang/Object;
.source "UsageEvents.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageEvents$Event;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/UsageEvents;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANT_APP_CLASS_NAME:Ljava/lang/String; = "android.instant_class"

.field public static final INSTANT_APP_PACKAGE_NAME:Ljava/lang/String; = "android.instant_app"


# instance fields
.field private final mEventCount:I

.field private mEventsToWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mParcel:Landroid/os/Parcel;

.field private mStringPool:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/usage/UsageEvents$1;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$1;-><init>()V

    sput-object v0, Landroid/app/usage/UsageEvents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v1, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v3, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lez v3, :cond_0

    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    iput-object v5, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {v0, v2, v5, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iput-object p2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    iput-object p1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    return-void
.end method

.method private findStringIndex(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is not in the string pool"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readEventFromParcel(Landroid/os/Parcel;Landroid/app/usage/UsageEvents$Event;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v3, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_2

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    goto :goto_2

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_2

    :pswitch_5
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    nop

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :pswitch_3
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p2, p3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z
    .locals 3

    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-direct {p0, v0, p1}, Landroid/app/usage/UsageEvents;->readEventFromParcel(Landroid/os/Parcel;Landroid/app/usage/UsageEvents$Event;)V

    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v2, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    :cond_1
    return v1
.end method

.method public hasNextEvent()Z
    .locals 2

    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetToStart()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lez v1, :cond_3

    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    move v3, v2

    :goto_0
    iget v4, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p0, v4, v1, p2}, Landroid/app/usage/UsageEvents;->writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    iget-object v3, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Either mParcel or mEventsToWrite must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBlob([B)V

    return-void
.end method
