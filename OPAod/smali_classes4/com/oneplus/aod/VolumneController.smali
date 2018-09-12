.class public Lcom/oneplus/aod/VolumneController;
.super Ljava/lang/Object;
.source "VolumneController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/VolumneController$SettingObserver;
    }
.end annotation


# static fields
.field public static MODE_NONE:I = 0x0

.field public static MODE_RING:I = 0x0

.field public static MODE_SILENCE:I = 0x0

.field public static MODE_VIBRATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VolumneController"


# instance fields
.field private mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

.field private mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDNDEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/widget/ImageView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mObserver:Lcom/oneplus/aod/VolumneController$SettingObserver;

.field private mTextView:Landroid/widget/TextView;

.field private final mWorker:Landroid/os/Handler;

.field private final mWorkerThread:Landroid/os/HandlerThread;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/aod/VolumneController;->MODE_NONE:I

    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/oneplus/aod/VolumneController;->MODE_SILENCE:I

    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/oneplus/aod/VolumneController;->MODE_VIBRATE:I

    .line 46
    const/4 v0, 0x3

    sput v0, Lcom/oneplus/aod/VolumneController;->MODE_RING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aodUpdateMonitor"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mHandler:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/VolumneController;->mDNDEnabled:Z

    .line 70
    new-instance v0, Lcom/oneplus/aod/VolumneController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/VolumneController$1;-><init>(Lcom/oneplus/aod/VolumneController;)V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/oneplus/aod/VolumneController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/VolumneController$2;-><init>(Lcom/oneplus/aod/VolumneController;)V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 53
    const-string v0, "VolumneController"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/oneplus/aod/VolumneController;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 56
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/oneplus/aod/VolumneController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mWorkerThread:Landroid/os/HandlerThread;

    .line 58
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mWorker:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/oneplus/aod/VolumneController$SettingObserver;

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController;->mWorker:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/aod/VolumneController$SettingObserver;-><init>(Lcom/oneplus/aod/VolumneController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mObserver:Lcom/oneplus/aod/VolumneController$SettingObserver;

    .line 61
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mObserver:Lcom/oneplus/aod/VolumneController$SettingObserver;

    invoke-virtual {v0}, Lcom/oneplus/aod/VolumneController$SettingObserver;->init()V

    .line 62
    invoke-direct {p0}, Lcom/oneplus/aod/VolumneController;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mIcon:Landroid/widget/ImageView;

    .line 63
    invoke-direct {p0}, Lcom/oneplus/aod/VolumneController;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mTextView:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/aod/VolumneController;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/VolumneController;->mZenMode:I

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 66
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/oneplus/aod/VolumneController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/VolumneController;

    .line 30
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/aod/VolumneController;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/VolumneController;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .line 30
    iput-object p1, p0, Lcom/oneplus/aod/VolumneController;->mIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/VolumneController;

    .line 30
    invoke-direct {p0}, Lcom/oneplus/aod/VolumneController;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/VolumneController;

    .line 30
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/aod/VolumneController;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/VolumneController;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 30
    iput-object p1, p0, Lcom/oneplus/aod/VolumneController;->mTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/VolumneController;

    .line 30
    invoke-direct {p0}, Lcom/oneplus/aod/VolumneController;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/aod/VolumneController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/VolumneController;
    .param p1, "x1"    # I

    .line 30
    iput p1, p0, Lcom/oneplus/aod/VolumneController;->mZenMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/aod/VolumneController;)Lcom/oneplus/aod/AodUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/VolumneController;

    .line 30
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/VolumneController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/VolumneController;

    .line 30
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/VolumneController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/VolumneController;
    .param p1, "x1"    # I

    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/aod/VolumneController;->updateDND(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/aod/VolumneController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/VolumneController;

    .line 30
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/aod/VolumneController;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/VolumneController;

    .line 30
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method private getIconView()Landroid/widget/ImageView;
    .locals 6

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "iconView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 179
    .local v1, "mainView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 180
    const v2, 0x7f090132

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 182
    .local v2, "temp":Landroid/view/View;
    :try_start_0
    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 186
    goto :goto_0

    .line 183
    :catch_0
    move-exception v3

    .line 184
    .local v3, "e":Ljava/lang/ClassCastException;
    const-string v4, "VolumneController"

    const-string v5, "find ImageView fail resId=2131296562"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v2}, Landroid/view/View;->debug()V

    .line 188
    .end local v2    # "temp":Landroid/view/View;
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private getTextView()Landroid/widget/TextView;
    .locals 6

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 194
    .local v1, "mainView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 195
    const v2, 0x7f090133

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 197
    .local v2, "temp":Landroid/view/View;
    :try_start_0
    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 201
    goto :goto_0

    .line 198
    :catch_0
    move-exception v3

    .line 199
    .local v3, "e":Ljava/lang/ClassCastException;
    const-string v4, "VolumneController"

    const-string v5, "find TextView fail resId=2131296563"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v2}, Landroid/view/View;->debug()V

    .line 203
    .end local v2    # "temp":Landroid/view/View;
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private updateDND(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 161
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/aod/VolumneController;->mDNDEnabled:Z

    .line 163
    const-string v0, "VolumneController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDND: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/VolumneController;->mDNDEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method


# virtual methods
.method public getCurrentMode()I
    .locals 3

    .line 150
    sget v0, Lcom/oneplus/aod/VolumneController;->MODE_NONE:I

    .line 152
    .local v0, "mode":I
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "three_Key_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 156
    :goto_0
    return v0
.end method

.method public isDNDEnabled()Z
    .locals 5

    .line 167
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x29

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    const-string v1, "VolumneController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDNDEnabled: zenMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/aod/VolumneController;->mZenMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget v1, p0, Lcom/oneplus/aod/VolumneController;->mZenMode:I

    sget v3, Lcom/oneplus/aod/VolumneController;->MODE_VIBRATE:I

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    .line 171
    :cond_1
    const-string v0, "VolumneController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDNDEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/VolumneController;->mDNDEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-boolean v0, p0, Lcom/oneplus/aod/VolumneController;->mDNDEnabled:Z

    return v0
.end method
