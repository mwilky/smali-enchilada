.class Lorg/ifaa/android/manager/IFAAManagerFactory$1;
.super Ljava/lang/Object;
.source "IFAAManagerFactory.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/IFAAManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ifaa/android/manager/IFAAManagerFactory;


# direct methods
.method constructor <init>(Lorg/ifaa/android/manager/IFAAManagerFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/ifaa/android/manager/IFAAManagerFactory;

    .line 151
    iput-object p1, p0, Lorg/ifaa/android/manager/IFAAManagerFactory$1;->this$0:Lorg/ifaa/android/manager/IFAAManagerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 154
    iget-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory$1;->this$0:Lorg/ifaa/android/manager/IFAAManagerFactory;

    invoke-static {p2}, Lcom/android/internal/app/IIFAAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IIFAAService;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ifaa/android/manager/IFAAManagerFactory;->access$002(Lorg/ifaa/android/manager/IFAAManagerFactory;Lcom/android/internal/app/IIFAAService;)Lcom/android/internal/app/IIFAAService;

    .line 155
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "IFAAManagerFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFAAService was bound successfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerFactory$1;->this$0:Lorg/ifaa/android/manager/IFAAManagerFactory;

    invoke-static {v2}, Lorg/ifaa/android/manager/IFAAManagerFactory;->access$000(Lorg/ifaa/android/manager/IFAAManagerFactory;)Lcom/android/internal/app/IIFAAService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory$1;->this$0:Lorg/ifaa/android/manager/IFAAManagerFactory;

    invoke-static {v0}, Lorg/ifaa/android/manager/IFAAManagerFactory;->access$100(Lorg/ifaa/android/manager/IFAAManagerFactory;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 162
    iget-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory$1;->this$0:Lorg/ifaa/android/manager/IFAAManagerFactory;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ifaa/android/manager/IFAAManagerFactory;->access$002(Lorg/ifaa/android/manager/IFAAManagerFactory;Lcom/android/internal/app/IIFAAService;)Lcom/android/internal/app/IIFAAService;

    .line 163
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "IFAAManagerFactory"

    const-string v1, "IFAAService was unbound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    return-void
.end method
