.class public Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "DndCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/conditional/DndCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 154
    const-string v0, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    nop

    .line 157
    invoke-static {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    const-class v1, Lcom/android/settings/dashboard/conditional/DndCondition;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    .line 158
    .local v0, "condition":Lcom/android/settings/dashboard/conditional/Condition;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->refreshState()V

    .line 162
    .end local v0    # "condition":Lcom/android/settings/dashboard/conditional/Condition;
    :cond_0
    return-void
.end method
