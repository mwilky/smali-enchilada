.class public Lcom/oneplus/notification/OPNotificationController;
.super Ljava/lang/Object;
.source "OPNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/notification/OPNotificationController$SettingsObserver;
    }
.end annotation


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mEnabledBlock:Z

.field private mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private mGameMode3rdCallUid:Ljava/lang/String;

.field private mGameModeNotifType:I

.field protected final mOimcObserver:Landroid/database/ContentObserver;

.field private mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    const-string v1, "-1"

    iput-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEnabledBlock:Z

    new-instance v1, Lcom/oneplus/notification/OPNotificationController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/oneplus/notification/OPNotificationController$1;-><init>(Lcom/oneplus/notification/OPNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mOimcObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;-><init>(Lcom/oneplus/notification/OPNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    invoke-virtual {v1}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->observe()V

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_oimc_func_disable_headsup"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController;->mOimcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mOimcObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/notification/OPNotificationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/notification/OPNotificationController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    return v0
.end method

.method static synthetic access$102(Lcom/oneplus/notification/OPNotificationController;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/notification/OPNotificationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/notification/OPNotificationController;)Lcom/android/systemui/statusbar/NotificationEntryManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/notification/OPNotificationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/notification/OPNotificationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEnabledBlock:Z

    return v0
.end method

.method static synthetic access$502(Lcom/oneplus/notification/OPNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/notification/OPNotificationController;->mEnabledBlock:Z

    return p1
.end method

.method private blockByDnd()Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dnd_mode_enabled"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "do_not_disturb_block_notification"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_0

    return v1

    :cond_0
    return v3
.end method

.method private blockByReadMode()Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "reading_mode_block_notification"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_0

    return v1

    :cond_0
    return v3
.end method

.method private isPriorityPkg(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.dialer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.incallui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.deskclock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blockByGameMode(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/notification/OPNotificationController;->isPriorityPkg(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "call"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "OPNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game mode block enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/notification/OPNotificationController;->mEnabledBlock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->mEnabledBlock:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const-string v4, "oneplus.shouldPeekInGameMode"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v3

    return v2

    :cond_3
    return v3

    :cond_4
    return v2
.end method

.method public keepLightBlink(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.dialer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.android.server.telecom"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public setNotificationEntry(Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    return-void
.end method

.method public shouldPeek(Landroid/service/notification/StatusBarNotification;)I
    .locals 4

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "-1"

    iget-object v2, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/notification/OPNotificationController;->isPriorityPkg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No peeking: game mode 3rd party is calling, uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/notification/OPNotificationController;->blockByReadMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OPNotificationController"

    const-string v2, "No peeking: block by reading mode"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/notification/OPNotificationController;->blockByDnd()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "OPNotificationController"

    const-string v2, "No peeking: block by dnd"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/oneplus/notification/OPNotificationController;->blockByGameMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "OPNotificationController"

    const-string v1, "No peeking: block by game mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method public showSimpleHeadsUp()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEnabledBlock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public snoozeHeadsUp(Landroid/app/Notification;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Notification;->getSwipeUpHeadsUpIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OPNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snooze "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " send pending intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateNotificationRule()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
