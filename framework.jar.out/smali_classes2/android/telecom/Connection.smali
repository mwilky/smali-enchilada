.class public abstract Landroid/telecom/Connection;
.super Landroid/telecom/Conferenceable;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$VideoProvider;,
        Landroid/telecom/Connection$RttModifyStatus;,
        Landroid/telecom/Connection$RttTextStream;,
        Landroid/telecom/Connection$Listener;
    }
.end annotation


# static fields
.field public static final CAPABILITY_ADD_PARTICIPANT:I = 0x4000000

.field public static final CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x800000

.field public static final CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final CAPABILITY_CAN_PULL_CALL:I = 0x1000000

.field public static final CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x400000

.field public static final CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000

.field public static final CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final CAPABILITY_HOLD:I = 0x1

.field public static final CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final CAPABILITY_MUTE:I = 0x40

.field public static final CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000

.field public static final CAPABILITY_SUPPORTS_RTT_REMOTE:I = 0x8000000

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final CAPABILITY_SUPPORT_DEFLECT:I = 0x2000000

.field public static final CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final CAPABILITY_UNUSED:I = 0x10

.field public static final CAPABILITY_UNUSED_2:I = 0x4000

.field public static final CAPABILITY_UNUSED_3:I = 0x8000

.field public static final CAPABILITY_UNUSED_4:I = 0x10000

.field public static final CAPABILITY_UNUSED_5:I = 0x20000

.field public static final EVENT_CALL_MERGE_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_MERGE_FAILED"

.field public static final EVENT_CALL_PROPERTY_CHANGED:Ljava/lang/String; = "android.telecom.event.EVENT_CALL_PROPERTY_CHANGED"

.field public static final EVENT_CALL_PULL_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_PULL_FAILED"

.field public static final EVENT_CALL_REMOTELY_HELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_HELD"

.field public static final EVENT_CALL_REMOTELY_UNHELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_UNHELD"

.field public static final EVENT_HANDOVER_COMPLETE:Ljava/lang/String; = "android.telecom.event.HANDOVER_COMPLETE"

.field public static final EVENT_HANDOVER_FAILED:Ljava/lang/String; = "android.telecom.event.HANDOVER_FAILED"

.field public static final EVENT_MERGE_COMPLETE:Ljava/lang/String; = "android.telecom.event.MERGE_COMPLETE"

.field public static final EVENT_MERGE_START:Ljava/lang/String; = "android.telecom.event.MERGE_START"

.field public static final EVENT_ON_HOLD_TONE_END:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_END"

.field public static final EVENT_ON_HOLD_TONE_START:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_START"

.field public static final EXTRA_ANSWERING_DROPS_FG_CALL:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

.field public static final EXTRA_ANSWERING_DROPS_FG_CALL_APP_NAME:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL_APP_NAME"

.field public static final EXTRA_CALL_PROPERTY:Ljava/lang/String; = "android.telecom.extra.EXTRA_CALL_PROPERTY"

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final EXTRA_DISABLE_ADD_CALL:Ljava/lang/String; = "android.telecom.extra.DISABLE_ADD_CALL"

.field public static final EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field public static final EXTRA_ORIGINAL_CONNECTION_ID:Ljava/lang/String; = "android.telecom.extra.ORIGINAL_CONNECTION_ID"

.field private static final PII_DEBUG:Z

.field public static final PROPERTY_ASSISTED_DIALING_USED:I = 0x200

.field public static final PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x1

.field public static final PROPERTY_GENERIC_CONFERENCE:I = 0x2

.field public static final PROPERTY_HAS_CDMA_VOICE_PRIVACY:I = 0x20

.field public static final PROPERTY_HIGH_DEF_AUDIO:I = 0x4

.field public static final PROPERTY_IS_DOWNGRADED_CONFERENCE:I = 0x40

.field public static final PROPERTY_IS_EXTERNAL_CALL:I = 0x10

.field public static final PROPERTY_IS_RTT:I = 0x100

.field public static final PROPERTY_RTT_AUDIO_SPEECH:I = 0x1

.field public static final PROPERTY_SELF_MANAGED:I = 0x80

.field public static final PROPERTY_WIFI:I = 0x8

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_DIALING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x6

.field public static final STATE_HOLDING:I = 0x5

