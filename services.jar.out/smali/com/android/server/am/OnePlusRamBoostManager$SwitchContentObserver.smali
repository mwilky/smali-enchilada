.class Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;
.super Landroid/database/ContentObserver;
.source "OnePlusRamBoostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusRamBoostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusRamBoostManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusRamBoostManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    const-string/jumbo v1, "smartboost_enable changed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$100(Lcom/android/server/am/OnePlusRamBoostManager;)Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendEmptyMessage(I)Z

    return-void
.end method
