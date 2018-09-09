.class public Lcom/android/server/OnePlusGpsNotification;
.super Ljava/lang/Object;
.source "OnePlusGpsNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;
    }
.end annotation


# static fields
.field private static final CANCEL_DELAY:J = 0x320L

.field static DEBUG:Z = false

.field private static final MESSAGE_CANCEL:I = 0xdac1

.field private static final MESSAGE_START:I = 0xdac0

.field private static final START_DELAY:J = 0x1f4L

.field static mNotificationIdPackage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mPendingGpsPackage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mPendingPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field TAG:Ljava/lang/String;

.field idCount:I

.field private mAction:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mCurrentGpsLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentGpsPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

.field private volatile mLastIsCancel:Z

.field private volatile mLastNotifyTime:J

.field final mLock:Ljava/lang/Object;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mPendingIntent:Landroid/app/PendingIntent;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mSettingLocationIntent:Landroid/content/Intent;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private manager:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusGpsNotification;->mPendingPackageList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusGpsNotification;->mNotificationIdPackage:Landroid/util/ArrayMap;

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusGpsNotification;->mPendingGpsPackage:Landroid/util/ArrayMap;

    .line 45
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/OnePlusGpsNotification;->mLastNotifyTime:J

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusGpsNotification;->mLastIsCancel:Z

    .line 43
    iput v0, p0, Lcom/android/server/OnePlusGpsNotification;->idCount:I

    .line 44
    const-string v0, "OnePlusGpsNotification"

    iput-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    .line 46
    const-string v0, "android.intent.oneplus.gpsforcestop"

    iput-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mAction:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mSettingLocationIntent:Landroid/content/Intent;

    .line 55
    iput-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mPendingIntent:Landroid/app/PendingIntent;

    .line 71
    new-instance v0, Lcom/android/server/OnePlusGpsNotification$1;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusGpsNotification$1;-><init>(Lcom/android/server/OnePlusGpsNotification;)V

    iput-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    .line 59
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 60
    const-string/jumbo v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 61
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->manager:Landroid/app/ActivityManager;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    new-instance v1, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;-><init>(Lcom/android/server/OnePlusGpsNotification;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mSettingLocationIntent:Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mSettingLocationIntent:Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->mSettingLocationIntent:Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OnePlusGpsNotification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusGpsNotification;

    .line 31
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/OnePlusGpsNotification;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusGpsNotification;

    .line 31
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->manager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/OnePlusGpsNotification;)Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusGpsNotification;

    .line 31
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/OnePlusGpsNotification;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusGpsNotification;
    .param p1, "x1"    # J

    .line 31
    iput-wide p1, p0, Lcom/android/server/OnePlusGpsNotification;->mLastNotifyTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/android/server/OnePlusGpsNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusGpsNotification;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/android/server/OnePlusGpsNotification;->mLastIsCancel:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/OnePlusGpsNotification;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusGpsNotification;

    .line 31
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public notifyPackageNotification()V
    .locals 14

    .line 133
    const-string v0, ""

    .line 134
    .local v0, "mCurrentGpsList":Ljava/lang/String;
    const/4 v1, 0x0

    .line 135
    .local v1, "isSingleGpsRequestPackage":Z
    iget-object v2, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 139
    monitor-exit v2

    return-void

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 142
    const/4 v1, 0x0

    goto :goto_0

    .line 144
    :cond_1
    const/4 v1, 0x1

    .line 146
    :goto_0
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v3, v4

    .line 147
    .local v3, "k":I
    move-object v5, v0

    move v0, v3

    .line 147
    .local v0, "i":I
    .local v5, "mCurrentGpsList":Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    if-ltz v0, :cond_4

    .line 148
    :try_start_1
    iget-object v7, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 149
    .local v7, "packageNameTemp":Ljava/lang/String;
    const/4 v8, 0x0

    .line 150
    .local v8, "context":Landroid/content/Context;
    const-string v9, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .local v9, "applicationName":Ljava/lang/String;
    :try_start_2
    new-instance v10, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 153
    .local v10, "currentUser":Landroid/os/UserHandle;
    iget-object v11, p0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7, v6, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v11

    move-object v8, v11

    .line 154
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 155
    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v11

    .line 160
    .end local v9    # "applicationName":Ljava/lang/String;
    .end local v10    # "currentUser":Landroid/os/UserHandle;
    .local v6, "applicationName":Ljava/lang/String;
    goto :goto_2

    .line 156
    .end local v6    # "applicationName":Ljava/lang/String;
    .restart local v9    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 157
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    iget-object v10, p0, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    const-string v11, "Unable to create context for heavy notification"

    invoke-static {v10, v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const-string v10, ""

    move-object v9, v10

    .line 159
    const/4 v8, 0x0

    .line 161
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v6, v9

    .line 161
    .end local v9    # "applicationName":Ljava/lang/String;
    .local v6, "applicationName":Ljava/lang/String;
    :goto_2
    if-nez v8, :cond_2

    .line 162
    goto :goto_3

    .line 164
    :cond_2
    if-nez v0, :cond_3

    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    goto :goto_3

    .line 167
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040098

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 147
    .end local v6    # "applicationName":Ljava/lang/String;
    .end local v8    # "context":Landroid/content/Context;
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 170
    .end local v0    # "i":I
    .end local v3    # "k":I
    .end local v7    # "packageNameTemp":Ljava/lang/String;
    :catchall_0
    move-exception v3

    move-object v0, v5

    goto/16 :goto_6

    :cond_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    sget-boolean v0, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 174
    :try_start_4
    iget-object v2, p0, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyPackageNotification mCurrentGpsPackageList = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " mCurrentGpsList = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 178
    :cond_5
    :goto_4
    const-string v0, ""

    .line 179
    .local v0, "title":Ljava/lang/String;
    const v2, 0x50c0025

    if-eqz v1, :cond_6

    .line 180
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    const v7, 0x50c0026

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 182
    :cond_6
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_5
    move-object v3, v5

    .line 185
    .local v3, "contextStopPackage":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/OnePlusGpsNotification;->mSettingLocationIntent:Landroid/content/Intent;

    const/high16 v10, 0x8000000

    const/4 v11, 0x0

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v7 .. v12}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/OnePlusGpsNotification;->mPendingIntent:Landroid/app/PendingIntent;

    .line 189
    const-string v7, "OP_GPS_NOTIFICATION"

    .line 190
    .local v7, "OP_GPS_CHANNEL":Ljava/lang/String;
    const-string v8, "GPS"

    .line 191
    .local v8, "channel_title":Ljava/lang/String;
    new-instance v9, Landroid/app/NotificationChannel;

    const-string v10, "OP_GPS_NOTIFICATION"

    const-string v11, "GPS"

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 197
    .local v9, "channelGPS":Landroid/app/NotificationChannel;
    invoke-virtual {v9, v4}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 198
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 199
    iget-object v11, p0, Lcom/android/server/OnePlusGpsNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v11, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 201
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, p0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    const-string v13, "OP_GPS_NOTIFICATION"

    invoke-direct {v11, v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v12, 0x506003e

    .line 202
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 203
    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 204
    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 205
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 206
    invoke-virtual {v11, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v11, p0, Lcom/android/server/OnePlusGpsNotification;->mContext:Landroid/content/Context;

    const v12, 0x1060157

    .line 207
    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 209
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 210
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v11, p0, Lcom/android/server/OnePlusGpsNotification;->mPendingIntent:Landroid/app/PendingIntent;

    .line 211
    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 212
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 215
    .local v4, "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/OnePlusGpsNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v10, v2, v4, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 216
    return-void

    .line 170
    .end local v3    # "contextStopPackage":Ljava/lang/String;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v5    # "mCurrentGpsList":Ljava/lang/String;
    .end local v7    # "OP_GPS_CHANNEL":Ljava/lang/String;
    .end local v8    # "channel_title":Ljava/lang/String;
    .end local v9    # "channelGPS":Landroid/app/NotificationChannel;
    .local v0, "mCurrentGpsList":Ljava/lang/String;
    :catchall_2
    move-exception v3

    :goto_6
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3
.end method

.method public updateGpsRequstPackage(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "mPackageUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-boolean v1, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGpsRequstPackage mLastIsCancel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OnePlusGpsNotification;->mLastIsCancel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 94
    .local v1, "curTime":J
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const v4, 0xdac1

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->removeMessages(I)V

    .line 96
    sget-boolean v3, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateGpsRequstPackage mLastIsCancel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/OnePlusGpsNotification;->mLastIsCancel:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " start = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mCurrentGpsLists ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " same return"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    monitor-exit v0

    return-void

    .line 100
    :cond_2
    iget-wide v5, p0, Lcom/android/server/OnePlusGpsNotification;->mLastNotifyTime:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x1f4

    cmp-long v3, v5, v7

    const-wide/16 v5, 0x320

    const v9, 0xdac0

    if-gez v3, :cond_3

    .line 101
    iget v3, p0, Lcom/android/server/OnePlusGpsNotification;->idCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/OnePlusGpsNotification;->idCount:I

    .line 102
    iget v3, p0, Lcom/android/server/OnePlusGpsNotification;->idCount:I

    const/4 v10, 0x3

    if-gt v3, v10, :cond_5

    .line 103
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    invoke-virtual {v3, v9}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->removeMessages(I)V

    goto :goto_0

    .line 105
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/OnePlusGpsNotification;->mLastIsCancel:Z

    const/4 v10, 0x0

    if-eqz v3, :cond_4

    iget-wide v11, p0, Lcom/android/server/OnePlusGpsNotification;->mLastNotifyTime:J

    sub-long v11, v1, v11

    cmp-long v3, v11, v5

    if-gez v3, :cond_4

    .line 106
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->removeMessages(I)V

    .line 107
    iput v10, p0, Lcom/android/server/OnePlusGpsNotification;->idCount:I

    goto :goto_0

    .line 109
    :cond_4
    iput v10, p0, Lcom/android/server/OnePlusGpsNotification;->idCount:I

    .line 111
    :cond_5
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 112
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_6

    .line 113
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 115
    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 116
    .local v3, "msg":Landroid/os/Message;
    iput v4, v3, Landroid/os/Message;->what:I

    .line 117
    iget-object v4, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 118
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 119
    :cond_7
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->removeMessages(I)V

    .line 120
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 123
    .restart local v3    # "msg":Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->what:I

    .line 124
    iget-object v4, p0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    iget-object v4, p0, Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    invoke-virtual {v4, v3, v7, v8}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 127
    .end local v1    # "curTime":J
    .end local v3    # "msg":Landroid/os/Message;
    :goto_1
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
