.class Lcom/android/server/am/ActivityManagerService$25;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 17084
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$25;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitReached(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 17087
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sent too many Binders to uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17088
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17087
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 17089
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 17090
    const-string v0, "ActivityManager"

    const-string v1, "Skipping kill (uid is SYSTEM)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 17092
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$25;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string v3, "Too many Binders sent to SYSTEM"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    .line 17095
    :goto_0
    return-void
.end method
