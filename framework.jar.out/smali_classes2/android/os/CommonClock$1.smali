.class Landroid/os/CommonClock$1;
.super Ljava/lang/Object;
.source "CommonClock.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CommonClock;


# direct methods
.method constructor <init>(Landroid/os/CommonClock;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/CommonClock;

    .line 305
    iput-object p1, p0, Landroid/os/CommonClock$1;->this$0:Landroid/os/CommonClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 307
    iget-object v0, p0, Landroid/os/CommonClock$1;->this$0:Landroid/os/CommonClock;

    invoke-static {v0}, Landroid/os/CommonClock;->access$000(Landroid/os/CommonClock;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Landroid/os/CommonClock$1;->this$0:Landroid/os/CommonClock;

    invoke-static {v1}, Landroid/os/CommonClock;->access$100(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnServerDiedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Landroid/os/CommonClock$1;->this$0:Landroid/os/CommonClock;

    invoke-static {v1}, Landroid/os/CommonClock;->access$100(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnServerDiedListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/CommonClock$OnServerDiedListener;->onServerDied()V

    .line 310
    :cond_0
    monitor-exit v0

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