.field public static final STATE_INITIALIZING:I = 0x0

.field public static final STATE_NEW:I = 0x1

.field public static final STATE_PULLING_CALL:I = 0x7

.field public static final STATE_RINGING:I = 0x2


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private mAudioModeIsVoip:Z

.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/Conference;

.field private final mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectElapsedTimeMillis:J

.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mConnectionProperties:I

.field private mConnectionService:Landroid/telecom/ConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private final mExtrasLock:Ljava/lang/Object;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private mSupportedAudioRoutes:I

.field private mTelecomCallId:Ljava/lang/String;

.field private final mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    new-instance v0, Landroid/telecom/Connection$1;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    new-instance v0, Landroid/telecom/Connection$2;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    iput v1, p0, Landroid/telecom/Connection;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    const/16 v0, 0xf

    iput v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$300(Landroid/telecom/Connection;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Landroid/telecom/Connection;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public static can(II)Z
    .locals 1

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static capabilitiesToStringInternal(IZ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const-string v1, " CAPABILITY_HOLD"

    goto :goto_0

    :cond_1
    const-string v1, " hld"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    goto :goto_1

    :cond_3
    const-string v1, " sup_hld"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    goto :goto_2

    :cond_5
    const-string v1, " mrg_cnf"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p1, :cond_7

    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    goto :goto_3

    :cond_7
    const-string v1, " swp_cnf"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_9

    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    goto :goto_4

    :cond_9
    const-string v1, " txt"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p1, :cond_b

    const-string v1, " CAPABILITY_MUTE"

    goto :goto_5

    :cond_b
    const-string v1, " mut"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p1, :cond_d

    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    goto :goto_6

    :cond_d
    const-string v1, " mng_cnf"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p1, :cond_f

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    goto :goto_7

    :cond_f
    const-string v1, " VTlrx"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz p1, :cond_11

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    goto :goto_8

    :cond_11
    const-string v1, " VTltx"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const/16 v1, 0x300

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz p1, :cond_13

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    goto :goto_9

    :cond_13
    const-string v1, " VTlbi"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p1, :cond_15

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    goto :goto_a

    :cond_15
    const-string v1, " VTrrx"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz p1, :cond_17

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    goto :goto_b

    :cond_17
    const-string v1, " VTrtx"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    const/16 v1, 0xc00

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz p1, :cond_19

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    goto :goto_c

    :cond_19
    const-string v1, " VTrbi"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    const/high16 v1, 0x800000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz p1, :cond_1b

    const-string v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    goto :goto_d

    :cond_1b
    const-string v1, " !v2a"

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz p1, :cond_1d

    const-string v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    goto :goto_e

    :cond_1d
    const-string v1, " spd_aud"

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const/high16 v1, 0x80000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz p1, :cond_1f

    const-string v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    goto :goto_f

    :cond_1f
    const-string v1, " a2v"

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz p1, :cond_21

    const-string v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    goto :goto_10

    :cond_21
    const-string v1, " paus_VT"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    const/high16 v1, 0x200000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_24

    if-eqz p1, :cond_23

    const-string v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    goto :goto_11

    :cond_23
    const-string v1, " 1p_cnf"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const/high16 v1, 0x400000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_26

    if-eqz p1, :cond_25

    const-string v1, " CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION"

    goto :goto_12

    :cond_25
    const-string v1, " rsp_by_con"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    const/high16 v1, 0x1000000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz p1, :cond_27

    const-string v1, " CAPABILITY_CAN_PULL_CALL"

    goto :goto_13

    :cond_27
    const-string v1, " pull"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const/high16 v1, 0x2000000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2a

    if-eqz p1, :cond_29

    const-string v1, " CAPABILITY_SUPPORT_DEFLECT"

    goto :goto_14

    :cond_29
    const-string v1, " sup_def"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    const/high16 v1, 0x8000000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2c

    if-eqz p1, :cond_2b

    const-string v1, " CAPABILITY_SUPPORTS_RTT_REMOTE"

    goto :goto_15

    :cond_2b
    const-string v1, " sup_rtt"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static capabilitiesToStringShort(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final clearConferenceableList()V
    .locals 4

    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/telecom/Connection;

    iget-object v3, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_1

    :cond_0
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Conference;

    iget-object v3, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static createCanceledConnection()Landroid/telecom/Connection;
    .locals 3

    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public static createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .locals 1

    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private final fireConferenceChanged()V
    .locals 3

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$sendRemoteRttRequest$3(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRemoteRttRequest(Landroid/telecom/Connection;)V

    return-void
.end method

.method public static synthetic lambda$sendRttInitiationFailure$1(Landroid/telecom/Connection;ILandroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Landroid/telecom/Connection$Listener;->onRttInitiationFailure(Landroid/telecom/Connection;I)V

    return-void
.end method

.method public static synthetic lambda$sendRttInitiationSuccess$0(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttInitiationSuccess(Landroid/telecom/Connection;)V

    return-void
.end method

.method public static synthetic lambda$sendRttSessionRemotelyTerminated$2(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V

    return-void
.end method

.method public static propertiesToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static propertiesToStringInternal(IZ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const-string v1, " PROPERTY_SELF_MANAGED"

    goto :goto_0

    :cond_1
    const-string v1, " self_mng"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    const-string v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    goto :goto_1

    :cond_3
    const-string v1, " ecbm"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    const-string v1, " PROPERTY_HIGH_DEF_AUDIO"

    goto :goto_2

    :cond_5
    const-string v1, " HD"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p1, :cond_7

    const-string v1, " PROPERTY_WIFI"

    goto :goto_3

    :cond_7
    const-string v1, " wifi"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_9

    const-string v1, " PROPERTY_GENERIC_CONFERENCE"

    goto :goto_4

    :cond_9
    const-string v1, " gen_conf"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/16 v1, 0x10

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p1, :cond_b

    const-string v1, " PROPERTY_IS_EXTERNAL_CALL"

    goto :goto_5

    :cond_b
    const-string v1, " xtrnl"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p1, :cond_d

    const-string v1, " PROPERTY_HAS_CDMA_VOICE_PRIVACY"

    goto :goto_6

    :cond_d
    const-string v1, " priv"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p1, :cond_f

    const-string v1, " PROPERTY_IS_RTT"

    goto :goto_7

    :cond_f
    const-string v1, " rtt"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static propertiesToStringShort(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setState(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget v0, p0, Landroid/telecom/Connection;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telecom/Connection;->mState:I

    if-eq v0, p1, :cond_0

    const-string v0, "Connection already DISCONNECTED; cannot transition out of this state."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    if-eq v0, p1, :cond_1

    const-string/jumbo v0, "setState: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p0, v0, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroid/telecom/Connection;->mState:I

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 5

    packed-switch p0, :pswitch_data_0

    const-class v0, Landroid/telecom/Connection;

    const-string v1, "Unknown state %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "PULLING_CALL"

    return-object v0

    :pswitch_1
    const-string v0, "DISCONNECTED"

    return-object v0

    :pswitch_2
    const-string v0, "HOLDING"

    return-object v0

    :pswitch_3
    const-string v0, "ACTIVE"

    return-object v0

    :pswitch_4
    const-string v0, "DIALING"

    return-object v0

    :pswitch_5
    const-string v0, "RINGING"

    return-object v0

    :pswitch_6
    const-string v0, "NEW"

    return-object v0

    :pswitch_7
    const-string v0, "INITIALIZING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x40

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addCapability(I)V
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return-void
.end method

.method public final addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public can(I)Z
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Connection;->can(II)Z

    move-result v0

    return v0
.end method

.method public checkImmutable()V
    .locals 0

    return-void
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getAddress()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final getAddressPresentation()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    return v0
.end method

.method public final getAudioModeIsVoip()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final getCallerDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallerDisplayNamePresentation()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final getConference()Landroid/telecom/Conference;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method public final getConferenceables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectElapsedTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    return-wide v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnectionProperties()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    return v0
.end method

.method public final getConnectionService()Landroid/telecom/ConnectionService;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getSupportedAudioRoutes()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    return v0
.end method

.method public final getTelecomCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public final getVideoState()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    return v0
.end method

.method final handleExtrasChanged(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onExtrasChanged(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public handleRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V
    .locals 0

    return-void
.end method

.method public final isRingbackRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    return v0
.end method

.method protected final notifyConferenceMergeFailed()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyConferenceStarted()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1}, Landroid/telecom/Connection$Listener;->onConferenceStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyConferenceSupportedChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceSupportedChanged(Landroid/telecom/Connection;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 0

    return-void
.end method

.method public onAnswer()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    return-void
.end method

.method public onAnswer(I)V
    .locals 0

    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0

    return-void
.end method

.method public onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDeflect(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onDisconnect()V
    .locals 0

    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onHandoverComplete()V
    .locals 0

    return-void
.end method

.method public onHold()V
    .locals 0

    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0

    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 0

    return-void
.end method

.method public onPullExternalCall()V
    .locals 0

    return-void
.end method

.method public onReject()V
    .locals 0

    return-void
.end method

.method public onReject(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSeparate()V
    .locals 0

    return-void
.end method

.method public onShowIncomingCallUi()V
    .locals 0

    return-void
.end method

.method public onSilence()V
    .locals 0

    return-void
.end method

.method public onStartRtt(Landroid/telecom/Connection$RttTextStream;)V
    .locals 0

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    return-void
.end method

.method public onStopRtt()V
    .locals 0

    return-void
.end method

.method public onUnhold()V
    .locals 0

    return-void
.end method

.method public final putExtra(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final putExtra(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final putExtras(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    :cond_1
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p0, v3}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeCapability(I)V
    .locals 2

    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return-void
.end method

.method public final removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final removeExtras(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, p0, v0}, Landroid/telecom/Connection$Listener;->onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final varargs removeExtras([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    return-void
.end method

.method public requestBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final resetCdmaConnectionTime()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onCdmaConnectionTimeReset(Landroid/telecom/Connection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final resetConference()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-eqz v0, :cond_0

    const-string v0, "Conference reset"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    :cond_0
    return-void
.end method

.method public sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final sendRemoteRttRequest()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/-$$Lambda$Connection$lnfFNF0t9fPLEf01JE291g4chSk;

    invoke-direct {v1, p0}, Landroid/telecom/-$$Lambda$Connection$lnfFNF0t9fPLEf01JE291g4chSk;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final sendRttInitiationFailure(I)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/-$$Lambda$Connection$noXZvls4rxmO_SOjgkFMZLLrfSg;

    invoke-direct {v1, p0, p1}, Landroid/telecom/-$$Lambda$Connection$noXZvls4rxmO_SOjgkFMZLLrfSg;-><init>(Landroid/telecom/Connection;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final sendRttInitiationSuccess()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/-$$Lambda$Connection$8xeoCKtoHEwnDqv6gbuSfOMODH0;

    invoke-direct {v1, p0}, Landroid/telecom/-$$Lambda$Connection$8xeoCKtoHEwnDqv6gbuSfOMODH0;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final sendRttSessionRemotelyTerminated()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/-$$Lambda$Connection$SYsjtKchY2AYvOeGveCrqxSfKTU;

    invoke-direct {v1, p0}, Landroid/telecom/-$$Lambda$Connection$SYsjtKchY2AYvOeGveCrqxSfKTU;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setActive()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final setAddress(Landroid/net/Uri;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const-string/jumbo v0, "setAddress %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setAudioModeIsVoip(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setAudioRoute(I)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const-string/jumbo v0, "setAudioState %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const-string/jumbo v0, "setCallerDisplayName %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setConference(Landroid/telecom/Conference;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-nez v0, :cond_1

    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public final setConferenceables(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/telecom/Connection;

    iget-object v3, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_1

    :cond_0
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Conference;

    iget-object v3, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .locals 0

    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setConnectionProperties(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    :goto_0
    return-void
.end method

.method public final setConnectionStartElapsedRealTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    return-void
.end method

.method public final setDialing()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 3

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    const-string v0, "Disconnected with cause %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v0, :cond_4

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    :cond_4
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-void
.end method

.method public final setInitialized()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final setInitializing()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final setNextPostDialChar(C)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setOnHold()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->notifyPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)V

    :cond_0
    return-void
.end method

.method public final setPostDialWait(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setPulling()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final setRingbackRequested(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setRinging()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setSupportedAudioRoutes(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x9

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    iget v2, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "supported audio routes must include either speaker or earpiece"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTelecomCallId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setVideoState(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const-string/jumbo v0, "setVideoState %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    :goto_0
    return-void
.end method

.method protected final updateConferenceParticipants(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method
