.class final Lcom/android/server/timezone/RulesManagerServiceHelperImpl;
.super Ljava/lang/Object;
.source "RulesManagerServiceHelperImpl.java"

# interfaces
.implements Lcom/android/server/timezone/PermissionHelper;
.implements Ljava/util/concurrent/Executor;
.implements Lcom/android/server/timezone/RulesManagerIntentHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private sendOperationIntent(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.timezone.RULES_UPDATE_OPERATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "staged"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public checkDumpPermission(Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method public enforceCallerHasPermission(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendTimeZoneOperationStaged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->sendOperationIntent(Z)V

    return-void
.end method

.method public sendTimeZoneOperationUnstaged()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->sendOperationIntent(Z)V

    return-void
.end method
