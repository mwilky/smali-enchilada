.class final Lcom/android/server/tv/TvInputManagerService$ClientState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientState"
.end annotation


# instance fields
.field private clientToken:Landroid/os/IBinder;

.field private final sessionTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field private final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/tv/TvInputManagerService$ClientState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ClientState;

    if-eqz v2, :cond_0

    :goto_0
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v4, v2, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/tv/TvInputManagerService;->access$5000(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
