.class public Lcom/android/server/media/MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionRecord$MessageHandler;,
        Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;,
        Lcom/android/server/media/MediaSessionRecord$ControllerStub;,
        Lcom/android/server/media/MediaSessionRecord$SessionCb;,
        Lcom/android/server/media/MediaSessionRecord$SessionStub;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final OPTIMISTIC_VOLUME_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionRecord"


# instance fields
.field private mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field private final mControllerCallbackHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVolume:I

.field private mDestroyed:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:J

.field private final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field private mIsActive:Z

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLock:Ljava/lang/Object;

.field private mMaxVolume:I

.field private mMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mOptimisticVolume:I

.field private final mOwnerPid:I

.field private final mOwnerUid:I

.field private final mPackageName:Ljava/lang/String;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mQueue:Landroid/content/pm/ParceledListSlice;

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mService:Lcom/android/server/media/MediaSessionService;

.field private final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field private final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I

.field private mVolumeControlType:I

.field private mVolumeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaSessionRecord"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$2;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$2;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$1;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-direct {v1, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    invoke-direct {v1, p0, p8}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/media/MediaSessionRecord;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaSessionRecord;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/media/MediaSessionRecord;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/pm/ParceledListSlice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/media/MediaSessionRecord;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/media/MediaSessionRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    return-object v0
.end method

.method private getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .locals 3

    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getShortMetadataString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v0}, Landroid/media/MediaMetadata;->size()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .locals 19

    move-object/from16 v1, p0

    const-wide/16 v2, -0x1

    iget-object v4, v1, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    iget-object v5, v1, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    const-string v6, "android.media.metadata.DURATION"

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    const-string v6, "android.media.metadata.DURATION"

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-wide v2, v5

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v18, v0

    goto :goto_3

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_5

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v9

    sub-long v10, v14, v5

    long-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-long v9, v9

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v11

    add-long/2addr v9, v11

    cmp-long v11, v2, v7

    if-ltz v11, :cond_3

    cmp-long v11, v9, v2

    if-lez v11, :cond_3

    move-wide v7, v2

    :goto_1
    move-wide/from16 v16, v7

    goto :goto_2

    :cond_3
    cmp-long v7, v9, v7

    if-gez v7, :cond_4

    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_4
    move-wide/from16 v16, v9

    :goto_2
    new-instance v7, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v7, v0}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    move-object v12, v7

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v8

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v11

    move-wide/from16 v9, v16

    move-object/from16 v18, v0

    move-object v0, v12

    move-wide v12, v14

    invoke-virtual/range {v7 .. v13}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object/from16 v18, v0

    :goto_3
    move-object v0, v4

    :goto_4
    if-nez v0, :cond_6

    move-object/from16 v4, v18

    goto :goto_5

    :cond_6
    move-object v4, v0

    :goto_5
    return-object v4

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "MediaSessionRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", callback package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$300(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private postAdjustLocalVolume(IIILjava/lang/String;IZI)V
    .locals 12

    move-object v9, p0

    iget-object v10, v9, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v11, Lcom/android/server/media/MediaSessionRecord$1;

    move-object v0, v11

    move-object v1, v9

    move/from16 v2, p6

    move v3, p1

    move v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord$1;-><init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;II)V

    invoke-virtual {v10, v11}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v4, "Removing dead callback in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushExtrasUpdate()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushExtrasUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v4, "Removed dead callback in pushExtrasUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushMetadataUpdate()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushMetadataUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "Removing dead callback in pushMetadataUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushPlaybackStateUpdate()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushPlaybackStateUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v4, "Removed dead callback in pushPlaybackStateUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushQueueTitleUpdate()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushQueueTitleUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v4, "Removed dead callback in pushQueueTitleUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushQueueUpdate()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "RuntimeException in pushQueueUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v3

    const-string/jumbo v4, "unexpected exception in pushQueueUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v4, "Removed dead callback in pushQueueUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushSessionDestroyed()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "Removing dead callback in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushVolumeUpdate()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "Unexpected exception in pushVolumeUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v4

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v5, "Removing dead callback in pushVolumeUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V
    .locals 8

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    move v2, v0

    move v3, p5

    move v4, p6

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/media/AudioManagerInternal;->setStreamVolumeForUid(IIILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    :goto_0
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    :cond_3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1, p6, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    sget-boolean v1, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set optimistic volume to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V
    .locals 13

    move-object v8, p0

    move/from16 v9, p6

    and-int/lit8 v10, p7, 0x4

    invoke-virtual {v8}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, 0x10000

    invoke-virtual {v8, v1}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v11, p7

    goto :goto_1

    :cond_1
    :goto_0
    and-int/lit8 v0, p7, -0x5

    move v11, v0

    :goto_1
    iget v0, v8, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, v8, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v12

    move-object v0, v8

    move v1, v12

    move v2, v9

    move v3, v11

    move-object v4, p1

    move/from16 v5, p3

    move/from16 v6, p8

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IZI)V

    goto/16 :goto_3

    :cond_2
    iget v0, v8, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x65

    if-eq v9, v0, :cond_8

    const/16 v0, -0x64

    if-eq v9, v0, :cond_8

    const/16 v0, 0x64

    if-ne v9, v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, v8, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZI)V

    iget v0, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v0, :cond_5

    iget v0, v8, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    goto :goto_2

    :cond_5
    iget v0, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    :goto_2
    add-int v1, v0, v9

    iput v1, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    const/4 v1, 0x0

    iget v2, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iget v3, v8, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iget-object v1, v8, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, v8, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v8, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, v8, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v1, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v0, v1, :cond_6

    invoke-direct {v8}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    :cond_6
    iget-object v1, v8, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1, v11, v8}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    sget-boolean v1, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusted optimistic volume to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return-void

    :cond_8
    :goto_4
    const-string v0, "MediaSessionRecord"

    const-string v1, "Muting remote playback is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->sessionDied(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ownerPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ownerUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "launchIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mediaButtonReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rating type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "controllers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "audioAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "volumeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", controlType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "metadata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getShortMetadataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "queueTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getCallback()Landroid/media/session/ISessionCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->access$100(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v0

    return-object v0
.end method

.method public getControllerBinder()Landroid/media/session/ISessionController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method public getCurrentVolume()I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method public getFlags()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method public getMaxVolume()I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getOptimisticVolume()I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method public getPlaybackType()I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return v0
.end method

.method public getVolumeControl()I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return v0
.end method

.method public hasFlag(I)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaybackActive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    :goto_0
    invoke-static {v0}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v1

    return v1
.end method

.method public isSystemPriority()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransportControlEnabled()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
