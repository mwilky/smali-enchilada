.class Lcom/android/server/preload/OneplusAppPreload$3;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/preload/OneplusAppPreload;->initEssential()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method constructor <init>(Lcom/android/server/preload/OneplusAppPreload;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$3;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/android/server/preload/AbnormalMonitor;->getInstance()Lcom/android/server/preload/AbnormalMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$3;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$400(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$3;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload;->access$500(Lcom/android/server/preload/OneplusAppPreload;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload$3;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v3}, Lcom/android/server/preload/OneplusAppPreload;->access$600(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/preload/AbnormalMonitor;->init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method
