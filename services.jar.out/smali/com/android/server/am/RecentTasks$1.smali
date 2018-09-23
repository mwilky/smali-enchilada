.class Lcom/android/server/am/RecentTasks$1;
.super Landroid/app/UserSwitchObserver;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/RecentTasks;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/RecentTasks;


# direct methods
.method constructor <init>(Lcom/android/server/am/RecentTasks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/RecentTasks$1;->this$0:Lcom/android/server/am/RecentTasks;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/RecentTasks$1;->this$0:Lcom/android/server/am/RecentTasks;

    invoke-static {v0}, Lcom/android/server/am/RecentTasks;->access$000(Lcom/android/server/am/RecentTasks;)V

    return-void
.end method
