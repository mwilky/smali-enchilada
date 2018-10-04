.class Landroid/os/IncidentManager$IncidentdDeathRecipient;
.super Ljava/lang/Object;
.source "IncidentManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncidentdDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/IncidentManager;


# direct methods
.method private constructor <init>(Landroid/os/IncidentManager;)V
    .locals 0

    iput-object p1, p0, Landroid/os/IncidentManager$IncidentdDeathRecipient;->this$0:Landroid/os/IncidentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/IncidentManager;Landroid/os/IncidentManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/IncidentManager$IncidentdDeathRecipient;-><init>(Landroid/os/IncidentManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/IncidentManager$IncidentdDeathRecipient;->this$0:Landroid/os/IncidentManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/IncidentManager;->access$002(Landroid/os/IncidentManager;Landroid/os/IIncidentManager;)Landroid/os/IIncidentManager;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
