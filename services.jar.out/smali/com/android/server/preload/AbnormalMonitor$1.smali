.class Lcom/android/server/preload/AbnormalMonitor$1;
.super Ljava/lang/Object;
.source "AbnormalMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/preload/AbnormalMonitor;->appCrash(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/preload/AbnormalMonitor;

.field final synthetic val$crashPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/preload/AbnormalMonitor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/AbnormalMonitor$1;->this$0:Lcom/android/server/preload/AbnormalMonitor;

    iput-object p2, p0, Lcom/android/server/preload/AbnormalMonitor$1;->val$crashPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/preload/AbnormalMonitor$1;->this$0:Lcom/android/server/preload/AbnormalMonitor;

    invoke-static {v0}, Lcom/android/server/preload/AbnormalMonitor;->access$000(Lcom/android/server/preload/AbnormalMonitor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/preload/AbnormalMonitor$1;->val$crashPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->isStartFromPreload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/preload/AbnormalMonitor$1;->this$0:Lcom/android/server/preload/AbnormalMonitor;

    iget-object v1, p0, Lcom/android/server/preload/AbnormalMonitor$1;->val$crashPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/preload/AbnormalMonitor;->addBlackApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
