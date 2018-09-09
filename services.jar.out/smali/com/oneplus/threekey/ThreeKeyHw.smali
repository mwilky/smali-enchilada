.class public Lcom/oneplus/threekey/ThreeKeyHw;
.super Ljava/lang/Object;
.source "ThreeKeyHw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;,
        Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;,
        Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;
    }
.end annotation


# static fields
.field private static final BIT_DO_NOT_DISTURB:I = 0x2

.field private static final BIT_MUTE:I = 0x1

.field private static final BIT_NORMAL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ThreeKeyHw"

.field private static ThreeKeyModeState:I = 0x0

.field private static final UDEV_NAME_THREEKEY:Ljava/lang/String; = "tri-state-key"

.field private static final UDEV_NAME_THREEKEY_SOC:Ljava/lang/String; = "soc:tri_state_key"

.field private static final debug:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOemUEventObserver:Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;

.field private mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/threekey/ThreeKeyHw;->ThreeKeyModeState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-direct {v0, p0}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;-><init>(Lcom/oneplus/threekey/ThreeKeyHw;)V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    .line 31
    new-instance v0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;-><init>(Lcom/oneplus/threekey/ThreeKeyHw;)V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mOemUEventObserver:Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;

    .line 35
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyHw;

    .line 19
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/threekey/ThreeKeyHw;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyHw;
    .param p1, "x1"    # I

    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/threekey/ThreeKeyHw;->sendBroadcastForZenModeChanged(I)V

    return-void
.end method

.method private sendBroadcastForZenModeChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "intentZenMode":Landroid/content/Intent;
    const-string/jumbo v1, "switch_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 245
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->checkSwitchExists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    const/4 v0, -0x1

    .line 45
    .local v0, "threeKeyState":I
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyHw;->isSupportSocThreeKey()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x400

    if-eqz v1, :cond_4

    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "j":I
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 49
    const/4 v5, -0x1

    .line 50
    .local v5, "curState":I
    :try_start_0
    new-array v6, v3, [C

    .line 51
    .local v6, "buffer":[C
    new-instance v7, Ljava/io/FileReader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v9}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "cable."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 52
    .local v7, "file":Ljava/io/FileReader;
    invoke-virtual {v7, v6, v2, v3}, Ljava/io/FileReader;->read([CII)I

    move-result v8

    .line 53
    .local v8, "len":I
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 54
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6, v2, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v5, v9

    .line 55
    if-nez v5, :cond_0

    .line 56
    add-int/lit8 v0, v1, 0x1

    .line 57
    goto :goto_1

    .line 48
    .end local v5    # "curState":I
    .end local v6    # "buffer":[C
    .end local v7    # "file":Ljava/io/FileReader;
    .end local v8    # "len":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "j":I
    :catch_0
    move-exception v1

    goto :goto_3

    .line 67
    :catch_1
    move-exception v1

    goto :goto_4

    .line 60
    .restart local v1    # "j":I
    :cond_1
    :goto_1
    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    .line 61
    const/4 v0, 0x3

    goto :goto_2

    .line 62
    :cond_2
    if-ne v4, v0, :cond_3

    .line 63
    const/4 v0, 0x1

    .line 66
    :cond_3
    :goto_2
    const-string v2, "ThreeKeyHw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v4}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/state\nstate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "j":I
    goto :goto_5

    .line 70
    :goto_3
    nop

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ThreeKeyHw"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 67
    :goto_4
    nop

    .line 68
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "ThreeKeyHw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v4}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found while attempting to determine initial switch state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_5
    goto :goto_6

    .line 75
    :cond_4
    :try_start_1
    new-array v1, v3, [C

    .line 76
    .local v1, "buffer":[C
    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v5}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 77
    .local v4, "file":Ljava/io/FileReader;
    invoke-virtual {v4, v1, v2, v3}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 78
    .local v3, "len":I
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 79
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v2

    .line 86
    .end local v1    # "buffer":[C
    .end local v3    # "len":I
    .end local v4    # "file":Ljava/io/FileReader;
    nop

    .line 88
    :goto_6
    return v0

    .line 80
    :catch_2
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v3}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "not found while attempting to get switch state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ThreeKeyHw"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v2, Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;

    invoke-direct {v2}, Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;-><init>()V

    throw v2

    .line 40
    .end local v0    # "threeKeyState":I
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v0, Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;

    invoke-direct {v0}, Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;-><init>()V

    throw v0
.end method

.method public init()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mOemUEventObserver:Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->startMonitor()V

    .line 98
    return-void
.end method

.method public isSupportSocThreeKey()Z
    .locals 6

    .line 92
    const-string v0, "ThreeKeyHw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupportSocThreeKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x29

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-array v0, v2, [I

    aput v4, v0, v5

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method
