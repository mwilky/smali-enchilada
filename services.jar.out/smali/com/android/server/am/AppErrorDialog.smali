.class final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrorDialog$Data;
    }
.end annotation


# static fields
.field static ALREADY_SHOWING:I = 0x0

.field static final APP_INFO:I = 0x8

.field static BACKGROUND_USER:I = 0x0

.field static final CANCEL:I = 0x7

.field static CANT_SHOW:I = 0x0

.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x1

.field static final FORCE_QUIT_AND_REPORT:I = 0x2

.field static final MUTE:I = 0x5

.field static final RESTART:I = 0x3

.field static final TIMEOUT:I = 0x6


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsRestartable:Z

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    const/4 v0, -0x2

    sput v0, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    const/4 v0, -0x3

    sput v0, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/am/AppErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/AppErrorDialog$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppErrorDialog$2;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iput-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    iput-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget-object v1, p3, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p3, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_restart_in_crash_dialog"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/am/AppErrorDialog;->mIsRestartable:Z

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ne v4, v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p3}, Lcom/android/server/am/AppErrorDialog;->showCrashDetail(Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x50c0066

    goto :goto_1

    :cond_2
    iget-boolean v4, p3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v4, :cond_3

    const v4, 0x1040062

    goto :goto_1

    :cond_3
    const v4, 0x1040061

    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    nop

    iget-boolean v4, p3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v4, :cond_5

    const v4, 0x1040067

    goto :goto_2

    :cond_5
    const v4, 0x1040066

    :goto_2
    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppErrorDialog;->setCancelMessage(Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x110

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    :cond_6
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v6, 0x493e0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppErrorDialog;->setResult(I)V

    return-void
.end method

.method private static causedByLibDexHelper(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Cause: null pointer dereference"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "libDexHelper.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static causedByLibjiagu(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "java.lang.UnsatisfiedLinkError: JNI_ERR returned from JNI_OnLoad in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "libjiagu.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "libjiagu_64.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static causedByLibnesec(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "JNI DETECTED ERROR IN APPLICATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "libnesec.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setResult(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private showCrashDetail(Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/AppErrorDialog$Data;->stackTrace:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/AppErrorDialog$Data;->stackTrace:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->causedByLibDexHelper(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/AppErrorDialog$Data;->stackTrace:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->causedByLibjiagu(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/AppErrorDialog$Data;->stackTrace:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->causedByLibnesec(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    nop

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v2
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget-boolean v0, v0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/AppErrorDialog;->setResult(I)V

    :cond_0
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1020195
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/android/server/am/BaseErrorDialog;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x102002b

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x1

    const v5, 0x1090035

    invoke-virtual {v3, v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v3, v0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const v6, 0x1020199

    invoke-virtual {v0, v6}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v7, v0, Lcom/android/server/am/AppErrorDialog;->mIsRestartable:Z

    const/16 v8, 0x8

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v7, 0x1020198

    invoke-virtual {v0, v7}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    move v9, v8

    :goto_2
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const v9, 0x1020196

    invoke-virtual {v0, v9}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x1020195

    invoke-virtual {v0, v10}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v11, Landroid/os/Build;->IS_USER:Z

    if-nez v11, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "development_settings_enabled"

    invoke-static {v11, v12, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "show_mute_in_crash_dialog"

    invoke-static {v11, v12, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    const v11, 0x1020197

    invoke-virtual {v0, v11}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v4, :cond_4

    move v8, v5

    nop

    :cond_4
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v8, 0x1020214

    invoke-virtual {v0, v8}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x505000a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    const v14, 0x505000f

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    const v15, 0x5050004

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    const v8, 0x5050005

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    const v5, 0x5050007

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v16, v1

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    move/from16 v17, v3

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v6, v13, v1, v14, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v7, v13, v1, v14, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v9, v13, v1, v14, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v11, v13, v1, v14, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v10, v13, v1, v14, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v2}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v3

    move-object/from16 v18, v1

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v3, v1}, Landroid/content/res/ThemeController;->getCorrectThemeResource([I)I

    move-result v1

    invoke-virtual {v6, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v7, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v9, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v11, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v10, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    move/from16 v19, v1

    const v1, 0x102046a

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    move/from16 v20, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v13, v4, v14, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object/from16 v21, v1

    const v1, 0x102019d

    invoke-virtual {v4, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x50d0018

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const v4, 0x1020214

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    move-object/from16 v22, v1

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    move-object/from16 v23, v2

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x50d0017
        0x50d0016
    .end array-data
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->onStart()V

    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->onStop()V

    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
