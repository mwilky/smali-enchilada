.class final Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalServiceConnection"
.end annotation


# instance fields
.field private final mSciId:Ljava/lang/String;

.field private final mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    return-object v0
.end method

.method private onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    nop

    invoke-static {p2}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$100(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v2

    if-ne p0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->onServiceConnectedLocked(Lcom/android/internal/textservice/ISpellCheckerService;)V

    :cond_0
    return-void
.end method

.method private onServiceDisconnectedInnerLocked(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$100(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v1

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->onServiceDisconnectedLocked()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->access$1000(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V

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
    .locals 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->access$1000(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->onServiceDisconnectedInnerLocked(Landroid/content/ComponentName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
