.class Lcom/android/server/am/PersistentConnection$1;
.super Ljava/lang/Object;
.source "PersistentConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PersistentConnection;


# direct methods
.method constructor <init>(Lcom/android/server/am/PersistentConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$100(Lcom/android/server/am/PersistentConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but not bound, ignore."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v1}, Lcom/android/server/am/PersistentConnection;->scheduleRebindLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$100(Lcom/android/server/am/PersistentConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but not bound, ignore."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/am/PersistentConnection;->access$502(Lcom/android/server/am/PersistentConnection;Z)Z

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v2, p2}, Lcom/android/server/am/PersistentConnection;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/PersistentConnection;->access$602(Lcom/android/server/am/PersistentConnection;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$700(Lcom/android/server/am/PersistentConnection;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
